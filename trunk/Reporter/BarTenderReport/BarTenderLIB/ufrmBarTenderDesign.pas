unit ufrmBarTenderDesign;

//   dictionary:
//   {
//      key:value,
//   }


interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, superobject, uJSonTools, StdCtrls, ObjRecycle, SOWrapper,
  ExtCtrls, Grids, ValEdit, ActnList, Buttons, KeyStream, KeyStreamCoder,
  uKeyStreamTools, uBarTenderTools, uIIntfList, uDBIntf, uBarTenderExecuter,
  ufrmShowGraphic, ImgList, uMsgTools, StdInterface, uIBarTenderData;

type
  TfrmBarTenderDesign = class(TForm)
    lstData: TListBox;
    lstTemplate: TValueListEditor;
    pnlTop: TPanel;
    dlgOpenFile: TOpenDialog;
    Splitter1: TSplitter;
    ActionList1: TActionList;
    actNew: TAction;
    actPreView: TAction;
    actDelete: TAction;
    actImport: TAction;
    actExport: TAction;
    actExit: TAction;
    ilMain: TImageList;
    actSave: TAction;
    btnSave: TSpeedButton;
    btnImport: TSpeedButton;
    btnExport: TSpeedButton;
    btnExit: TSpeedButton;
    btnNew: TSpeedButton;
    btnDelete: TSpeedButton;
    btnPreView: TSpeedButton;
    dlgSave: TSaveDialog;
    procedure actDeleteExecute(Sender: TObject);
    procedure actExitExecute(Sender: TObject);
    procedure actExportExecute(Sender: TObject);
    procedure actImportExecute(Sender: TObject);
    procedure actNewExecute(Sender: TObject);
    procedure actPreViewExecute(Sender: TObject);
    procedure actSaveExecute(Sender: TObject);
    procedure lstDataDblClick(Sender: TObject);
  private
    FShowHint:Boolean;
    FDesignFile: String;

    //数据列表
    FDataList:IInterface;

    //通过IBarTenderDataGetter，获取的数据,如果有数据根据该数据进行打印
    FPrintDATAList:ISuperObject;
    
    FPrintDATA: ISuperObject;

    FDesignStream: TKeyStream;

    FRecyle: TObjectRecycle;

    { Private declarations }
    procedure CreateDataItem(const pvIntf:IInterface);
    procedure CreateDataObject4InterfaceList(const pvDataList: IInterfaceList);
    procedure CreateDataObject4IntfList(const pvDataList: IIntfList);


    //获取接口
    procedure checkBarTenderDataGetter4OneInterface(const pvIntf:IInterface);
    procedure checkBarTenderDataGetter4InterfaceList(const pvDataList: IInterfaceList);
    procedure checkBarTenderDataGetter4IntfList(const pvDataList: IIntfList);

    procedure reloadFieldINfo();
    procedure reloadFromDesignFile();
    procedure save2DesignFile();
  public

    //获取PrintData
    function checkBarTenderDataGetter: Boolean;

    procedure Prepare4Design;
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;

    procedure AddDataSet(pvDataSet: TDataSet; pvDictionaryINfo: ISuperObject = nil;
        pvPreName: String = '');

    { Public declarations }
    procedure CreateDataObject;

    procedure PreView;

    procedure PreView4PrintDataList;

    procedure Print;

    //从直接的数据中进行打印
    procedure Print4PrintDataList;



    property DataList: IInterface read FDataList write FDataList;

    property DesignFile: String read FDesignFile write FDesignFile;


    { Public declarations }
    
  end;

var
  frmBarTenderDesign: TfrmBarTenderDesign;

implementation

uses
  Clipbrd, ufrmPreView;

{$R *.dfm}




constructor TfrmBarTenderDesign.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FShowHint := true;
  FPrintDATA := SO();
  FRecyle := TObjectRecycle.Create();
  FDesignStream := TKeyStream.Create();
end;

destructor TfrmBarTenderDesign.Destroy;
begin
  FDataList := nil;
  FPrintDATAList := nil;
  FreeAndNil(FDesignStream);
  FreeAndNil(FRecyle);
  inherited Destroy;
end;

procedure TfrmBarTenderDesign.actDeleteExecute(Sender: TObject);
begin
  lstTemplate.DeleteRow(lstTemplate.Row);
end;

procedure TfrmBarTenderDesign.actExitExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmBarTenderDesign.actExportExecute(Sender: TObject);
begin
  if dlgSave.Execute() then
  begin
    TBarTenderTools.extractBartendFile(FDesignFile, dlgSave.FileName);
    ShowMessage('导出BarTender模版文件成功!');
  end;                                              
end;

procedure TfrmBarTenderDesign.actImportExecute(Sender: TObject);
var
  lvFile:String;
begin
  if dlgOpenFile.Execute() then
  begin
    lvFile := dlgOpenFile.FileName;
    TBarTenderTools.changeBartenderFile(lvFile, FDesignFile);
    ShowMessage('导入BarTender文件成功!');
  end;
end;

procedure TfrmBarTenderDesign.actNewExecute(Sender: TObject);
begin
  lstTemplate.Row := lstTemplate.InsertRow('','',True);
end;

procedure TfrmBarTenderDesign.actPreViewExecute(Sender: TObject);
begin
  save2DesignFile;
  if FPrintDATAList <> nil then
  begin
    PreView4PrintDataList;
  end else
  begin
    PreView;
  end;
end;

procedure TfrmBarTenderDesign.actSaveExecute(Sender: TObject);
begin
  save2DesignFile;
  Close();
end;

procedure TfrmBarTenderDesign.Prepare4Design;
begin
  reloadFieldINfo;
  try
    reloadFromDesignFile;
  except
    on E:Exception do
    begin
      TMsgTools.showErrorMessage('加载报表文件失败' + sLineBreak + e.Message, false);
      DeleteFile(FDesignFile)
    end;
  end;
end;

procedure TfrmBarTenderDesign.reloadFieldINfo;
var
  lvRecDATA, lvItem:ISuperObject;

begin
  lstData.Clear;
  if FPrintDATAList <> nil then
  begin
    lvRecDATA := FPrintDATAList.A['list'].O[0];
  end else
  begin
    lvRecDATA := FPrintDATA;
  end;

  for lvItem in lvRecDATA do
  begin
    lstData.Items.AddObject(lvItem.S['caption'] + '(' + lvItem.S['name'] + ')',
      FRecyle.Add(TSOWrapper.Create(lvItem)));
  end;
end;

procedure TfrmBarTenderDesign.reloadFromDesignFile;
begin
  lstTemplate.Strings.Text := TBarTenderTools.extractTemplate(FDesignFile);

end;

procedure TfrmBarTenderDesign.save2DesignFile;
begin
  TBarTenderTools.changeTemplateData(lstTemplate.Strings.Text, FDesignFile);
end;

procedure TfrmBarTenderDesign.AddDataSet(pvDataSet: TDataSet; pvDictionaryINfo:
    ISuperObject = nil; pvPreName: String = '');
begin
  TJSonTools.extractRecordsData(pvDataSet, FPrintDATA, True, pvDictionaryINfo, pvPreName);
end;

function TfrmBarTenderDesign.checkBarTenderDataGetter: Boolean;
var
  lvIntfList:IIntfList;
  lvList:IInterfaceList;
begin
  Result := false;

  if FDataList <> nil then
  begin
    FPrintDATAList := nil;

    FDataList.QueryInterface(IIntfList, lvIntfList);
    if lvIntfList <> nil then
    begin
      checkBarTenderDataGetter4IntfList(lvIntfList);
    end;

    if FPrintDATAList = nil then
    begin
      FDataList.QueryInterface(IInterfaceList, lvList);
      if lvList <> nil then
      begin
        checkBarTenderDataGetter4InterfaceList(lvList);
      end;
    end;
    Result := FPrintDATAList <> nil;
  end;


end;

procedure TfrmBarTenderDesign.checkBarTenderDataGetter4InterfaceList(
  const pvDataList: IInterfaceList);
var
  i:Integer;
begin
  if pvDataList = nil then exit;
  for i := 0 to pvDataList.Count - 1 do
  begin
    checkBarTenderDataGetter4OneInterface(pvDataList[i]);
    if FPrintDATAList <> nil then break;
  end;
end;

procedure TfrmBarTenderDesign.checkBarTenderDataGetter4IntfList(
  const pvDataList: IIntfList);
var
  i:Integer;
begin
  if pvDataList = nil then exit;
  for i := 0 to pvDataList.Count - 1 do
  begin
    checkBarTenderDataGetter4OneInterface(pvDataList.Values[i]);
    if FPrintDATAList <> nil then break;
  end; 
end;

procedure TfrmBarTenderDesign.checkBarTenderDataGetter4OneInterface(
  const pvIntf: IInterface);
var
  lvGetter:IBarTenderDataGetter;
  lvData:String;
begin
  lvGetter := nil;
  if pvIntf.QueryInterface(IBarTenderDataGetter,lvGetter) = S_OK then
  begin
    lvData := lvGetter.getBarTenderPrintData;
    if lvData <> '' then
    begin
      FPrintDATAList := SO(lvData);
    end;                           
  end;
end;

procedure TfrmBarTenderDesign.CreateDataItem(const pvIntf:IInterface);
var
  lvDataSetGetter:IDataSetGetter;
  lvJSonConfigStringGetter:IJSonConfigStringGetter;
  lvJSonConfig:ISuperObject;
begin
  lvDataSetGetter := nil;
  if pvIntf.QueryInterface(IDataSetGetter,lvDataSetGetter) = S_OK then
  begin
    AddDataSet(lvDataSetGetter.getDataSet, nil, '');
  end;
end;

procedure TfrmBarTenderDesign.CreateDataObject;
var
  lvIntfList:IIntfList;
  lvList:IInterfaceList;
  lvCreated:Boolean;
begin
  if FDataList <> nil then
  begin
    lvCreated := false;
    FDataList.QueryInterface(IIntfList, lvIntfList);
    if lvIntfList <> nil then
    begin
      CreateDataObject4IntfList(lvIntfList);
      lvCreated := true;
    end;

    if not lvCreated then
    begin
      FDataList.QueryInterface(IInterfaceList, lvList);
      if lvList <> nil then
      begin
        CreateDataObject4InterfaceList(lvList);
        lvCreated := true;
      end;
    end;
  end;
end;



procedure TfrmBarTenderDesign.CreateDataObject4InterfaceList(const pvDataList:
    IInterfaceList);
var
  i:Integer;
begin
  if pvDataList = nil then exit;
  for i := 0 to pvDataList.Count - 1 do
  begin
    CreateDataItem(pvDataList[i]);
  end;
end;

procedure TfrmBarTenderDesign.CreateDataObject4IntfList(const pvDataList:
    IIntfList);
var
  i:Integer;
begin
  if pvDataList = nil then exit;
  for i := 0 to pvDataList.Count - 1 do
  begin
    CreateDataItem(pvDataList.Values[i]);
  end;
  
end;

procedure TfrmBarTenderDesign.lstDataDblClick(Sender: TObject);
var
  lvData:String;
begin
  if lstData.ItemIndex = -1 then Exit;
  lvData := TSOWrapper(lstData.Items.Objects[lstData.ItemIndex]).JsnObject.S['caption'];
  if lvData <>'' then
  begin
    lvData := '[' + lvData + ']';
    Clipboard.SetTextBuf(PAnsiChar(lvData));
    if FShowHint then
    begin
      ShowMessage('字段名已经复制到剪贴板,你可以在值栏目中进行粘贴!(下次双击时不再显示)');
      FShowHint := false;
    end;
    lvData := '';
  end;
end;

procedure TfrmBarTenderDesign.PreView;
var
  lvBarTenderFile, lvDesignFile:String;
  lvTemplateData:String;
  lvBitMap:TBitmap;
  lvDATA:ISuperObject;
begin
  lvTemplateData := TBarTenderTools.extractTemplate(FDesignFile);
  lvDATA := SO();
  lvDATA.O['list'] := TBarTenderTools.parseBartenderPrintDATA(lvTemplateData, FPrintDATA);
  lvBarTenderFile := TBarTenderTools.extractBartendFile(FDesignFile);
  if lvBarTenderFile='' then
  begin
    raise Exception.Create('设计文件中没有找到BarTender设计文件' + lvDesignFile);
  end;

  with TBarTenderExecuter.Create do
  try
    PrintDATA := lvDATA;
    ReportFile := lvBarTenderFile;
    lvBitMap := Print2BMPGraphic;
    try
      TfrmShowGraphic.ShowGraphic(lvBitMap, '预览');
    finally
      lvBitMap.Free;
    end;
    //PrintDialog;
  finally
    Free;
  end;
end;

procedure TfrmBarTenderDesign.PreView4PrintDataList;
var
  lvBarTenderFile, lvDesignFile:String;
  lvTemplateData:String;
  lvBitMap:TBitmap;
  lvData, lvPrintDATA:ISuperObject;
  lvPreView:TfrmPreView;
begin
  if FPrintDATAList.O['list']=nil then
    raise Exception.Create('提供的PrintDATAList中缺少list!');

  lvTemplateData := TBarTenderTools.extractTemplate(FDesignFile);
  lvBarTenderFile := TBarTenderTools.extractBartendFile(FDesignFile);
  if lvBarTenderFile='' then
  begin
    raise Exception.Create('设计文件中没有找到BarTender设计文件' + lvDesignFile);
  end;

  lvPreView := TfrmPreView.Create(Self);
  try
    with TBarTenderExecuter.Create do
    try
      for lvData in FPrintDATAList.O['list'] do
      begin
        lvPrintDATA := SO();
        lvPrintDATA.O['list'] := TBarTenderTools.parseBartenderPrintDATA(lvTemplateData, lvData);

        PrintDATA := lvPrintDATA;
        ReportFile := lvBarTenderFile;
        lvBitMap := Print2BMPGraphic;  //直接打印
        lvPreView.AddBitmap(lvBitMap);
      end;
    finally
      Free;
    end;
    lvPreView.PrepareForCreate;
    lvPreView.ShowModal();
  finally
    lvPreView.Free;
  end;

end;

procedure TfrmBarTenderDesign.Print;
var
  lvBarTenderFile, lvDesignFile:String;
  lvTemplateData:String;
  lvBitMap:TBitmap;
  lvDATA:ISuperObject;
begin
  lvTemplateData := TBarTenderTools.extractTemplate(FDesignFile);
  lvDATA := SO();
  lvDATA.O['list'] := TBarTenderTools.parseBartenderPrintDATA(lvTemplateData, FPrintDATA);
  lvBarTenderFile := TBarTenderTools.extractBartendFile(FDesignFile);
  if lvBarTenderFile='' then
  begin
    raise Exception.Create('设计文件中没有找到BarTender设计文件' + lvDesignFile);
  end;

  with TBarTenderExecuter.Create do
  try
    PrintDATA := lvDATA;
    ReportFile := lvBarTenderFile;
    lvBitMap := Print2BMPGraphic;
    PrintDialog;
  finally
    Free;
  end;
end;

procedure TfrmBarTenderDesign.Print4PrintDataList;
var
  lvBarTenderFile, lvDesignFile:String;
  lvTemplateData:String;
  lvBitMap:TBitmap;
  lvData, lvPrintDATA:ISuperObject;
begin
  if FPrintDATAList.O['list']=nil then
    raise Exception.Create('提供的PrintDATAList中缺少list!');

  lvTemplateData := TBarTenderTools.extractTemplate(FDesignFile);
  lvBarTenderFile := TBarTenderTools.extractBartendFile(FDesignFile);
  if lvBarTenderFile='' then
  begin
    raise Exception.Create('设计文件中没有找到BarTender设计文件' + lvDesignFile);
  end;
  with TBarTenderExecuter.Create do
  try
    for lvData in FPrintDATAList.O['list'] do
    begin
      lvPrintDATA := SO();
      lvPrintDATA.O['list'] := TBarTenderTools.parseBartenderPrintDATA(lvTemplateData, lvData);
      PrintDATA := lvPrintDATA;
      ReportFile := lvBarTenderFile;
      DirectPrint;  //直接打印
    end;
  finally
    Free;
  end;
end;


end.
