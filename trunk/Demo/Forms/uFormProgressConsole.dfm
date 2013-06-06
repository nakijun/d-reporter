object FormProgressConsole: TFormProgressConsole
  Left = 505
  Top = 306
  BorderStyle = bsSingle
  Caption = #27491#22312#22788#29702#25968#25454'...'
  ClientHeight = 107
  ClientWidth = 582
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lblHint: TLabel
    Left = 8
    Top = 53
    Width = 24
    Height = 13
    Caption = #25552#31034
  end
  object btnBreak: TButton
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Caption = #32456#27490
    TabOrder = 0
    OnClick = btnBreakClick
  end
  object ProgressBar1: TProgressBar
    Left = 8
    Top = 83
    Width = 561
    Height = 16
    TabOrder = 1
  end
end
