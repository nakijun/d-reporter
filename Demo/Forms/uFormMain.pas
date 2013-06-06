unit uFormMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, uIFileAccess, uLocalFileAccess, 
  uReportConsoleLibWrapper, Grids, DBGrids, DB, ADODB, DBClient, ExtCtrls,
  ComObj, uDBIntf, superobject, uFormProgressConsole,
  StdInterface, Buttons, ShellAPI, ComCtrls, uIReporter, uIUIReporter,
  uIControlLayout, Menus, uIBarTenderData, uJSonTools;

type
  TFormMain = class(TForm, IDataSetGetter, IDataSourceGetter,
     IBarTenderDataGetter)
    dsMain: TDataSource;
    pnlOperator: TPanel;
    btnShowConsole: TButton;
    cdsMain: TClientDataSet;
    cdsMainFKey: TStringField;
    cdsMainFCode: TStringField;
    cdsMainFName: TStringField;
    cdsMainFUpbuildTime: TDateTimeField;
    btnPreView: TButton;
    btnDesign: TButton;
    btnPrint: TButton;
    chkShowEspecial: TCheckBox;
    cbbUser: TComboBox;
    chkShowAll: TCheckBox;
    btnExport: TBitBtn;
    btnImporter: TButton;
    dlgOpen: TOpenDialog;
    Label1: TLabel;
    edtReportID: TEdit;
    Label2: TLabel;
    pgcMain: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    btnPreViewINFrame: TButton;
    PopupMenu1: TPopupMenu;
    btnPrintList: TButton;
    btn1: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btnShowConsoleClick(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
    procedure btnDesignClick(Sender: TObject);
    procedure btnImporterClick(Sender: TObject);
    procedure btnPreViewClick(Sender: TObject);
    procedure btnPreViewINFrameClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
  private
    { Private declarations }
    __ReportID:AnsiString;
    __passString:AnsiString;
    FFileAccess: IFileAccess;
    FDataList:IInterfaceList;
    FProgConsole:IProgConsole;
    FReportFM:IInterface;
    function getReportID: PAnsiChar;
    function createDefaultOperator: IReporterDefaultOperator;
    procedure InnerDoPrint(pvType: Integer);
  public
    function getDataSet: TDataSet; stdcall;
    function getDataSource: TDataSource; stdcall;

    /// <summary>
    ///   ��ӡ����ѡ��
    /// </summary>
    /// <returns>
    ///     {
    ///        isAll:true, //��ӡ���м�¼
    ///   }
    /// </returns>
    function getPrintDATAConfig: PAnsiChar; stdcall;


    /// <summary>
    ///   ��ȡBarTenderֱ����Ҫ��ӡ������
    /// </summary>
    /// <returns>
    /// {
    ///    "list":
    ///     [
    ///        {},
    ///        {}
    ///     ]
    /// }
    /// </returns>
    function getBarTenderPrintData: PAnsiChar; stdcall;
  public
    destructor Destroy; override;
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

{$R *.dfm}

destructor TFormMain.Destroy;
begin
  FDataList.Clear;
  FDataList := nil;
  FFileAccess := nil;
  inherited Destroy;
end;

procedure TFormMain.btn1Click(Sender: TObject);
begin
//  //����dll
//  TReportConsoleLibWrapper.checkInitialize;
//  try
//    //����һ���ӿ�,��DLL����
//    lvReportConsole:=TReportConsoleLibWrapper.createReportConsole(createDefaultOperator);
//    with lvReportConsole do
//    try
//      //���ýӿڷ���,��ʾ����
//      ShowConsole;
//    finally
//      //���ýӿڷ���,�ͷŴ���
//      FreeConsole;
//    end;
//
//    //����nil������ýӿڶ����.relase���� �������ͷ�dll֮ǰ�ͷ�
//    //������ִ����ɺ��ͷ���Ľӿڶ���ʱ������쳣.��Ϊ����dll���ͷ���
//    lvReportConsole := nil;
//  finally
//    //�ͷ�dll
//    TReportConsoleLibWrapper.checkFinalization;
//  end;
end;

procedure TFormMain.btnShowConsoleClick(Sender: TObject);
begin
  InnerDoPrint(0);


//  with TReportConsoleLibWrapper.createReportConsole(createDefaultOperator) do
//  try
//    setFileAccess(FFileAccess);
//    setDataList(FDataList);
//    setConfig(PAnsiChar(lvString));
//    setReportID(getReportID);
//    ShowConsole;
//  finally
//    FreeConsole;
//  end;
end;

procedure TFormMain.btnExportClick(Sender: TObject);
var
  lvFProgConsole:IProgConsole;
begin
  lvFProgConsole := TFormProgressConsole.Create(Self);
  try
    lvFProgConsole.SetHintText('��������');
    lvFProgConsole.ShowProgressConsole;
    with TReportConsoleLibWrapper.createReporterIM do
    try
      setFileAccess(FFileAccess);
      DoReporterExport(getReportID, 'C:\repPack', lvFProgConsole);
    finally
      FreeReporterIM;
    end;
  finally
    lvFProgConsole.FreeConsole;
  end;

  ShowMessage('�����ı����ļ�����C:\repPack');
  ShellExecute(Handle,'open','Explorer.exe','C:\repPack',nil,1);
 // ShellExecute(0, 'open', 'C:\repPack', nil, nil, 0);
  //FileOpen('C:\repPack', 0);
end;

procedure TFormMain.btnDesignClick(Sender: TObject);
var
  lvID:String;
begin
  InnerDoPrint(3);
//  with TReportConsoleLibWrapper.createReportConsole do
//  try
//    setFileAccess(FFileAccess);
//    setDataList(FDataList);
//    setReportID(getReportID);
//    lvID := getFirstReporterID;
//    if lvID <> '' then
//    begin
//      Design(PAnsiChar(lvID));
//    end else
//    begin
//      DesignNewReport('RM', '��׼����');
//    end;
//  finally
//    FreeConsole;
//  end;
end;

procedure TFormMain.btnImporterClick(Sender: TObject);
var
  i:Integer;
  lvFile:AnsiString;
begin
  dlgOpen.Filter := '�������ļ�(*.repPack)|*.repPack';
  dlgOpen.DefaultExt := '.repPack';
  if not dlgOpen.Execute() then exit;
  with TReportConsoleLibWrapper.createReporterIM do
  try
    setFileAccess(FFileAccess);
    for i := 0 to dlgOpen.Files.Count - 1 do
    begin
      lvFile := dlgOpen.Files[i];
      DoImportRepPackFile(PAnsiChar(lvFile));
    end;
    lvFile := '';
  finally
    FreeReporterIM;
  end;
end;

procedure TFormMain.btnPreViewClick(Sender: TObject);

begin
  InnerDoPrint(1);
end;

procedure TFormMain.btnPreViewINFrameClick(Sender: TObject);
var
  lvReporter:IReporter;
  lvUIReporter:IUIReporter;
  lvControlLayOut:IControlLayout;
var
  lvJSon:ISuperObject;
  lvString:AnsiString;
  lvDefaultOperator:IReporterDefaultOperator;
  lvReportConsole:IReportConsole;
begin
  lvJSon := SO();
  lvJSon.B['showEspecial'] := chkShowEspecial.Checked;
  lvJSon.B['showAllReporter'] := chkShowAll.Checked;
  lvJSon.S['operator.name'] := cbbUser.Text;
  lvString := lvJSon.AsJSon(True, False);
  FReportFM := nil;

  __passString := cbbUser.Text;
  lvDefaultOperator := TReportConsoleLibWrapper.createReporterDefaultOperator(
    PAnsiChar(AnsiString(__passString)), FFileAccess);
  lvReportConsole :=TReportConsoleLibWrapper.createReportConsole(lvDefaultOperator);

  with lvReportConsole do
  try   
    setFileAccess(FFileAccess);
    setDataList(FDataList);
    setReportID(getReportID);
    setConfig(PAnsiChar(lvString));
    lvReporter := createReporter('');
    if lvReporter = nil then
      raise Exception.Create(TReportConsoleLibWrapper.getLastErrorDesc);
    if lvReporter.QueryInterface(IUIReporter, lvUIReporter) = S_OK then
    begin
      FReportFM := lvUIReporter.createPreviewFrame;
      if FReportFM.QueryInterface(IControlLayout, lvControlLayOut) = S_OK then
      begin
        lvControlLayOut.ExecuteLayOut(TabSheet2);
        pgcMain.ActivePage:= TabSheet2;
      end;      
    end else
    begin
      raise Exception.Create('Reporter��֧��iUIReporter�ӿ�');
    end;
  finally
    FreeConsole;
  end;
end;

procedure TFormMain.btnPrintClick(Sender: TObject);
begin
  InnerDoPrint(2);
end;

function TFormMain.createDefaultOperator: IReporterDefaultOperator;
begin
  Result := TReportConsoleLibWrapper.createReporterDefaultOperator(
    '{EC4431CF-98B1-4D3F-BD54-717A4E493A8F}', FFileAccess);
end;

procedure TFormMain.FormCreate(Sender: TObject);
begin
  FFileAccess := TLocalFileAccess.Create(ExtractFilePath(ParamStr(0)) + '\Files');

  FDataList := TInterfaceList.Create;
  FDataList.Add(Self);
  

  cdsMain.Append;
  cdsMain.FieldByName('FKey').AsString := CreateClassID;
  cdsMain.FieldByName('FCode').AsString := '001';
  cdsMain.FieldByName('FName').AsString := '����';
  cdsMain.FieldByName('FUpbuildTime').AsDateTime := Now();
  cdsMain.Post;
  
  cdsMain.Append;
  cdsMain.FieldByName('FKey').AsString := CreateClassID;
  cdsMain.FieldByName('FCode').AsString := '002';
  cdsMain.FieldByName('FName').AsString := '����';
  cdsMain.FieldByName('FUpbuildTime').AsDateTime := Now();
  cdsMain.Post;
  
end;

function TFormMain.getBarTenderPrintData: PAnsiChar;
var
  lvJSon, lvRecData:ISuperObject;
begin
  lvJSon := SO();
  lvJSon.O['list'] := SO('[]');
  cdsMain.First;
  while not cdsMain.Eof do
  begin
    lvRecData := SO();
    TJSonTools.extractRecordsData(self.cdsMain, lvRecData);
    lvJSon.A['list'].Add(lvRecData);
    cdsMain.Next;
  end;
  __passString := lvJSon.AsJSon(True);
  Result := PAnsiChar(__passString);
end;

function TFormMain.getDataSet: TDataSet;
begin
  Result := cdsMain;
end;

function TFormMain.getDataSource: TDataSource;
begin
  Result := self.dsMain;
end;

function TFormMain.getPrintDATAConfig: PAnsiChar;
var
  lvJSon:ISuperObject;
begin
  lvJSon := SO();
  lvJSon.B['isAll'] := true;
  __passString := lvJSon.AsJSon(true);
  Result := PAnsiChar(AnsiString(__passString));
end;

function TFormMain.getReportID: PAnsiChar;
begin
  __ReportID := edtReportID.Text;
  Result := PAnsiChar(AnsiString(__ReportID));
end;

procedure TFormMain.InnerDoPrint(pvType: Integer);
  var
    lvJSon:ISuperObject;
    lvString:AnsiString;

    lvDefaultOperator:IReporterDefaultOperator;
    lvReportConsole:IReportConsole;
  begin
    lvJSon := SO();
    lvJSon.B['showEspecial'] := chkShowEspecial.Checked;
    lvJSon.B['showAllReporter'] := chkShowAll.Checked;
    lvJSon.S['operator.name'] := cbbUser.Text;
    lvString := lvJSon.AsJSon(True, False);

    TReportConsoleLibWrapper.checkInitialize;
    try
      __passString := cbbUser.Text;

      lvDefaultOperator := TReportConsoleLibWrapper.createReporterDefaultOperator(
        PAnsiChar(AnsiString(__passString)), FFileAccess);
      lvReportConsole :=TReportConsoleLibWrapper.createReportConsole(lvDefaultOperator);
      with lvReportConsole do
      try
        setFileAccess(FFileAccess);
        setDataList(FDataList);
        setConfig(PAnsiChar(lvString));
        setReportID(getReportID);
        if pvType = 0 then
        begin
          ShowConsole;
        end else if pvType = 1 then
        begin
          PreView('');
        end else if pvType = 2 then
        begin
          Print('');
        end else if pvType = 3 then
        begin
          Design('');
        end;
      finally
        lvReportConsole.FreeConsole;
      end;
      lvReportConsole := nil;
      lvDefaultOperator := nil;
    finally
       TReportConsoleLibWrapper.checkFinalization;
    end;
end;

procedure TFormMain.PopupMenu1Popup(Sender: TObject);
var
  lvJSon, lvList, lvItem:ISuperObject;
  lvString:AnsiString;
  lvMenuItem:TMenuItem;
begin
  if PopupMenu1.Items.Count = 0 then
  begin
    lvJSon := SO();
    lvJSon.B['showEspecial'] := chkShowEspecial.Checked;
    lvJSon.B['showAllReporter'] := chkShowAll.Checked;
    lvJSon.S['operator.name'] := cbbUser.Text;
    lvString := lvJSon.AsJSon(True, False);

    with TReportConsoleLibWrapper.createReportConsole(createDefaultOperator) do
    try
      setFileAccess(FFileAccess);
      setDataList(FDataList);
      setConfig(PAnsiChar(lvString));
      setReportID(getReportID);
      lvString := getReports;
      lvList := SO(lvString);
    finally
      FreeConsole;
    end;

    lvString := '';

    for lvItem in lvList do
    begin
      lvMenuItem := TMenuItem.Create(Self);
      lvMenuItem.Caption := lvItem.S['caption'];

      PopupMenu1.Items.Add(lvMenuItem);
    end;

  end;
end;

end.
