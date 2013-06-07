unit uFastReporter;

interface

uses
  ufrmFastReport, uIReporter, uIIntfList, superobject, SysUtils, uCRCTools,
  uFileTools, uIUIReporter, uPreviewObjectWrapper;

type
  TFastReporter = class(TInterfacedObject, IReporter, IUIReporter, IReportConsoleSetter)
  private
    FReportForm: TfrmFastReport;
    FReportFile:String;
    FDataIntf: IInterface;
    FReportConsole:IReportConsole;

  public
    function createPreviewFrame: IInterface; stdcall;

    procedure setReportConsole(const pvConsole: IReportConsole); stdcall;
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
  Result := TFastReporter.Create;
  InterlockedIncrement(__count);
end;

destructor TFastReporter.Destroy;
begin
  FReportConsole := nil;
  FDataIntf := nil;
  InterlockedDecrement(__count);
  inherited Destroy;
end;

procedure TFastReporter.Clear;
begin
  FDataIntf := nil;
end;

function TFastReporter.createPreviewFrame: IInterface;
var
  lvObj:TPreviewObjectWrapper;
  lvFile:String;
begin
  lvObj := TPreviewObjectWrapper.Create;
  try
    FReportForm := TfrmFastReport.Create(nil);
    FReportForm.CreateDataObject(FDataIntf);
    lvObj.LayOutControl := FReportForm.CreatePreViewFM;
    FReportForm.rtpReport.LoadFromFile(FReportFile);
    FReportForm.rtpReport.ShowReport();

    //ɾ�������ļ�
    SysUtils.DeleteFile(FReportFile);
    lvObj.FreeObject := FReportForm;
  except
    lvObj.Free;
    raise;
  end;
  Result := lvObj;
end;

{ TFastReporter }

function TFastReporter.Design: Boolean;
var
  lvCRC:Cardinal;

begin
  if FReportFile = '' then
    raise Exception.Create('��ָ��һ���ļ���,�������غʹ洢��Ƶ�ģ���ļ�(���ļ����Բ�����,���Ǹ��ļ�Ŀ¼Ҫ����д��)!');
  FReportForm := TfrmFastReport.Create(nil);
  try
    FReportForm.CreateDataObject(FDataIntf);
    lvCRC := 0;
    if FileExists(FReportFile) then
    begin
      FReportForm.rtpReport.LoadFromFile(FReportFile);
      lvCRC := TCRCTools.crc32File(FReportFile);
    end else
    begin
      ///����һ���յı���
      FReportForm.rtpReport.PrepareReport();
      FReportForm.rtpReport.SaveToFile(FReportFile);
      FReportForm.rtpReport.LoadFromFile(FReportFile);
    end;
    FReportForm.rtpReport.DesignReport();
    if lvCRC <> TCRCTools.crc32File(FReportForm.rtpReport.FileName) then
    begin
      TFileTools.FileCopy(FReportForm.rtpReport.FileName, FReportFile);
      Result := true;
    end;
  finally
    FReportForm.Free;
  end;
end;

procedure TFastReporter.Preview;
begin
  FReportForm := TfrmFastReport.Create(nil);
  try
    FReportForm.CreateDataObject(FDataIntf);
    FReportForm.rtpReport.LoadFromFile(FReportFile);
    FReportForm.rtpReport.ShowReport();
  finally
    FReportForm.Free;
  end;
end;

procedure TFastReporter.Print;
begin
  FReportForm := TfrmFastReport.Create(nil);
  try
    FReportForm.CreateDataObject(FDataIntf);
    FReportForm.rtpReport.LoadFromFile(FReportFile);
    FReportForm.rtpReport.Print;
  finally
    FReportForm.Free;
  end;
end;

procedure TFastReporter.setDataList(pvIntf: IInterface);
begin
  FDataIntf := pvIntf;
end;

procedure TFastReporter.setDesignFile(pvFile: PAnsiChar);
begin
  FReportFile := pvFile;  
end;


procedure TFastReporter.setName(pvName: PAnsiChar);
begin
  
end;

procedure TFastReporter.setReportConsole(const pvConsole: IReportConsole);
begin
  FReportConsole := pvConsole;
end;

initialization
  __count := 0;

finalization
   Assert(__count = 0, 'fast reporter Memory leak');

end.
