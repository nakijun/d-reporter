unit uRMReporter;

interface

uses
  ufrmRMReport, uIReporter, uIIntfList, superobject, SysUtils, uCRCTools,
  uFileTools, uResTools;

type
  TRMReporter = class(TInterfacedObject, IReporter)
  private
    FReportForm: TfrmRMReport;
    FReportFile:String;
    FDataIntf: IInterface;
  public
    destructor Destroy; override;
    function Design: Boolean; stdcall;
    procedure Preview; stdcall;
    procedure Print; stdcall;
    //������ƺõı����ļ�ģ��
    procedure setDesignFile(pvFile: PAnsiChar); stdcall;

    //��������
    procedure setName(pvName:PAnsiChar);stdcall;

    //���ݶ���Ľӿ��б�
    procedure setDataList(pvIntf: IInterface); stdcall;

    //��������
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
  Result := TRMReporter.Create;
  InterlockedIncrement(__count);
end;

destructor TRMReporter.Destroy;
begin
  FDataIntf := nil;
  InterlockedDecrement(__count);
  inherited Destroy;
end;

procedure TRMReporter.Clear;
begin
  FDataIntf := nil;
end;

{ TRMReporter }

function TRMReporter.Design: Boolean;
var
  lvCRC:Cardinal;
  lvRepFile, lvRMFileName:String;
begin
  if FReportFile = '' then
    raise Exception.Create('��ָ��һ���ļ���,�������غʹ洢��Ƶ�ģ���ļ�(���ļ����Բ�����,���Ǹ��ļ�Ŀ¼Ҫ����д��)!');
  lvRMFileName := ChangeFileExt(FReportFile, '.rmf');

  FReportForm := TfrmRMReport.Create(nil);
  try
    FReportForm.CreateDataObject(FDataIntf);
    lvCRC := 0;

    if ((not FileExists(FReportFile)) or (TFileTools.FileSize(FReportFile)=0)) then
    begin
      ///����һ���յı���
      ///
      TResTools.saveToFile('RM_Template', FReportFile);

      //FReportForm.createTemplateFile(FReportFile);
    end;

    if FileExists(FReportFile) then
    begin
      TFileTools.FileRename(FReportFile, lvRMFileName);
      FReportForm.rptReport.PrepareReport();
      FReportForm.rptReport.LoadFromFile(lvRMFileName);
      lvCRC := TCRCTools.crc32File(lvRMFileName);
    end;
    
    FReportForm.rptReport.DesignReport();

    if not FileExists(lvRMFileName) then
    begin      //�����ǲ�����ֵ����
      FReportForm.rptReport.SaveToFile(lvRMFileName);
    end; 

    if lvCRC <> TCRCTools.crc32File(lvRMFileName) then
    begin
      Result := true;
      TFileTools.FileRename(lvRMFileName, FReportFile);
    end;
  finally
    FReportForm.Free;
  end;
end;

procedure TRMReporter.Preview;
begin
  FReportForm := TfrmRMReport.Create(nil);
  try
    FReportForm.CreateDataObject(FDataIntf);
    FReportForm.rptReport.LoadFromFile(FReportFile);
    FReportForm.rptReport.ShowReport();
  finally
    FReportForm.Free;
  end;
end;

procedure TRMReporter.Print;
begin
  FReportForm := TfrmRMReport.Create(nil);
  try
    FReportForm.CreateDataObject(FDataIntf);
    FReportForm.rptReport.LoadFromFile(FReportFile);
    FReportForm.rptReport.PrintReport;
  finally
    FReportForm.Free;
  end;
end;

procedure TRMReporter.setDataList(pvIntf: IInterface);
begin
  FDataIntf := pvIntf;
end;

procedure TRMReporter.setDesignFile(pvFile: PAnsiChar);
begin
  FReportFile := pvFile;
end;


procedure TRMReporter.setName(pvName: PAnsiChar);
begin
  ;
end;

initialization
  __count := 0;

finalization
   Assert(__count = 0, 'rm reporter Memory leak');

end.
