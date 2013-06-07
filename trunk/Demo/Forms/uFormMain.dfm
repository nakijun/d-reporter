object FormMain: TFormMain
  Left = 0
  Top = 0
  Caption = 'FormMain'
  ClientHeight = 456
  ClientWidth = 790
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlOperator: TPanel
    Left = 0
    Top = 0
    Width = 790
    Height = 113
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 376
      Top = 12
      Width = 48
      Height = 13
      Caption = #24403#21069#29992#25143
    end
    object Label2: TLabel
      Left = 128
      Top = 24
      Width = 35
      Height = 13
      Caption = #25253#34920'ID'
    end
    object btnShowConsole: TButton
      Left = 679
      Top = 8
      Width = 100
      Height = 25
      Caption = #26174#31034#25253#34920#25511#21046#21488
      TabOrder = 0
      OnClick = btnShowConsoleClick
    end
    object btnPreView: TButton
      Left = 704
      Top = 39
      Width = 75
      Height = 25
      Caption = #30452#25509#39044#35272
      TabOrder = 1
      OnClick = btnPreViewClick
    end
    object btnDesign: TButton
      Left = 704
      Top = 70
      Width = 75
      Height = 25
      Caption = #30452#25509#35774#35745
      TabOrder = 2
      OnClick = btnDesignClick
    end
    object btnPrint: TButton
      Left = 624
      Top = 72
      Width = 75
      Height = 25
      Caption = #30452#25509#25171#21360
      TabOrder = 3
      OnClick = btnPrintClick
    end
    object chkShowEspecial: TCheckBox
      Left = 576
      Top = 12
      Width = 97
      Height = 17
      Caption = #26174#31034#25935#24863#25253#34920' '
      TabOrder = 4
    end
    object cbbUser: TComboBox
      Left = 430
      Top = 8
      Width = 115
      Height = 21
      ItemIndex = 0
      TabOrder = 5
      Text = #24352#19977
      Items.Strings = (
        #24352#19977
        #26446#22235)
    end
    object chkShowAll: TCheckBox
      Left = 576
      Top = 35
      Width = 97
      Height = 17
      Caption = #26174#31034#25152#26377
      TabOrder = 6
    end
    object btnExport: TBitBtn
      Left = 24
      Top = 70
      Width = 82
      Height = 25
      Caption = #25209#37327#23548#20986#25253#34920
      TabOrder = 7
      OnClick = btnExportClick
    end
    object btnImporter: TButton
      Left = 128
      Top = 70
      Width = 75
      Height = 25
      Caption = #23548#20837#25253#34920
      TabOrder = 8
      OnClick = btnImporterClick
    end
    object edtReportID: TEdit
      Left = 128
      Top = 43
      Width = 121
      Height = 21
      TabOrder = 9
      Text = '1002578'
    end
    object btnPreViewINFrame: TButton
      Left = 456
      Top = 70
      Width = 145
      Height = 25
      Caption = #23558#25253#34920#26174#31034#22312'Frame'#20013
      TabOrder = 10
      OnClick = btnPreViewINFrameClick
    end
    object btnPrintList: TButton
      Left = 337
      Top = 70
      Width = 75
      Height = 25
      Caption = #21015#34920
      TabOrder = 11
    end
    object btn1: TButton
      Left = 256
      Top = 70
      Width = 75
      Height = 25
      Caption = 'btn1'
      TabOrder = 12
      OnClick = btn1Click
    end
  end
  object pgcMain: TPageControl
    Left = 0
    Top = 113
    Width = 790
    Height = 343
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'TabSheet1'
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 782
        Height = 315
        Align = alClient
        DataSource = dsMain
        PopupMenu = PopupMenu1
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'FKey'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FCode'
            Width = 182
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FName'
            Width = 144
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FUpbuildTime'
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'TabSheet2'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
    end
  end
  object dsMain: TDataSource
    DataSet = cdsMain
    Left = 16
    Top = 168
  end
  object cdsMain: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 48
    Top = 168
    Data = {
      7C0000009619E0BD0100000018000000040000000000030000007C0004464B65
      7901004900000001000557494454480200020032000546436F64650100490000
      00010005574944544802000200320005464E616D650100490000000100055749
      4454480200020032000C4655706275696C6454696D6508000800000000000000}
    object cdsMainFKey: TStringField
      FieldName = 'FKey'
      Size = 50
    end
    object cdsMainFCode: TStringField
      DisplayLabel = #32534#21495
      FieldName = 'FCode'
      Size = 50
    end
    object cdsMainFName: TStringField
      DisplayLabel = #21517#31216
      FieldName = 'FName'
      Size = 50
    end
    object cdsMainFUpbuildTime: TDateTimeField
      DisplayLabel = #24314#26723#26102#38388
      FieldName = 'FUpbuildTime'
    end
  end
  object dlgOpen: TOpenDialog
    Options = [ofHideReadOnly, ofAllowMultiSelect, ofEnableSizing]
    Left = 24
    Top = 8
  end
  object PopupMenu1: TPopupMenu
    OnPopup = PopupMenu1Popup
    Left = 248
    Top = 184
  end
end
