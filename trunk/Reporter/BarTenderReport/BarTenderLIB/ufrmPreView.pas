unit ufrmPreView;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Contnrs;

type
  TfrmPreView = class(TForm)
    grdPreView: TDrawGrid;
    procedure grdPreViewDrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect;
        State: TGridDrawState);
  private
    { Private declarations }
    FObjectList: TObjectList;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure AddBitmap(pvBitMap:TBitmap);
    procedure PrepareForCreate;
  end;

var
  frmPreView: TfrmPreView;

implementation

uses
  Math;

{$R *.dfm}

procedure TfrmPreView.AddBitmap(pvBitMap: TBitmap);
begin
  FObjectList.Add(pvBitMap);
end;

constructor TfrmPreView.Create(AOwner: TComponent);
begin
  inherited;
  FObjectList := TObjectList.Create(True);
end;

destructor TfrmPreView.Destroy;
begin
  FreeAndNil(FObjectList);
  inherited Destroy;
end;

procedure TfrmPreView.grdPreViewDrawCell(Sender: TObject; ACol, ARow: Integer;
    Rect: TRect; State: TGridDrawState);
var
  lvObjIndex:Integer;
  lvBitMap:TBitMap;
  ACanvas:TCanvas;
  ARect:TRect;
begin
  lvBitMap := nil;
  lvObjIndex := ARow * grdPreView.ColCount + ACol;
  if lvObjIndex <= FObjectList.Count -1 then
  begin
    lvBitMap := TBitmap(FObjectList[lvObjIndex]);
  end;

  ACanvas := grdPreView.Canvas;
  ACanvas.FillRect(Rect);
  if lvBitMap <> nil then
  begin
    ARect.Left   := Rect.Left  + 5;
    ARect.Top    := Rect.Top   + 5;
    ARect.Right  := Rect.Right - 5;
    ARect.Bottom := Rect.Bottom - 5;
    ACanvas.StretchDraw(ARect,lvBitMap);
  end;
end;

procedure TfrmPreView.PrepareForCreate;
begin
  //grdPreView.DefaultRowHeight := 300;
  grdPreView.RowCount := Ceil(FObjectList.Count / (grdPreView.ColCount * 1.00));
end;

end.
