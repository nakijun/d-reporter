object frmRMReport: TfrmRMReport
  Left = 0
  Top = 0
  Caption = 'frmRMReport'
  ClientHeight = 135
  ClientWidth = 448
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object rptReport: TRMReport
    ThreadPrepareReport = True
    InitialZoom = pzDefault
    PreviewButtons = [rmpbZoom, rmpbLoad, rmpbSave, rmpbPrint, rmpbFind, rmpbPageSetup, rmpbExit, rmpbExport, rmpbNavigator]
    DefaultCollate = False
    SaveReportOptions.RegistryPath = 'Software\ReportMachine\ReportSettings\'
    PreviewOptions.RulerUnit = rmutScreenPixels
    PreviewOptions.RulerVisible = False
    PreviewOptions.DrawBorder = False
    PreviewOptions.BorderPen.Color = clGray
    PreviewOptions.BorderPen.Style = psDash
    CompressLevel = rmzcFastest
    CompressThread = False
    LaterBuildEvents = True
    OnlyOwnerDataSet = False
    Left = 184
    Top = 16
    ReportData = {}
  end
  object RMGridReport: TRMGridReport
    ThreadPrepareReport = True
    InitialZoom = pzDefault
    PreviewButtons = [rmpbZoom, rmpbLoad, rmpbSave, rmpbPrint, rmpbFind, rmpbPageSetup, rmpbExit, rmpbExport, rmpbNavigator]
    DefaultCollate = False
    SaveReportOptions.RegistryPath = 'Software\ReportMachine\ReportSettings\'
    PreviewOptions.RulerUnit = rmutScreenPixels
    PreviewOptions.RulerVisible = False
    PreviewOptions.DrawBorder = False
    PreviewOptions.BorderPen.Color = clGray
    PreviewOptions.BorderPen.Style = psDash
    CompressLevel = rmzcFastest
    CompressThread = False
    LaterBuildEvents = True
    OnlyOwnerDataSet = False
    Left = 216
    Top = 16
    ReportData = {}
  end
  object RMRichObject1: TRMRichObject
    Left = 48
    Top = 80
  end
  object RMCheckBoxObject1: TRMCheckBoxObject
    Left = 16
    Top = 48
  end
  object RMAngledLabelObject1: TRMAngledLabelObject
    Left = 16
    Top = 16
  end
  object RMCrossObject1: TRMCrossObject
    Left = 48
    Top = 48
  end
  object RMBMPExport1: TRMBMPExport
    ScaleX = 1.000000000000000000
    ScaleY = 1.000000000000000000
    Left = 112
    Top = 16
  end
  object RMJPEGExport1: TRMJPEGExport
    ScaleX = 1.000000000000000000
    ScaleY = 1.000000000000000000
    Left = 16
    Top = 80
  end
  object RMXLSExport1: TRMXLSExport
    ShowAfterExport = True
    ExportPrecision = 1
    PagesOfSheet = 1
    ExportImages = True
    ExportFrames = True
    ExportImageFormat = ifBMP
    JPEGQuality = 0
    ScaleX = 1.000000000000000000
    ScaleY = 1.000000000000000000
    CompressFile = False
    Left = 80
    Top = 80
  end
  object RMBarCodeObject1: TRMBarCodeObject
    Left = 80
    Top = 16
  end
  object RMAsBarCodeObject1: TRMAsBarCodeObject
    Left = 48
    Top = 16
  end
  object RMGridReportDesigner1: TRMGridReportDesigner
    Left = 184
    Top = 48
  end
  object RMDBDataSet1: TRMDBDataSet
    Visible = False
    Left = 248
    Top = 88
  end
  object RMDesigner: TRMDesigner
    DesignerRestrictions = []
    Left = 224
    Top = 48
  end
end
