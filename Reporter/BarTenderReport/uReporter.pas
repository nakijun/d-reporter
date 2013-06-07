unit uReporter;

interface

uses
  uIReporter, uIIntfList, superobject, SysUtils, uCRCTools,
  uFileTools, ufrmBarTenderDesign, uMsgTools;

type
  TReporter = class(TInterfacedObject, IReporter)
  private
    FReportForm: TfrmBarTenderDesign;
    FReportFile:String;
    FReportName:String;
    FDataIntf: IInterface;
  public
    destructor Destroy; override;
    function Design: Boolean; stdcall;

    procedure Preview; stdcall;
    procedure Print; stdcall;

    //设置设计好的报表文件模板
    procedure setDesignFile(pvFile: PAnsiChar); stdcall;

    //数据对象的接口列表
    procedure setDataList(pvIntf: IInterface); stdcall;

    procedure setName(pvName:PAnsiChar); stdcall;

    //清理数据
    procedure Clear; stdcall;    
  end;

function createRepoter: IReporter; stdcall;

implementation



var
  __count:Integer;
  
function InterlockedIncrement(var I: Integer): Integer;
asm
      MOV   EDX,1
      XCHG  EAX,EDX
 LOCK XADD  [EDX],EAX
      INC   EAX
end;

function InterlockedDecrement(var I: Integer): Integer;
asm
      MOV   EDX,-1
      XCHG  EAX,EDX
      LOCK XADD  [EDX],EAX
      DEC   EAX
end;

function createRepoter: IReporter; stdcall;
begin
  Result := TReporter.Create;
  InterlockedIncrement(__count);
end;

destructor TReporter.Destroy;
begin
  FDataIntf := nil;
  InterlockedDecrement(__count);
  inherited Destroy;
end;

procedure TReporter.Clear;
begin
  FDataIntf := nil;
end;

{ TReporter }

function TReporter.Design: Boolean;
var
  lvCRC:Cardinal;
begin
  if FReportFile = '' then
    raise Exception.Create('请指定一个文件名,用来加载和存储设计的模板文件(该文件可以不存在,但是该文件目录要可以写入)!');
  FReportForm := TfrmBarTenderDesign.Create(nil);
  try
    FReportForm.DataList := FDataIntf;
    lvCRC := 0;
    FReportForm.DesignFile := FReportFile;
    if not FileExists(FReportFile) then
    begin
      lvCRC := TCRCTools.crc32File(FReportFile);
    end;
    if FReportForm.checkBarTenderDataGetter then
    begin

    end else
    begin
      FReportForm.CreateDataObject();
    end;

    FReportForm.Prepare4Design;
    FReportForm.ShowModal();

    if lvCRC <> TCRCTools.crc32File(FReportForm.DesignFile) then
    begin
      if not SameText(FReportFile,FReportForm.DesignFile)  then
      begin
        TFileTools.FileCopy(FReportForm.DesignFile, FReportFile);
      end;                        
      Result := true;
    end;
  finally
    FReportForm.Free;
  end;
end;

procedure TReporter.Preview;
begin
  try
    FReportForm := TfrmBarTenderDesign.Create(nil);
    try
      FReportForm.DataList := FDataIntf;
      FReportForm.DesignFile := FReportFile;
      if FReportForm.checkBarTenderDataGetter then
      begin
        //直接获取数据
        FReportForm.PreView4PrintDataList;
      end else
      begin
        FReportForm.CreateDataObject();
        FReportForm.PreView;
      end;

    finally
      FReportForm.Free;
    end;
  except
    on E:Exception do
    begin
      TMsgTools.showErrorMessage('预览报表文件失败' + sLineBreak + e.Message, false);
    end;
  end;
end;

procedure TReporter.Print;
begin
  FReportForm := TfrmBarTenderDesign.Create(nil);
  try
    FReportForm.DataList := FDataIntf;
    FReportForm.DesignFile := FReportFile;
    if FReportForm.checkBarTenderDataGetter then
    begin
      //直接获取数据
      FReportForm.Print4PrintDataList;
    end else
    begin
      FReportForm.CreateDataObject();
      FReportForm.Print;
    end;


    
    FReportForm.DataList := nil;
  finally
    FReportForm.Free;
  end;
end;

procedure TReporter.setDataList(pvIntf: IInterface);
begin
  FDataIntf := pvIntf;
end;

procedure TReporter.setDesignFile(pvFile: PAnsiChar);
begin
  FReportFile := pvFile;  
end;

procedure TReporter.setName(pvName:PAnsiChar);
begin
  //
  FReportName := pvName;
end;


initialization
  __count := 0;

finalization
   Assert(__count = 0, 'rm reporter Memory leak');

end.
