unit ufrmRBReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIIntfList, uDBIntf,
  ppEndUsr, ppComm, ppRelatv, ppProd, ppClass, ppReport, ppDB, ppDBPipe,
  ppParameter, ufrmReportPreView, StdInterface, superobject;

type
  TfrmRBReport = class(TForm)
    rptReport: TppReport;
    ppDesigner1: TppDesigner;
  private
    { Private declarations }
    procedure CreateDataItem(const pvIntf:IInterface);
    procedure CreateDataObject4InterfaceList(const pvDataList: IInterfaceList);
    procedure CreateDataObject4IntfList(const pvDataList: IIntfList);
    { Private declarations }
  public
    procedure CreateDataObject(const pvDataList: IInterface);
    procedure Preview;
  end;

var
  frmRBReport: TfrmRBReport;

implementation

{$R *.dfm}

procedure TfrmRBReport.CreateDataItem(const pvIntf:IInterface);
var
  lvDataSetGetter:IDataSetGetter;
  lvDataSourceGetter:IDataSourceGetter;
  lvDataSet:TppDBPipeline;
  lvJSonConfigStringGetter:IJSonConfigStringGetter;
  lvJSonConfig:ISuperObject;

begin
  lvDataSetGetter := nil;
  if pvIntf.QueryInterface(IDataSourceGetter,lvDataSourceGetter) = S_OK then
  begin
    lvDataSet := TppDBPipeline.Create(Self);
    lvDataSet.DataSource := lvDataSourceGetter.getDataSource;
    if (lvDataSet.DataSource <> nil) then
    begin
      lvDataSet.UserName := lvDataSet.DataSource.DataSet.Name;
    end;

    if pvIntf.QueryInterface(IJSonConfigStringGetter, lvJSonConfigStringGetter) = S_OK then
    begin
      lvJSonConfig := SO(lvJSonConfigStringGetter.getJSonConfigString);
      if lvJSonConfig <> nil then
      begin
        if lvJSonConfig.S['caption']<>'' then
        begin
          lvDataSet.UserName := lvJSonConfig.S['caption'];
        end;
      end;
    end;
  end;
end;

procedure TfrmRBReport.CreateDataObject(const pvDataList: IInterface);
var
  lvIntfList:IIntfList;
  lvList:IInterfaceList;
  lvCreated:Boolean;
begin
  lvCreated := false;
  pvDataList.QueryInterface(IIntfList, lvIntfList);
  if lvIntfList <> nil then
  begin
    CreateDataObject4IntfList(lvIntfList);
    lvCreated := true;
  end;

  if not lvCreated then
  begin
    pvDataList.QueryInterface(IInterfaceList, lvList);
    if lvList <> nil then
    begin
      CreateDataObject4InterfaceList(lvList);
      lvCreated := true;
    end;
  end;

  
//  for i := 0 to pvDataList.Count - 1 do
//  begin
//    lvIntf := pvDataList.Values[i];
//    lvDataSetGetter := nil;    
//    if lvIntf.QueryInterface(IDataSetGetter,lvDataSetGetter) = S_OK then
//    begin
//      lvDataSet := TfrxDBDataSet.Create(Self);
//      lvDataSet.DataSet := lvDataSetGetter.getDataSet;
//      if lvDataSet.DataSet <> nil then
//      begin
//        lvDataSet.UserName :=lvDataSet.DataSet.Name;
//      end;
//    end;
//  end;

end;

procedure TfrmRBReport.CreateDataObject4InterfaceList(const pvDataList:
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

procedure TfrmRBReport.CreateDataObject4IntfList(const pvDataList: IIntfList);
var
  i:Integer;
begin
  if pvDataList = nil then exit;
  for i := 0 to pvDataList.Count - 1 do
  begin
    CreateDataItem(pvDataList.Values[i]);
  end;
end;

procedure TfrmRBReport.Preview;
begin
  with TfrmReportPreView.Create(Self) do
  try
    setReport(self.rptReport);

    ShowModal;
  finally
    Free;
  end;
end;

end.
