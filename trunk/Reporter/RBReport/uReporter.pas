unit uReporter;

interface

uses
  ufrmRBReport, uIReporter, uIIntfList, superobject, SysUtils, uCRCTools,
  uFileTools, ufrmReportPreView;

type
  TReporter = class(TInterfacedObject, IReporter)
  private
    FReportForm: TfrmRBReport;
    FReportFile:String;    
    FDataIntf:IInterface;
  public
    destructor Destroy; override;
    function Design: Boolean; stdcall;
    procedure Preview; stdcall;
    procedure Print; stdcall;
    //设置设计好的报表文件模板
    procedure setDesignFile(pvFile: PAnsiChar); stdcall;
    
    //设置名字
    procedure setName(pvName:PAnsiChar);stdcall;

    //数据对象的接口列表
    procedure setDataList(pvIntf: IInterface); stdcall;

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
  FReportForm := TfrmRBReport.Create(nil);
  try
    FReportForm.CreateDataObject(FDataIntf);
    lvCRC := 0;
    if FileExists(FReportFile) then
    begin
      FReportForm.rptReport.Template.FileName:=FReportFile;
      FReportForm.rptReport.Template.LoadFromFile;
    end else
    begin
      lvCRC := TCRCTools.crc32File(FReportFile);
    end;
    FReportForm.ppDesigner1.ShowModal;
    if lvCRC <> TCRCTools.crc32File(FReportForm.rptReport.Template.FileName) then
    begin
      TFileTools.FileCopy(FReportForm.rptReport.Template.FileName, FReportFile);
      Result := true;
    end;
  finally
    FReportForm.Free;
  end;
end;

procedure TReporter.Preview;
var
  lvfrmReportPreView:TfrmReportPreView;
begin
  FReportForm := TfrmRBReport.Create(nil);
  try
    FReportForm.CreateDataObject(FDataIntf);
    FReportForm.rptReport.Template.FileName:=FReportFile;
    FReportForm.rptReport.Template.LoadFromFile;
    FReportForm.Preview;
  finally
    FReportForm.Free;
  end;
end;

procedure TReporter.Print;
begin
  FReportForm := TfrmRBReport.Create(nil);
  try
    FReportForm.CreateDataObject(FDataIntf);
    FReportForm.rptReport.Template.FileName:=FReportFile;
    FReportForm.rptReport.Template.LoadFromFile;
    FReportForm.rptReport.Print();
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


procedure TReporter.setName(pvName: PAnsiChar);
begin
  ;
end;

initialization
  __count := 0;

finalization
   Assert(__count = 0, 'rm reporter Memory leak');

end.
