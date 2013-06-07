unit ufrmRMReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIIntfList, uDBIntf, RM_Dataset, RM_GridReport, RM_System, RM_Common,
  RM_Class, RM_AsBarView, RM_BarCode, RM_e_Xls, RM_e_Jpeg, RM_e_Graphic,
  RM_e_bmp, RM_Cross, RM_AngLbl, RM_CheckBox, RM_RichEdit, RM_DsgGridReport,
  RM_Designer, StdInterface, superobject;

type
  TfrmRMReport = class(TForm)
    rptReport: TRMReport;
    RMGridReport: TRMGridReport;
    RMRichObject1: TRMRichObject;
    RMCheckBoxObject1: TRMCheckBoxObject;
    RMAngledLabelObject1: TRMAngledLabelObject;
    RMCrossObject1: TRMCrossObject;
    RMBMPExport1: TRMBMPExport;
    RMJPEGExport1: TRMJPEGExport;
    RMXLSExport1: TRMXLSExport;
    RMBarCodeObject1: TRMBarCodeObject;
    RMAsBarCodeObject1: TRMAsBarCodeObject;
    RMGridReportDesigner1: TRMGridReportDesigner;
    RMDBDataSet1: TRMDBDataSet;
    RMDesigner: TRMDesigner;
  private
    { Private declarations }
    procedure CreateDataItem(const pvIntf:IInterface);
    procedure CreateDataObject4IntfList(const pvDataList: IIntfList);
    procedure CreateDataObject4InterfaceList(const pvDataList: IInterfaceList);
  public
    { Public declarations }
    procedure CreateDataObject(const pvDataList: IInterface);
    procedure createTemplateFile(pvFile:String);
  end;

var
  frmRMReport: TfrmRMReport;

implementation

{$R *.dfm}

procedure TfrmRMReport.CreateDataItem(const pvIntf:IInterface);
var
  lvDataSetGetter:IDataSetGetter;
  lvDataSet:TRMDBDataSet;
  lvJSonConfigStringGetter:IJSonConfigStringGetter;
  lvJSonConfig:ISuperObject;
begin
  lvDataSetGetter := nil;
  if pvIntf.QueryInterface(IDataSetGetter,lvDataSetGetter) = S_OK then
  begin
    lvDataSet := TRMDBDataSet.Create(Self);
    lvDataSet.DataSet := lvDataSetGetter.getDataSet;
    if lvDataSet.DataSet <> nil then
    begin
      if lvDataSet.DataSet.Name <> '' then
      begin
        lvDataSet.AliasName :=lvDataSet.DataSet.Name;
      end;
    end;

    if pvIntf.QueryInterface(IJSonConfigStringGetter, lvJSonConfigStringGetter) = S_OK then
    begin
      lvJSonConfig := SO(lvJSonConfigStringGetter.getJSonConfigString);
      if lvJSonConfig <> nil then
      begin
        if lvJSonConfig.S['caption']<>'' then
        begin
          lvDataSet.AliasName := lvJSonConfig.S['caption'];
        end;
      end;
    end;
  end;
end;

procedure TfrmRMReport.CreateDataObject(const pvDataList: IInterface);
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






end;

procedure TfrmRMReport.CreateDataObject4InterfaceList(const pvDataList:
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

procedure TfrmRMReport.CreateDataObject4IntfList(const pvDataList: IIntfList);
var
  i:Integer;
begin
  if pvDataList = nil then exit;
  for i := 0 to pvDataList.Count - 1 do
  begin
    CreateDataItem(pvDataList.Values[i]);
  end;
  
end;

procedure TfrmRMReport.createTemplateFile(pvFile:String);
var
  lvReport:TRMReport;
begin
  lvReport := TRMReport.Create(nil);
  try
    lvReport.PrepareReport;
    lvReport.SaveToFile(pvFile);
  finally
    lvReport.Free;
  end;

end;

end.
