unit ufrmReportList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBClient, ActnList, ImgList,
  uFieldCreator, ufrmReportEditor, ComObj, uSNTools,
  uIFileAccess, uJSonTools, uFileTools, superobject, uIReporter,
  uIIntfList, Grids, DBGrids, DB, StdCtrls, Buttons, ExtCtrls, KeyStream,
  uKeyStreamTools, uKeyStreamCoder, uMsgTools, StdInterface, Menus,
  FileLogger, uDataSetTools, System.Actions;

type
  TfrmReportList = class(TForm
     , IReportConsole
     , IReporterIM
     , IReporterDefaultOperatorSetter)
    cdsMain: TClientDataSet;
    dsMain: TDataSource;
    actlstMain: TActionList;
    actNew: TAction;
    actEdit: TAction;
    actPreView: TAction;
    actDesign: TAction;
    actDelete: TAction;
    actImport: TAction;
    actExport: TAction;
    ilMain: TImageList;
    actExit: TAction;
    dbgrdMain: TDBGrid;
    pnlOperator: TPanel;
    btnNew: TSpeedButton;
    btnEdit: TSpeedButton;
    btnDesign: TSpeedButton;
    btnDelete: TSpeedButton;
    btnPreView: TSpeedButton;
    btnExport: TSpeedButton;
    btnImport: TSpeedButton;
    btnExit: TSpeedButton;
    dlgSave: TSaveDialog;
    dlgOpen: TOpenDialog;
    actCopy: TAction;
    btnCopy: TSpeedButton;
    actPrint: TAction;
    cds4Update: TClientDataSet;
    ds4Update: TDataSource;
    actSetDefault: TAction;
    pmGrid: TPopupMenu;
    mniExport: TMenuItem;
    mniImport: TMenuItem;
    mniDesign: TMenuItem;
    mniSetDefault: TMenuItem;
    N1: TMenuItem;
    procedure actCopyExecute(Sender: TObject);
    procedure actDeleteExecute(Sender: TObject);
    procedure actDesignExecute(Sender: TObject);
    procedure actEditExecute(Sender: TObject);
    procedure actExitExecute(Sender: TObject);

    procedure actExportExecute(Sender: TObject);
    procedure actImportExecute(Sender: TObject);

    procedure actNewExecute(Sender: TObject);
    procedure actPreViewExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure actSetDefaultExecute(Sender: TObject);
    procedure cds4UpdateAfterInsert(DataSet: TDataSet);
    procedure dbgrdMainDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure grdVMainDblClick(Sender: TObject);
  private
    { Private declarations }
    __pass:AnsiString;
    FLastMessage:AnsiString;
    
    FDefaultID:AnsiString;

    FDefaultOperator:IReporterDefaultOperator;

    FshowEspecial:boolean;
    
    FJSonConfig:ISuperObject;

    FReportID:AnsiString;

    //
    FTypeConfig:ISuperObject;

    //
    FDataIntf: IInterface;

    FFileAccess:IFileAccess;

    function LocalDefault: Boolean;

    function checkGetDefaultID: String;

    function checkGetRFileName(pvDataSet: TDataSet): String;

    procedure checkLocate4Update;

    //�Ƿ�׼������
    procedure checkPrepare;

    procedure createRepListFields(pvCDS: TClientDataSet; pvAssignEvent: Boolean = true);


    //�����б�
    procedure saveList(pvCDS: TClientDataSet = nil; pvReportID: AnsiString = '');

    //
    procedure reloadList(pvCDS: TClientDataSet = nil; pvReportID: AnsiString = '');

    procedure OnCaptionGetText(Sender: TField; var Text: string; DisplayText:
        Boolean);

    procedure OnTypeIDGetText(Sender: TField; var Text: string; DisplayText:
        Boolean);

    procedure OnBitFieldGetText(Sender: TField; var Text: string; DisplayText:
        Boolean);

    //����һ�������ļ�
    procedure InnerExport(pvReportID: string; pvDataSet: TDataSet; pvFileName:
        string; IgnoreEmptyTemplateFile: Boolean = false);

    procedure Data2UI(pvCDS: TClientDataSet; pvLocate: Boolean = false);

  public
      //���������ļ���һ��·��
    procedure DoReporterExport(pvReportID, pvPath: PAnsiChar; pvProgConsole:
        IProgConsole); stdcall;

    //����һ������Ĵ���ļ�,���ô���ReporterID
    procedure DoImportRepPackFile(pvFile:PAnsiChar); stdcall;

    procedure FreeReporterIM; stdcall;
 public
    procedure setReporterDefaultOperator(pvIntf:IReporterDefaultOperator);stdcall;
  public
    //��ӡ����,���뵥�������ID
    procedure Print(pvID:PAnsiChar);stdcall;   //��ӡĬ�ϱ���

    //Ԥ������,���뵥�������ID
    procedure PreView(pvID:PAnsiChar);stdcall;

    //��Ʊ���,���뵥�������ID
    procedure Design(pvID: PAnsiChar); stdcall;

    //���ݱ���ID,��ȡһ������ (��������Ϊ��ֵ,��Ԥ����һ��)
    function createReporter(pvID: PAnsiChar): IReporter; stdcall;

    // <summary>
    //   ��ȡ�����б�
    // </summary>
    // <returns>
    // [
    //    {caption:xxx,ID:xxxx},
    //    {caption:xxx,ID:xxxx}
    // ]
    // </returns>
    function getReports: PAnsiChar; stdcall;

    //���汨���ļ�
    function saveFileRes(pvID: PAnsiChar): PAnsiChar; stdcall;

    //��ȡ������Ϣ
    function getReportINfo(pvID: PAnsiChar):PAnsiChar; stdcall;

    //���һ���µı���
    function DesignNewReport(pvTypeID:PAnsiChar; pvRepName:PAnsiChar):PAnsiChar;stdcall;

    //��ȡ��һ��
    function getFirstReporterID: PAnsiChar; stdcall;

    //��ʾ����̨
    procedure ShowConsole();

    //׼������
    procedure Prepare; stdcall;

    //�ͷſ���
    procedure FreeConsole();

    //��������
    procedure setConfig(pvConfig:PAnsiChar);stdcall;

    //���ñ����б�ID,���ݸ�IDȥ���ұ����б�
    procedure setReportID(pvReportID:PAnsiChar);stdcall;

    //���ݶ���Ľӿ��б�
    procedure setDataList(const pvIntf: IInterface); stdcall;

    //�ļ������ӿ�
    procedure setFileAccess(const pvIntf: IFileAccess); stdcall;



  public
    procedure markModifyINfo(pvDataSet:TClientDataSet);

    function getCurrentReporter(pvCDS: TClientDataSet): IReporter;

    procedure designCurrentReporter(pvCDS: TClientDataSet);




    /// <summary>
    ///    ���뱨���ļ�������ļ�
    /// </summary>
    /// <param name="pvRepPackFile"> ������ļ��� </param>
    /// <param name="pvReportID"> Ҫ���뵽�ı�����,���Ϊ����ȡ�����Ϣ��__reportid  </param>
    /// <param name="pvForceAppend"> �Ƿ�ǿ�����,falseʱ����ԭ�е��ļ� </param>
    /// <param name="pvCDS"> Ϊnilʱ������ʱ��CDS </param>
    /// <param name="pvChangeOperator"> �Ƿ��¼����Ա��Ϣ </param>
    /// <param name="IgnoreEmptyTemplateFile"> �������ģ���ļ�Ϊ��ʱ���������� </param>
    ///
    function ImportRepPackFile(pvRepPackFile: String; pvReportID: String = '';
        pvForceAppend: Boolean = true; pvCDS: TClientDataSet = nil;
        pvChangeOperator: Boolean = false; IgnoreEmptyTemplateFile: Boolean =
        false): string;

  public
    constructor Create(pvApplicationHandle: THandle); overload;
    constructor Create(AOwner: TComponent); overload; override;
    destructor Destroy; override;

    { Public declarations }
    procedure DoEditor(pvIsAppend:Boolean);
  end;

var
  frmReportList: TfrmReportList;

implementation

uses
  PrintReportFactory, uCdsTools, uLastErrorTools;

{$R *.dfm}

constructor TfrmReportList.Create(pvApplicationHandle: THandle);
begin
  FDefaultID :=''; 
  Application.Handle := pvApplicationHandle;
  FJSonConfig := SO();
  inherited Create(nil);
end;

destructor TfrmReportList.Destroy;
begin
  FDefaultOperator := nil;
  FDataIntf := nil;
  FFileAccess := nil;
  inherited Destroy;
end;

procedure TfrmReportList.actCopyExecute(Sender: TObject);
var
  lvTempFile, lvNewKey:String;
begin
  lvTempFile := TFileTools.createTempFileName('rep4Copy_');
  InnerExport(FReportID, cdsMain, lvTempFile);
  ImportRepPackFile(lvTempFile, FReportID, True, self.cds4Update, True);
  if FileExists(lvTempFile) then
    DeleteFile(lvTempFile);
  Data2UI(self.cds4Update);
  //reloadList();
end;

procedure TfrmReportList.actDeleteExecute(Sender: TObject);
var
  lvFileID, lvKey:String;
begin
  lvKey := cdsMain.FieldByName('FKey').AsString;
  if lvKey = '' then raise Exception.Create('û��ѡȡ�κα���!');

  if not TMsgTools.QueryMsg('ɾ��������ָܻ�!�Ƿ����?') then Exit;

  lvFileID := checkGetRFileName(cdsMain);

  checkLocate4Update;

  //ɾ������ļ�
  FFileAccess.deleteFile(PAnsiChar(lvFileID), 'report');
  cdsMain.Delete;

  cds4Update.Delete;
  saveList(cds4Update);
  lvFileID := '';
end;

procedure TfrmReportList.actDesignExecute(Sender: TObject);
begin
  if cdsMain.FieldByName('FKey').AsString = '' then raise Exception.Create('û��ѡȡ�κα���!');
  if FFileAccess = nil then raise Exception.Create('ȱ���ļ������ӿ�!');
  checkLocate4Update;
  designCurrentReporter(cds4Update);
  if self.Visible then
  begin
    dbgrdMain.SetFocus();
  end;
end;

procedure TfrmReportList.actEditExecute(Sender: TObject);
begin
  DoEditor(False);
end;

procedure TfrmReportList.actExitExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmReportList.actExportExecute(Sender: TObject);
var
  lvKeyStream:TKeyStream;
  lvRec:ISuperObject;

  lvTempFile:String;
  lvFileID:String;
  lvData:ISuperObject;
begin
  if cdsMain.FieldByName('FKey').AsString = '' then raise Exception.Create('û��ѡȡ�κα���!');
  dlgSave.Filter := '�������ļ�(*.repPack)|*.repPack';
  dlgSave.FileName := cdsMain.FieldByName('FName').AsString;
  dlgSave.DefaultExt := '.repPack';

  if not dlgSave.Execute() then exit;
  InnerExport(FReportID, cdsMain, dlgSave.FileName);
end;

procedure TfrmReportList.actImportExecute(Sender: TObject);
var
  i:Integer;
begin
  dlgOpen.Filter := '�������ļ�(*.repPack)|*.repPack';
  dlgOpen.DefaultExt := '.repPack';
  if not dlgOpen.Execute() then exit;

  for i := 0 to dlgOpen.Files.Count - 1 do
  begin
    self.ImportRepPackFile(dlgOpen.Files[i], FReportID, True, self.cds4Update);
  end;

  Data2UI(self.cds4Update);
  dbgrdMain.SetFocus();
end;

procedure TfrmReportList.actNewExecute(Sender: TObject);
begin
  DoEditor(True);
end;

procedure TfrmReportList.actPreViewExecute(Sender: TObject);
var
  lvReporter:IReporter;
var
  lvTempFile:AnsiString;
  lvFileID:AnsiString;
  lvData:ISuperObject;
begin
  if cdsMain.FieldByName('FKey').AsString = '' then raise Exception.Create('û��ѡȡ�κα���!');
  if FFileAccess = nil then raise Exception.Create('ȱ���ļ������ӿ�!');
  lvTempFile := TFileTools.createTempFileName('rep', '.rep');
  lvFileID :=checkGetRFileName(cdsMain);
  FFileAccess.getFile(PAnsiChar(lvFileID), PAnsiChar(lvTempFile), 'report', False);

  lvReporter := getCurrentReporter(cdsMain);
  lvReporter.Clear;
  lvReporter.setDesignFile(PAnsiChar(lvTempFile));
  lvReporter.setDataList(FDataIntf);
  lvReporter.Preview;
  if FileExists(lvTempFile) then
    DeleteFile(lvTempFile);
  lvTempFile := '';
  lvFileID := '';
end;

procedure TfrmReportList.actPrintExecute(Sender: TObject);
var
  lvReporter:IReporter;
  lvTempFile:String;
  lvFileID:String;
  lvData:ISuperObject;
begin
  if cdsMain.FieldByName('FKey').AsString = '' then raise Exception.Create('û��ѡȡ�κα���!');
  if FFileAccess = nil then raise Exception.Create('ȱ���ļ������ӿ�,���ܻ�ȡ�����ļ�!');
  lvTempFile := TFileTools.createTempFileName('rep', '.rep');
  lvFileID :=checkGetRFileName(cdsMain);
  FFileAccess.getFile(PAnsiChar(lvFileID), PAnsiChar(lvTempFile), 'report', False);

  lvReporter := getCurrentReporter(cdsMain);
  lvReporter.Clear;
  lvReporter.setDesignFile(PAnsiChar(lvTempFile));
  lvReporter.setDataList(FDataIntf);
  lvReporter.Print;
  
  if FileExists(lvTempFile) then
    DeleteFile(lvTempFile);

  lvTempFile := '';
  lvFileID := '';
end;

procedure TfrmReportList.actSetDefaultExecute(Sender: TObject);
begin
  if FDefaultOperator<> nil then
  begin
    FDefaultID := self.cdsMain.FieldByName('FKey').AsString;
    FDefaultOperator.setDefault(PAnsiChar(FReportID), PAnsiChar(FDefaultID));
  end;                                                                      
  
  Self.dbgrdMain.Refresh;
end;

procedure TfrmReportList.cds4UpdateAfterInsert(DataSet: TDataSet);
begin
  DataSet.FieldByName('FKey').AsString := CreateClassID;
  DataSet.FieldByName('FIsEspecial').AsBoolean := false;
  DataSet.FieldByName('FIsPrivate').AsBoolean := false;
  if FJSonConfig<> nil then
  begin
    DataSet.FieldByName('FUpbuilder').AsString := FJSonConfig.S['Operator.name'];
  end;
end;

function TfrmReportList.checkGetDefaultID: String;
begin
  if FDefaultID = '' then
  begin
    if FDefaultOperator <> nil then
    begin
      FDefaultID := FDefaultOperator.getDefault(PAnsiChar(FReportID));
      if FDefaultID = '' then
      begin
        FDefaultID := 'none';
      end;
    end;
  end;

  Result := FDefaultID;
end;

function TfrmReportList.checkGetRFileName(pvDataSet: TDataSet): String;
begin
  Result := TFileTools.deleteInvalidChar(pvDataSet.FieldByName('FKey').AsString) + '.rep';
end;

procedure TfrmReportList.checkLocate4Update;
begin
  if not cds4Update.Locate('FKey', cdsMain.FieldByName('FKey').AsString, []) then
  begin
    raise Exception.Create('cds4Update��λ������¼');
  end;
end;

procedure TfrmReportList.checkPrepare;
begin
  if cdsMain.RecordCount = 0 then
  begin
    Prepare;
  end;
end;

constructor TfrmReportList.Create(AOwner: TComponent);
begin
  FDefaultID :='';
  FJSonConfig := SO(); 
  inherited;
end;

procedure TfrmReportList.createRepListFields(pvCDS: TClientDataSet;
    pvAssignEvent: Boolean = true);
var
  lvField:TField;
begin
  TFieldCreator.CreateField(pvCDS, 'FKey', ftGuid);
  TFieldCreator.CreateField(pvCDS, 'FSN', ftInteger);
  TFieldCreator.CreateField(pvCDS, 'FCode', ftString, 50);
  lvField:= TFieldCreator.CreateField(pvCDS, 'FName', ftString, 50);
  if pvAssignEvent then
    lvField.OnGetText := OnCaptionGetText;
    
  lvField:= TFieldCreator.CreateField(pvCDS, 'FTypeID', ftString, 20);
  if pvAssignEvent then
    lvField.OnGetText := OnTypeIDGetText;

  lvField:= TFieldCreator.CreateField(pvCDS, 'FIsPrivate', ftBoolean);  //�Ƿ�˽��
  if pvAssignEvent then
    lvField.OnGetText := OnBitFieldGetText;

  lvField := TFieldCreator.CreateField(pvCDS, 'FIsEspecial', ftBoolean);  //�Ƿ��������ݱ���
  if pvAssignEvent then
    lvField.OnGetText := OnBitFieldGetText;
  TFieldCreator.CreateField(pvCDS, 'FUpbuilder', ftString, 50);
  TFieldCreator.CreateField(pvCDS, 'FModifier', ftString, 50);
  TFieldCreator.CreateField(pvCDS, 'FModifyTime', ftDateTime);
end;

function TfrmReportList.createReporter(pvID: PAnsiChar): IReporter;
var
  lvID:String;
  lvConsoleSetter:IReportConsoleSetter;
var
  lvReporter:IReporter;
var
  lvTempFile:String;
  lvFileID:String;
  lvData:ISuperObject;
begin
  try
    checkPrepare;

    lvID := pvID;
    if lvID <> '' then
    begin
      if not cdsMain.Locate('FKey', lvID, []) then
      begin
        raise Exception.Create('û���ҵ���Ӧ�ı���!');
      end;
    end else
    begin
      if cdsMain.RecordCount = 0 then
      begin
        raise Exception.Create('û���ҵ��κεı���!');
      end;
      if not LocalDefault then cdsMain.First;
    end;

    if cdsMain.FieldByName('FKey').AsString = '' then raise Exception.Create('û��ѡȡ�κα���!');
    if FFileAccess = nil then raise Exception.Create('ȱ���ļ������ӿ�!');
    lvTempFile := TFileTools.createTempFileName('rep', '.rep');
    lvFileID :=checkGetRFileName(cdsMain);
    FFileAccess.getFile(PAnsiChar(lvFileID), PAnsiChar(lvTempFile), 'report', False);

    lvReporter := getCurrentReporter(cdsMain);
    if lvReporter.QueryInterface(IReportConsoleSetter, lvConsoleSetter) = S_OK then
    begin
      lvConsoleSetter.setReportConsole(Self);
    end;


    lvReporter.Clear;
    lvReporter.setDesignFile(PAnsiChar(lvTempFile));
    lvReporter.setDataList(FDataIntf);

    Result := lvReporter;
  except
    on E:Exception do
    begin
      TLastErrorTools.setLastErrorINfo(-1, E.Message);
      TFileLogger.instance.logErrMessage('createReporterʱ�����쳣' + e.Message);
    end;
  end;
end;

procedure TfrmReportList.Data2UI(pvCDS: TClientDataSet; pvLocate: Boolean =
    false);
var
  lvBookmark:TBookmark;
  i:Integer;
  lvIsDeleted:Boolean;
  lvKey, lvTempStr:String;
begin
  cdsMain.DisableControls;
  try
    if pvLocate then
      lvKey := pvCDS.FieldByName('FKey').AsString;
    
    cdsMain.Data := pvCDS.Data;
    TCdsTools.ApplySorting(cdsMain, 'FSN');
    cdsMain.First;
    while not cdsMain.Eof do
    begin
      lvIsDeleted := false;
      if (not FJSonConfig.B['showAllReporter']) then
      begin
        if cdsMain.FieldByName('FIsEspecial').AsBoolean  then
        begin
          if not FJSonConfig.B['showEspecial'] then
          begin
            cdsMain.Delete;
            lvIsDeleted := true;
          end;
        end;
        if cdsMain.FieldByName('FIsPrivate').AsBoolean  then
        begin
          lvTempStr := cdsMain.FieldByName('FUpbuilder').AsString;
          if (lvTempStr <> '')   //Ϊ��ʱ����ʾ
             and
             (not SameText(lvTempStr, FJSonConfig.S['operator.name']))  //���ǵ�ǰ�����˵ı���
          then
          begin
            cdsMain.Delete;
            lvIsDeleted := true;
          end;
        end;
      end;
      if not lvIsDeleted then
      begin
        cdsMain.Edit;
        cdsMain.FieldByName('FSN').AsInteger := cdsMain.RecNo;
        cdsMain.Next;
      end;
    end;
  finally
    cdsMain.EnableConstraints;
  end;

  if pvLocate then cdsMain.Locate('FKey', lvKey, []);

//  grdList.Cells[0, 0] := '���';
//  grdList.ColWidths[0] := 60;
//
//  grdList.Cells[1, 0] := '����';
//  grdList.ColWidths[1] := 120;
//
//  grdList.Cells[2, 0] := '����';
//  grdList.ColWidths[2] := 80;
//
//  grdList.Cells[3, 0] := '���б���';
//  grdList.ColWidths[2] := 80;
end;


procedure TfrmReportList.dbgrdMainDblClick(Sender: TObject);
begin
  if cdsMain.RecordCount = 0 then
  begin
    DoEditor(True);
  end else
  begin
    actPreView.Execute;
  end;
end;

procedure TfrmReportList.Design(pvID: PAnsiChar);
var
  lvID:String;
begin
  checkPrepare;
  
  lvID := pvID;
  if lvID <> '' then
  begin
    if not cdsMain.Locate('FKey', lvID, []) then
    begin
      raise Exception.Create('û���ҵ���Ӧ�ı���!');
    end;
  end else
  begin
    if cdsMain.RecordCount = 0 then
    begin
      raise Exception.Create('û���ҵ��κεı���!');
    end;
    if not LocalDefault then cdsMain.First;
  end;
  actDesign.Execute;
end;

procedure TfrmReportList.designCurrentReporter(pvCDS: TClientDataSet);
var
  lvReporter:IReporter;
var
  lvTempFile:String;
  lvFileID:String;
  lvData:ISuperObject;
begin
  if FFileAccess = nil then raise Exception.Create('ȱ���ļ������ӿ�!');
  lvTempFile := TFileTools.createTempFileName('rep', '.rep');
  lvFileID :=checkGetRFileName(pvCDS);
  FFileAccess.getFile(PAnsiChar(lvFileID), PAnsiChar(lvTempFile), 'report', False);

  lvReporter := getCurrentReporter(pvCDS);
  lvReporter.Clear;
  lvReporter.setDesignFile(PAnsiChar(lvTempFile));
  lvReporter.setDataList(FDataIntf);
  if lvReporter.Design then
  begin
    FFileAccess.saveFile(PAnsiChar(lvFileID), PAnsiChar(lvTempFile), 'report');
    markModifyINfo(pvCDS);
    saveList(pvCDS);
  end;

  if FileExists(lvTempFile) then
    SysUtils.DeleteFile(lvTempFile);

  lvTempFile := '';
  lvFileID := '';
end;

function TfrmReportList.DesignNewReport(pvTypeID,
  pvRepName: PAnsiChar): PAnsiChar;
var
  lvSN:Integer;
begin
  checkPrepare;
  lvSN := TSNTools.GetNextSNIndex(cds4Update, 'FSN');
  try
    self.cds4Update.Append;
    self.cds4Update.FieldByName('FSN').AsInteger := lvSN;
    self.cds4Update.FieldByName('FName').AsString := pvRepName;
    self.cds4Update.FieldByName('FTypeID').AsString := pvTypeID;
    self.cds4Update.Post;
    __pass := self.cds4Update.FieldByName('FKey').AsString;
    designCurrentReporter(cds4Update);
    saveList(cds4Update);
    Result := PAnsiChar(__pass);
  except
    cds4Update.Delete;
    raise;
  end;
end;

procedure TfrmReportList.DoEditor(pvIsAppend:Boolean);
var
  lvEditor:TfrmReportEditor;
  lvSN:Integer;
begin
  lvEditor := TfrmReportEditor.Create(Self);
  try
    lvEditor.setDataSource(self.ds4Update);
    lvEditor.setTypeConfig(FTypeConfig);

    lvEditor.dbchkFIsEspecial.Enabled := FshowEspecial;

    lvSN := TSNTools.GetNextSNIndex(cds4Update, 'FSN');
    if pvIsAppend then
    begin
      self.cds4Update.Append;
      self.cds4Update.FieldByName('FSN').AsInteger := lvSN;
    end else
    begin
      checkLocate4Update;
      cds4Update.Locate('FKey', cdsMain.FieldByName('FKey').AsString , []);
      lvEditor.prepareForEditor;
    end;
    if lvEditor.ShowModal() = mrOk then
    begin
      markModifyINfo(cds4Update);
      TDataSetTools.DataSetPost(self.cds4Update);
      saveList(cds4Update);
      Data2UI(cds4Update, True);

      if pvIsAppend then
      begin
        actDesign.Execute;
      end;
    end else
    begin
      self.cds4Update.Cancel;
    end;
  finally
    lvEditor.Free;
  end;


end;

procedure TfrmReportList.DoImportRepPackFile(pvFile:PAnsiChar);
begin
  ImportRepPackFile(pvFile, '', False, nil, False, True);  
end;

procedure TfrmReportList.DoReporterExport(pvReportID, pvPath: PAnsiChar;
    pvProgConsole: IProgConsole);
var
  lvCDS:TClientDataSet;
  lvFile, lvBasePath:String;
begin
  lvCDS := TClientDataSet.Create(nil);
  try
    lvBasePath := TFileTools.PathWithBackslash(pvPath);
    ForceDirectories(lvBasePath);

    createRepListFields(lvCDS, false);
    lvCDS.CreateDataSet;
    reloadList(lvCDS, pvReportID);
    TCdsTools.ApplySorting(lvCDS, 'FSN');
    if lvCDS.RecordCount > 0 then
    begin
      lvCDS.First;
      if (pvProgConsole <> nil) then
      begin
        pvProgConsole.SetMax(lvCDS.RecordCount);
        pvProgConsole.SetPosition(0);
      end;
      while not lvCDS.Eof do
      begin
        if (pvProgConsole <> nil) then
        begin
          if (pvProgConsole.IsBreaked) then Break;
          pvProgConsole.SetPosition(lvCDS.RecNo);
        end;
        
        lvFile := lvBasePath + '\' + pvReportID + '_' + IntToStr(lvCDS.RecNo) + '_' +
         '_' + lvCDS.FieldByName('FName').AsString + '.repPack';
        if FileExists(lvFile) then DeleteFile(lvFile);
        InnerExport(pvReportID, lvCDS, lvFile, True);
        lvCDS.Next;
      end;
    end;   
  finally
    lvCDS.Free;
  end;
end;

procedure TfrmReportList.FormCreate(Sender: TObject);
var
  lvField:TField;
begin
  TPrintReportFactory.checkInitialize;

  FTypeConfig := SO(TPrintReportFactory.Instance.getReporterList);

  //��������
  FReportID := '1002578';

  createRepListFields(cdsMain);
  createRepListFields(cds4Update, False);

  cdsMain.CreateDataSet;
  cds4Update.CreateDataSet;
end;

procedure TfrmReportList.FreeConsole;
begin
  self.Close;
  Self.Free;
end;

procedure TfrmReportList.FreeReporterIM;
begin
  self.Free;
end;

function TfrmReportList.getCurrentReporter(pvCDS: TClientDataSet): IReporter;
var
  lvStr:AnsiString;
  lvReporter:IReporter;
begin
  if pvCDS.RecordCount = 0 then raise Exception.Create('û������κα���!');
  lvStr := pvCDS.FieldByName('FTypeID').AsString;
  if lvStr = '' then
  begin
    raise Exception.Create('��ǰ����û��ָ����������!');
  end;                                                              
  
  Result := TPrintReportFactory.Instance.getReporter(PAnsiChar(lvStr));
  lvStr := '';
end;

function TfrmReportList.getFirstReporterID: PAnsiChar;
begin
  checkPrepare;
  __pass := cdsMain.FieldByName('FKey').AsString;
  Result := PAnsiChar(__pass);
end;

function TfrmReportList.getReportINfo(pvID: PAnsiChar): PAnsiChar;
var
  lvID:String;
  lvINfo:ISuperObject;
begin
  Result :='';
  checkPrepare;
  lvID := pvID;
  if lvID <> '' then
  begin
    if not cdsMain.Locate('FKey', lvID, []) then
    begin
      raise Exception.Create('û���ҵ���Ӧ�ı���!');
    end;

    lvINfo := SO();
    TJSonTools.CopyRecord2JSon(cdsMain, lvINfo, True);
    __pass := lvINfo.AsJSon(True);
    Result := PAnsiChar(__pass);
  end;                            
end;

function TfrmReportList.getReports: PAnsiChar;
var
  lvData:ISuperObject;
  lvItem:ISuperObject;
begin
  FDefaultID := '';   //�ÿ� checkGetDefaultIDʱ���»�ȡ
  Prepare;
  lvData := SO('[]');
  cdsMain.First;
  while not cdsMain.Eof do
  begin
    lvItem := SO();
    lvItem.S['ID'] := cdsMain.FieldByName('FKey').AsString;
    lvItem.S['caption'] := cdsMain.FieldByName('FName').AsString;
    if lvItem.S['ID'] = checkGetDefaultID then
    begin
      lvItem.B['default'] := True;
    end;
    lvData.AsArray.Add(lvItem);
    cdsMain.Next;
  end;
  __pass := lvData.AsJSon(True);
  Result := PAnsiChar(__pass);
end;

procedure TfrmReportList.grdVMainDblClick(Sender: TObject);
begin
  DoEditor(False);
end;

function TfrmReportList.ImportRepPackFile(pvRepPackFile: String; pvReportID:
    String = ''; pvForceAppend: Boolean = true; pvCDS: TClientDataSet = nil;
    pvChangeOperator: Boolean = false; IgnoreEmptyTemplateFile: Boolean =
    false): string;
var
  lvKeyStream:TKeyStream;
  lvRec:ISuperObject;

  lvReportID:String;

  lvTempFile:String;
  lvFileID:AnsiString;
  lvData:ISuperObject;
  lvInfo:String;

  lvInnerCDS, lvCDS:TClientDataSet;

  lvSN:Integer;
begin
  lvKeyStream := TKeyStream.Create;
  try
    TKeyStreamCoder.DecodeFromFile(lvKeyStream, pvRepPackFile);
    lvInfo := TKeyStreamCoder.ExtractString(lvKeyStream, 'info');
    if lvInfo = '' then raise Exception.Create('�Ƿ��ı������ļ�[' + pvRepPackFile + ']');

    lvTempFile := TFileTools.createTempFileName('rep', '.rep');
    if FileExists(lvTempFile) then DeleteFile(lvTempFile);
    if not TKeyStreamCoder.ExtractFile(lvKeyStream, 'file', lvTempFile) then
    begin
      if not IgnoreEmptyTemplateFile then      
        raise Exception.Create('�޷��ӱ������ļ��л�ȡ��������ļ�[' + pvRepPackFile + ']');
    end;

    lvRec := SO(lvInfo);

    lvReportID := pvReportID;
    if lvReportID = '' then  lvReportID := lvRec.S['__reportid'];

    lvCDS := pvCDS;
    if lvCDS = nil then lvInnerCDS := TClientDataSet.Create(nil);
    try
      if lvInnerCDS <> nil then
      begin
        lvCDS := lvInnerCDS;
        createRepListFields(lvCDS, false);
        lvCDS.CreateDataSet;
        reloadList(lvCDS, lvReportID);
      end;

      if pvForceAppend then
      begin
        lvSN := TSNTools.GetNextSNIndex(lvCDS, 'FSN');
        lvCDS.Append;
        self.cds4UpdateAfterInsert(lvCDS);
        TJSonTools.CopyDataRecordFromJsonData(lvCDS, lvRec);
        lvCDS.FieldByName('FKey').AsString := CreateClassID;
        lvCDS.FieldByName('FSN').AsInteger := lvSN;
      end else
      begin
        if lvCDS.Locate('FKey', lvRec.S['fkey'], []) then
        begin
          lvSN := lvCDS.FieldByName('FSN').AsInteger;
          TJSonTools.CopyDataRecordFromJsonData(lvCDS, lvRec);
          lvCDS.FieldByName('FSN').AsInteger := lvSN;
        end else
        begin
          lvSN := TSNTools.GetNextSNIndex(lvCDS, 'FSN', -1);
          lvCDS.Append;
          self.cds4UpdateAfterInsert(lvCDS);
          TJSonTools.CopyDataRecordFromJsonData(lvCDS, lvRec);
          lvCDS.FieldByName('FSN').AsInteger := lvSN;
        end;
      end;

      lvFileID := checkGetRFileName(lvCDS);
      
      //ɾ�����еı���
      FFileAccess.deleteFile(PAnsiChar(lvFileID), 'report');
      
      Result := lvFileID;

      if pvChangeOperator then  markModifyINfo(lvCDS);
      
      TDataSetTools.DataSetPost(lvCDS);       

      //���汨���б���Ϣ�ļ�
      saveList(lvCDS, lvReportID);

      if FileExists(lvTempFile) then
      begin
        //�����ļ�
        FFileAccess.saveFile(PAnsiChar(lvFileID), PAnsiChar(lvTempFile), 'report');
        DeleteFile(lvTempFile);
      end;                     
    finally
      if lvInnerCDS <> nil then lvInnerCDS.Free;
    end;
  finally
    lvKeyStream.Free;
  end;

  lvFileID := '';
  lvTempFile := '';
end;

procedure TfrmReportList.InnerExport(pvReportID: string; pvDataSet: TDataSet;
    pvFileName: string; IgnoreEmptyTemplateFile: Boolean = false);
var
  lvKeyStream: TKeyStream;
  lvRec: ISuperObject;
  lvTempFile: String;
  lvFileID: String;
begin
  lvRec := SO();
  TJSonTools.CopyRecord2JSon(pvDataSet, lvRec, True);
  lvRec.S['__reportid'] := pvReportID;
  lvKeyStream := TKeyStream.Create;
  try
    TKeyStreamCoder.AddString(lvKeyStream, 'info', lvRec.AsJSon(False));
    lvTempFile := TFileTools.createTempFileName('rep', '.rep');
    if FFileAccess = nil then raise Exception.Create('ȱ���ļ������ӿ�!');
    lvFileID := checkGetRFileName(pvDataSet);
    FFileAccess.getFile(PAnsiChar(lvFileID), PAnsiChar(lvTempFile), 'report', False);
    if FileExists(lvTempFile) then
    begin
      TKeyStreamCoder.AddFile(lvKeyStream, 'file', lvTempFile);
    end else
    begin
      if not IgnoreEmptyTemplateFile then
      begin
        raise Exception.Create('��ǰ����û��ģ���������!');
      end;
    end;

    TKeyStreamCoder.Encode2File(lvKeyStream, pvFileName);    
  finally
    lvKeyStream.Free;
  end;
  lvFileID := '';
  lvTempFile := '';
end;

function TfrmReportList.LocalDefault: Boolean;
var
  lvDefaultID:String;
begin
  Result := false;
  lvDefaultID := checkGetDefaultID;
  if (lvDefaultID <> '') and (lvDefaultID <> 'none') then
  begin
    Result := cdsMain.Locate('FKey', lvDefaultID, []);
  end;
end;

procedure TfrmReportList.markModifyINfo(pvDataSet:TClientDataSet);
begin
  if FJSonConfig<> nil then
  begin
    TDataSetTools.DataSetEdit(pvDataSet);
    pvDataSet.FieldByName('FModifier').AsString := FJSonConfig.S['Operator.name'];
    pvDataSet.FieldByName('FModifyTime').AsDateTime := now();
  end;
end;

procedure TfrmReportList.OnBitFieldGetText(Sender: TField; var Text: string;
    DisplayText: Boolean);
begin
  Text := '';
  if Sender.AsBoolean then
  begin
    Text := '��';
  end;
end;

procedure TfrmReportList.OnCaptionGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  if cdsMain.FieldByName('FKey').AsString = checkGetDefaultID then
  begin
    Text := '(Ĭ��)' + Sender.AsString;
  end else
  begin
    Text :=  Sender.AsString;
  end;
end;

procedure TfrmReportList.OnTypeIDGetText(Sender: TField; var Text: string;
    DisplayText: Boolean);
var
  lvItem:ISuperObject;
begin
  Text := Sender.AsString;
  if (FTypeConfig <> nil) and (FTypeConfig.O['list']<>nil) then
  begin
    lvItem := FTypeConfig.O['list'].O[Lowercase(Text)];
    if lvItem <> nil then
    begin
      Text := lvItem.S['remark'];
    end;
  end;
end;

procedure TfrmReportList.Prepare;
begin
  try
    if (FJSonConfig <> nil) and (FJSonConfig.O['showEspecial'] <> nil) then
    begin
      FshowEspecial := FJSonConfig.B['showEspecial'];
    end else
    begin
      FshowEspecial := true;
    end;
    reloadList(cds4Update);
    Data2UI(cds4Update);
    actSetDefault.Enabled := FDefaultOperator <> nil;
  except
    on E:Exception do
    begin
      TMsgTools.ShowError('��ȡ�����б��ļ�����!' + sLineBreak + e.Message);
    end;
  end;  
end;

procedure TfrmReportList.PreView(pvID: PAnsiChar);
var
  lvID:String;
begin
  checkPrepare;

  lvID := pvID;
  if lvID <> '' then
  begin
    if not cdsMain.Locate('FKey', lvID, []) then
    begin
      raise Exception.Create('û���ҵ���Ӧ�ı���!');
    end;
  end else
  begin
    if cdsMain.RecordCount = 0 then
    begin
      raise Exception.Create('û���ҵ��κεı���!');
    end;
    if not LocalDefault then cdsMain.First;
  end;
  actPreView.Execute;
end;

procedure TfrmReportList.Print(pvID: PAnsiChar);
var
  lvID:String;
begin
  lvID := pvID;
  checkPrepare;
  if lvID <> '' then
  begin
    if not cdsMain.Locate('FKey', lvID, []) then
    begin
      raise Exception.Create('û���ҵ���Ӧ�ı���!');
    end;
  end else
  begin
    if cdsMain.RecordCount = 0 then
    begin
      raise Exception.Create('û���ҵ��κεı���!');
    end;
    if not LocalDefault then cdsMain.First;
  end;
  actPrint.Execute;
end;

procedure TfrmReportList.reloadList(pvCDS: TClientDataSet = nil; pvReportID:
    AnsiString = '');
var
  lvData:ISuperObject;
  lvTempFile, lvReportID:AnsiString;
  lvCDS:TClientDataSet;
begin
  lvCDS := pvCDS;
  if lvCDS = nil then lvCDS := cds4Update;
  lvReportID := pvReportID;
  if lvReportID = '' then lvReportID := FReportID;

  lvTempFile := TFileTools.createTempFileName('rep', '.jsn');
  if FFileAccess = nil then raise Exception.Create('ȱ���ļ������ӿ�!');
  if FFileAccess.getFile(PAnsiChar(lvReportID+'.jsn'), PAnsiChar(lvTempFile), 'report', False) then
  begin
    lvData := TJSonTools.JsnParseFromFile(lvTempFile);
    TJSonTools.DataSetUnPack(lvCDS, lvData);
  end;
  if FileExists(lvTempFile) then
    DeleteFile(lvTempFile);
  lvReportID := '';
  lvTempFile := '';
end;

function TfrmReportList.saveFileRes(pvID: PAnsiChar): PAnsiChar;
var
  lvFileID, lvID, lvTempFile:String;
begin
  Result := '';
  checkPrepare;
  lvID := pvID;
  if lvID <> '' then
  begin
    if not cdsMain.Locate('FKey', lvID, []) then
    begin
      raise Exception.Create('û���ҵ���Ӧ�ı���!');
    end;

    if cdsMain.FieldByName('FKey').AsString = '' then raise Exception.Create('û��ѡȡ�κα���!');
    if FFileAccess = nil then raise Exception.Create('ȱ���ļ������ӿ�!');
    lvTempFile := TFileTools.createTempFileName('rep', '.rep');
    lvFileID :=checkGetRFileName(cdsMain);
    FFileAccess.getFile(PAnsiChar(lvFileID), PAnsiChar(lvTempFile), 'report', False);
    __pass := lvTempFile;
    Result := PAnsiChar(__pass);
  end;
end;

procedure TfrmReportList.saveList(pvCDS: TClientDataSet = nil; pvReportID:
    AnsiString = '');
var
  lvTempFile, lvReportID:AnsiString;
  lvCDS:TClientDataSet;
begin
  lvCDS := pvCDS;
  if lvCDS = nil then lvCDS := cds4Update;
  lvReportID := pvReportID;
  if lvReportID = '' then lvReportID := FReportID;


  lvTempFile := TFileTools.createTempFileName('rep', '.jsn');
  TJSonTools.JsnSaveToFile(TJSonTools.DataSetPack(lvCDS), lvTempFile);
  FFileAccess.saveFile(PAnsiChar(lvReportID+'.jsn'), PAnsiChar(lvTempFile), 'report');
  if FileExists(lvTempFile) then
    DeleteFile(lvTempFile);
  lvReportID := '';
end;

procedure TfrmReportList.setConfig(pvConfig: PAnsiChar);
var
  lvString:String;
begin
  lvString := pvConfig;
  FJSonConfig := SO(lvString);
  if FJSonConfig = nil then
  begin
    raise Exception.Create('�Ƿ������ø�ʽ' + sLineBreak + pvConfig);
  end; 

end;

procedure TfrmReportList.setDataList(const pvIntf: IInterface);
begin
  FDataIntf := pvIntf;
end;

procedure TfrmReportList.setFileAccess(const pvIntf: IFileAccess);
begin
  TFileLogger.instance.logMessage('׼��ִ��setFileAccess');
  FFileAccess := pvIntf;
end;

procedure TfrmReportList.setReporterDefaultOperator(
  pvIntf: IReporterDefaultOperator);
begin
  FDefaultOperator := pvIntf;
end;

procedure TfrmReportList.setReportID(pvReportID: PAnsiChar);
begin
  FReportID := pvReportID;
end;

procedure TfrmReportList.ShowConsole;
begin
  try
    //TFileLogger.instance.logMessage('׼��ִ��showConsole');
    checkPrepare;
    if FJSonConfig.S['operator.name'] <> '' then
    begin
      self.Caption := '��ӭ[' + FJSonConfig.S['operator.name'] + ']�����ӡ�������̨';
    end;

    self.dbgrdMain.Columns[5].Visible :=  FshowEspecial;
    Self.ShowModal();
  except
    on E:Exception do
    begin
      FLastMessage:= E.Message;
      TFileLogger.instance.logErrMessage(E.Message);    
    end;
  end;
end;

end.
