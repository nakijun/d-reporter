unit ufrmReportEditor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, 
  DB, Mask, DBCtrls, StdCtrls, superobject,
  SOWrapper, ObjectGC, uDataSetTools;

type
  TfrmReportEditor = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    dbFName: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    dbchkFIsEspecial: TDBCheckBox;
    btnOK: TButton;
    btnCancel: TButton;
    cbbTypeID: TComboBox;
    procedure btnOKClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
  private
    { Private declarations }
    FTypeConfig:ISuperObject;

    procedure Data2UI;
    procedure UI2Data;
  public
    destructor Destroy; override;
    { Public declarations }
    procedure setDataSource(pvDataSource:TDataSource);

    procedure prepareForEditor;

    procedure setTypeConfig(pvConfig:ISuperObject);
  end;

var
  frmReportEditor: TfrmReportEditor;

implementation


{$R *.dfm}

procedure TfrmReportEditor.Data2UI;
var
  lvTypeID:String;
  i:Integer;
begin
  lvTypeID := dbFName.DataSource.DataSet.FieldByName('FTypeID').AsString;
  if lvTypeID <> '' then
  begin
    for i := 0 to cbbTypeID.Items.Count - 1 do
      begin
        if SameText(lvTypeID,TSOWrapper(cbbTypeID.Items.Objects[i]).JsnObject.S['id']) then
        begin
          cbbTypeID.ItemIndex := i;
          Break;
        end;
      end;
  end else
  begin
    cbbTypeID.Text :='';
  end;
end;

destructor TfrmReportEditor.Destroy;
begin
  TObjectGC.instance.clearObjects4Owner(Self);
  inherited Destroy;
end;

procedure TfrmReportEditor.btnCancelClick(Sender: TObject);
begin
  dbFName.DataSource.DataSet.Cancel;
  Close;
end;

procedure TfrmReportEditor.btnOKClick(Sender: TObject);
begin
  if cbbTypeID.ItemIndex = -1 then
  begin
    raise Exception.Create('��ѡȡ����');
  end;    

  UI2Data;

  TDataSetTools.DataSetPost(dbFName.DataSource.DataSet);
  Close;
  ModalResult := mrOk;
end;

procedure TfrmReportEditor.prepareForEditor;
begin
  cbbTypeID.Enabled := false;
  Data2UI;
end;

procedure TfrmReportEditor.setDataSource(pvDataSource:TDataSource);
begin
  TDataSetTools.setDataSource(Self, pvDataSource);    
end;

procedure TfrmReportEditor.setTypeConfig(pvConfig:ISuperObject);
var
  lvItem:ISuperObject;
begin
  FTypeConfig := pvConfig;
  self.cbbTypeID.Items.Clear;
  for lvItem in FTypeConfig.O['list'] do
  begin
    self.cbbTypeID.Items.AddObject(lvItem.S['remark'],
      TObjectGC.instance.add(TSOWrapper.Create(lvItem), Self)
      );
  end;                                                                                       
end;

procedure TfrmReportEditor.UI2Data;
begin
  if cbbTypeID.ItemIndex <> -1 then
  begin
    with dbFName.DataSource.DataSet do
    begin
      Edit;
      FieldByName('FTypeID').AsString := TSOWrapper(cbbTypeID.Items.Objects[cbbTypeID.ItemIndex]).JsnObject.S['id'];
      Post;
    end;
  end;
end;

end.
