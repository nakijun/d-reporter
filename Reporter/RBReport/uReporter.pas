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
    raise Exception.Create('��ָ��һ���ļ���,�������غʹ洢��Ƶ�ģ���ļ�(���ļ����Բ�����,���Ǹ��ļ�Ŀ¼Ҫ����д��)!');
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
