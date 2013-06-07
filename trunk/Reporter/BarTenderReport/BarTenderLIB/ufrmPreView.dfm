object frmPreView: TfrmPreView
  Left = 0
  Top = 0
  Caption = #39044#35272
  ClientHeight = 454
  ClientWidth = 570
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object grdPreView: TDrawGrid
    Left = 0
    Top = 0
    Width = 570
    Height = 454
    Align = alClient
    ColCount = 2
    DefaultColWidth = 200
    DefaultRowHeight = 250
    FixedCols = 0
    RowCount = 2
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine]
    ScrollBars = ssVertical
    TabOrder = 0
    OnDrawCell = grdPreViewDrawCell
  end
end
