unit uRMGridReporter;

interface

uses
  ufrmRMReport, uIReporter, uIIntfList, superobject, SysUtils, uCRCTools,
  uFileTools, uResTools;

type
  TRMGridReporter = class(TInterfacedObject, IReporter)
  private
    FReportForm: TfrmRMReport;
    FReportFile:String;    
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

    //设置名字
    procedure setName(pvName:PAnsiChar);stdcall;

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
  Result := TRMGridReporter.Create;
  InterlockedIncrement(__count);
end;

destructor TRMGridReporter.Destroy;
begin
  FDataIntf := nil;
  InterlockedDecrement(__count);
  inherited Destroy;
end;

procedure TRMGridReporter.Clear;
begin
  FDataIntf := nil;
end;

{ TRMGridReporter }

function TRMGridReporter.Design: Boolean;
var
  lvCRC:Cardinal;
begin
  if FReportFile = '' then
    raise Exception.Create('请指定一个文件名,用来加载和存储设计的模板文件(该文件可以不存在,但是该文件目录要可以写入)!');
  FReportForm := TfrmRMReport.Create(nil);
  try
    FReportForm.CreateDataObject(FDataIntf);
    lvCRC := 0;
    if not FileExists(FReportFile) then
    begin
      ///保存一个空的报表
      TResTools.saveToFile('RMG_Template', FReportFile);
    end;

    if FileExists(FReportFile) then
    begin
      FReportForm.RMGridReport.LoadFromFile(FReportFile);
      lvCRC := TCRCTools.crc32File(FReportFile);
    end;

    FReportForm.RMGridReport.DesignReport();


    if not FileExists(FReportFile) then
    begin      //照理是不会出现的情况
      FReportForm.RMGridReport.SaveToFile(FReportFile);
    end;

    if lvCRC <> TCRCTools.crc32File(FReportFile) then
    begin
      // TFileTools.FileCopy(FReportForm.RMGridReport.FileName, FReportFile);
      Result := true;
    end;
  finally
    FReportForm.Free;
  end;
end;

procedure TRMGridReporter.Preview;
begin
  FReportForm := TfrmRMReport.Create(nil);
  try
    FReportForm.CreateDataObject(FDataIntf);
    FReportForm.RMGridReport.LoadFromFile(FReportFile);
    FReportForm.RMGridReport.ShowReport();
  finally
    FReportForm.Free;
  end;
end;

procedure TRMGridReporter.Print;
begin
  FReportForm := TfrmRMReport.Create(nil);
  try
    FReportForm.CreateDataObject(FDataIntf);
    FReportForm.RMGridReport.LoadFromFile(FReportFile);
    FReportForm.RMGridReport.PrintReport;
  finally
    FReportForm.Free;
  end;
end;

procedure TRMGridReporter.setDataList(pvIntf: IInterface);
begin
  FDataIntf := pvIntf;
end;

procedure TRMGridReporter.setDesignFile(pvFile: PAnsiChar);
begin
  FReportFile := pvFile;  
end;


procedure TRMGridReporter.setName(pvName: PAnsiChar);
begin
  
end;

initialization
  __count := 0;

finalization
   Assert(__count = 0, 'rm reporter Memory leak');

end.
