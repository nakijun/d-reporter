unit BarTender_TLB;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// $Rev: 8291 $
// File generated on 2012-12-22 09:26:18 from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Program Files\Seagull\BarTender Suite\BarTend.exe (1)
// LIBID: {D58562C1-E51B-11CF-8941-00A024A9083F}
// LCID: 0
// Helpfile: 
// HelpString: BarTender 9.40
// DepndLst: 
//   (1) v2.0 stdole, (C:\WINDOWS\system32\stdole2.tlb)
// Errors:
//   Hint: Symbol 'Type' renamed to 'type_'
//   Hint: Member 'Object' of 'IBtVerification' changed to 'Object_'
//   Hint: Member 'Object' of 'DBtVerification' changed to 'Object_'
//   Hint: Symbol 'Type' renamed to 'type_'
//   Hint: Symbol 'Type' renamed to 'type_'
//   Hint: Symbol 'Type' renamed to 'type_'
//   Hint: Symbol 'Type' renamed to 'type_'
//   Hint: Symbol 'Type' renamed to 'type_'
//   Hint: Symbol 'Type' renamed to 'type_'
//   Hint: Symbol 'Type' renamed to 'type_'
//   Hint: Symbol 'Type' renamed to 'type_'
//   Hint: Symbol 'Type' renamed to 'type_'
//   Hint: Symbol 'Type' renamed to 'type_'
// ************************************************************************ //
// *************************************************************************//
// NOTE:                                                                      
// Items guarded by $IFDEF_LIVE_SERVER_AT_DESIGN_TIME are used by properties  
// which return objects that may need to be explicitly created via a function 
// call prior to any access via the property. These items have been disabled  
// in order to prevent accidental use from within the object inspector. You   
// may enable them by defining LIVE_SERVER_AT_DESIGN_TIME or by selectively   
// removing them from the $IFDEF blocks. However, such items must still be    
// programmatically created via a method of the appropriate CoClass before    
// they can be used.                                                          
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
interface

uses Windows, ActiveX, Classes, Graphics, OleServer, StdVCL, Variants;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  BarTenderMajorVersion = 9;
  BarTenderMinorVersion = 40;

  LIBID_BarTender: TGUID = '{D58562C1-E51B-11CF-8941-00A024A9083F}';

  DIID_DBtApplication: TGUID = '{B9425245-4131-11D2-BE48-004005A04EDF}';
  IID_IBtMessages: TGUID = '{365EE8DD-7FBD-44CC-8BCA-FF81E54FDF9B}';
  DIID_DBtMessages: TGUID = '{D0C88217-ACAA-47AB-BC11-29C44ED3E30E}';
  IID_IBtMessage: TGUID = '{2BF8000D-CC13-4810-9B86-4AC64555DE20}';
  DIID_DBtMessage: TGUID = '{1E361CFE-0DD4-4301-8D22-2169976D2DB3}';
  IID_IBtVerification: TGUID = '{99360435-04BF-4470-87D1-558692C111F8}';
  DIID_DBtVerification: TGUID = '{E76149C8-5B9C-4C35-9EC3-053483065BD9}';
  CLASS_Verification: TGUID = '{53B3DAFD-40C6-4BD9-8BA8-213D47BF1B08}';
  CLASS_Message: TGUID = '{B92A100D-DB6B-4631-9E85-E060A349F0CB}';
  CLASS_Messages: TGUID = '{2B52174E-AAA4-443D-945F-568F60610F55}';
  IID_IBtApplication: TGUID = '{75248841-42D0-11D2-B7D3-00104B639F6F}';
  IID_IBtFormat: TGUID = '{A27F12A1-4305-11D2-BE48-004005A04EDF}';
  DIID_DBtFormat: TGUID = '{8786AEA3-17EC-11D1-8AD8-006097D76312}';
  IID_IBtInputDataFileSetup: TGUID = '{66E43562-4379-11D2-B7D3-00104B639F6F}';
  DIID_DBtInputDataFileSetup: TGUID = '{04D2C604-4296-11D2-B7D3-00104B639F6F}';
  IID_IBtTextFile: TGUID = '{66E43564-4379-11D2-B7D3-00104B639F6F}';
  DIID_DBtTextFile: TGUID = '{04D2C607-4296-11D2-B7D3-00104B639F6F}';
  CLASS_TextFile: TGUID = '{66E43565-4379-11D2-B7D3-00104B639F6F}';
  IID_IBtODBC: TGUID = '{66E43566-4379-11D2-B7D3-00104B639F6F}';
  DIID_DBtODBC: TGUID = '{04D2C60A-4296-11D2-B7D3-00104B639F6F}';
  CLASS_ODBC: TGUID = '{66E43567-4379-11D2-B7D3-00104B639F6F}';
  IID_IBtOLEDB: TGUID = '{17E5C0F9-FDBE-4658-B0A0-A76BD4154A81}';
  DIID_DBtOLEDB: TGUID = '{8C1DF6E3-F044-43AF-880F-8DF7DEA1DBF5}';
  CLASS_OLEDB: TGUID = '{96B21C3E-8292-4D6B-B1D1-C1243B31B40A}';
  CLASS_InputDataFileSetup: TGUID = '{66E43563-4379-11D2-B7D3-00104B639F6F}';
  IID_IBtNamedSubStrings: TGUID = '{66E43568-4379-11D2-B7D3-00104B639F6F}';
  DIID_DBtNamedSubStrings: TGUID = '{994E4DC0-6CE6-11D3-A885-005004A506ED}';
  IID_IBtSubString: TGUID = '{6B6C8EE4-6CEA-11D3-A885-005004A506ED}';
  DIID_DBtSubString: TGUID = '{994E4DF0-6CE6-11D3-A885-005004A506ED}';
  CLASS_SubString: TGUID = '{6B6C8EEA-6CEA-11D3-A885-005004A506ED}';
  CLASS_NamedSubStrings: TGUID = '{994E4DE6-6CE6-11D3-A885-005004A506ED}';
  IID_IBtDatabases: TGUID = '{46ECE465-6C20-11D3-9CA5-00104B9C1746}';
  DIID_DBtDatabases: TGUID = '{46ECE464-6C20-11D3-9CA5-00104B9C1746}';
  IID_IBtQueryPrompts: TGUID = '{46ECE46B-6C20-11D3-9CA5-00104B9C1746}';
  DIID_DBtQueryPrompts: TGUID = '{46ECE46A-6C20-11D3-9CA5-00104B9C1746}';
  IID_IBtQueryPrompt: TGUID = '{46ECE468-6C20-11D3-9CA5-00104B9C1746}';
  DIID_DBtQueryPrompt: TGUID = '{46ECE467-6C20-11D3-9CA5-00104B9C1746}';
  CLASS_QueryPrompt: TGUID = '{46ECE469-6C20-11D3-9CA5-00104B9C1746}';
  CLASS_QueryPrompts: TGUID = '{46ECE46C-6C20-11D3-9CA5-00104B9C1746}';
  IID_IBtDatabase: TGUID = '{46ECE462-6C20-11D3-9CA5-00104B9C1746}';
  DIID_DBtDatabase: TGUID = '{46ECE461-6C20-11D3-9CA5-00104B9C1746}';
  IID_IBtSAPIDoc: TGUID = '{C79DBC2D-F4D6-4D55-9BE3-3E1A662F770B}';
  DIID_DBtSAPIDoc: TGUID = '{3B0427E2-DBF6-4AAB-AC77-0380C5C6727F}';
  CLASS_SAPIDoc: TGUID = '{EF739128-7EEF-4A81-A605-9AEB394447E5}';
  CLASS_Database: TGUID = '{46ECE463-6C20-11D3-9CA5-00104B9C1746}';
  CLASS_Databases: TGUID = '{46ECE466-6C20-11D3-9CA5-00104B9C1746}';
  IID_IBtPageSetup: TGUID = '{6BF825B8-825A-4986-B4D4-F134112C1F97}';
  DIID_DBtPageSetup: TGUID = '{62524E94-C8C9-4CF9-8403-9897381DEE95}';
  IID_IBtMediaHandling: TGUID = '{D21AED41-7F63-4572-9976-EC506FCEBC19}';
  DIID_DBtMediaHandling: TGUID = '{DA43F695-C68E-4CD5-8675-03181F4281E5}';
  CLASS_MediaHandling: TGUID = '{60FDF864-690D-4A9C-AA1F-2E425D443A20}';
  CLASS_PageSetup: TGUID = '{E14DA2FD-FE02-4F97-8FAB-CA13A843BBC7}';
  IID_IBtPrintSetup: TGUID = '{C35295CA-7A00-4FDC-8A24-D9C680E82CF0}';
  DIID_DBtPrintSetup: TGUID = '{7C88C498-363B-40D1-91EE-F970653E4C7E}';
  IID_IBtPerformance: TGUID = '{F3FE3E31-4D1C-4F8E-94DC-FF6255AFB087}';
  DIID_DBtPerformance: TGUID = '{E398EB62-3AEA-4C41-9674-9BEE973F3377}';
  CLASS_Performance: TGUID = '{12901A36-3FC4-47EF-AFD1-DFA28B3D682F}';
  IID_IBtCache: TGUID = '{60F959CD-13EB-4C72-8BD2-787EA11A0435}';
  DIID_DBtCache: TGUID = '{491AB5A2-F834-480B-9164-278D6A5DC9BB}';
  CLASS_Cache: TGUID = '{719965FA-B641-451D-9993-6444347143F0}';
  IID_IBtPrintMethod: TGUID = '{234D7F41-F5CF-47F9-A7F1-4DCAD70E105A}';
  DIID_DBtPrintMethod: TGUID = '{F0461615-1F0E-40FF-A637-286050B51366}';
  CLASS_PrintMethod: TGUID = '{91272843-3F28-40F0-AF76-EAF978A88C1F}';
  CLASS_PrintSetup: TGUID = '{08D6D766-E4D3-44C1-ADFC-06625ED82171}';
  IID_IBtPrinterCodeTemplate: TGUID = '{022288E5-B441-4002-A531-F102F2999505}';
  DIID_DBtPrinterCodeTemplate: TGUID = '{B1FE2B7F-7E02-4C3F-BABF-0B9EF28AFCF8}';
  IID_IBtJob: TGUID = '{3E062404-47D8-41BC-86D8-664471F63602}';
  DIID_DBtJob: TGUID = '{53C11C77-97F9-4E5D-8BA7-83B65D26B473}';
  CLASS_Job: TGUID = '{EFBC649C-ACC4-4AD4-A874-D1E5A4317E5B}';
  CLASS_PrinterCodeTemplate: TGUID = '{60E6ADEE-2610-4630-BB2F-D15DA06824E0}';
  IID_IBtDesignObjects: TGUID = '{8C28D1E8-6056-4EC8-8AE6-4265D198A5A5}';
  DIID_DBtDesignObjects: TGUID = '{87F92F53-9EFC-4D32-83A6-E371E9CB222A}';
  IID_IBtDesignObject: TGUID = '{8FC5B386-0AFC-469D-AAA5-3F0E3BC26367}';
  DIID_DBtDesignObject: TGUID = '{4FAD1843-63DC-4275-A5B6-D49B58CEB101}';
  CLASS_DesignObject: TGUID = '{4E1FBDB7-107F-4920-83D7-5CA8C967B807}';
  CLASS_DesignObjects: TGUID = '{E28376ED-DD3D-42A8-997A-1D2CC034C48E}';
  IID_IBtViewRecordNavigator: TGUID = '{30B7D99D-A6D0-4D57-BBF4-593E5C613E8C}';
  DIID_DBtViewRecordNavigator: TGUID = '{BCC3D373-D9EE-4C45-8FA3-A41CFCC12D79}';
  CLASS_ViewRecordNavigator: TGUID = '{8ECBBFA0-171E-4E09-ADAB-6B4AD9DDB517}';
  DIID_IFormatEvents: TGUID = '{2A91A78A-AE85-11DC-A4C8-B30156D89593}';
  CLASS_Format: TGUID = '{8786AEA4-17EC-11D1-8AD8-006097D76312}';
  IID_IBtFormats: TGUID = '{66E43561-4379-11D2-B7D3-00104B639F6F}';
  DIID_DBtFormats: TGUID = '{EF2F3EA1-4147-11D2-BE48-004005A04EDF}';
  CLASS_Formats: TGUID = '{EF2F3EA3-4147-11D2-BE48-004005A04EDF}';
  IID_IBtWindow: TGUID = '{66E4356B-4379-11D2-B7D3-00104B639F6F}';
  DIID_DBtWindow: TGUID = '{66E4356A-4379-11D2-B7D3-00104B639F6F}';
  CLASS_Window: TGUID = '{66E4356C-4379-11D2-B7D3-00104B639F6F}';
  IID_IBtLicenseServer: TGUID = '{AC955B42-36D1-4AE9-894E-FE1C693CF07C}';
  DIID_DBtLicenseServer: TGUID = '{8C708F07-9199-4CE9-A1CC-312616D0B9BD}';
  CLASS_LicenseServer: TGUID = '{D095F6A7-EA20-457F-A353-5DBAF9CA3892}';
  DIID_IApplicationEvents: TGUID = '{F057BB82-74E7-4174-9ECE-DCBDA33CCD2C}';
  CLASS_Application: TGUID = '{B9425246-4131-11D2-BE48-004005A04EDF}';
  DIID_IScreenDs: TGUID = '{0C36B111-18CA-11D1-8AD9-006097D76312}';
  CLASS_ScreenDataSubString: TGUID = '{0C36B112-18CA-11D1-8AD9-006097D76312}';
  DIID_ITemplateFieldDs: TGUID = '{D7474543-9FA9-4A25-8410-7972143FA813}';
  CLASS_TemplateFieldSubString: TGUID = '{C48691A0-4A1F-4B18-8810-6AF7E39FA1EA}';
  DIID_ILabelObjectDs: TGUID = '{AEE1630E-3FD0-45B9-9ECF-E8E2990BAC0F}';
  CLASS_LabelObjectSubString: TGUID = '{8499C9F2-83F7-424D-8EEE-3F912241B4E0}';

// *********************************************************************//
// Declaration of Enumerations defined in Type Library                    
// *********************************************************************//
// Constants for enum BtVersion
type
  BtVersion = TOleEnum;
const
  btLatest = $00000000;
  bt610 = $00000262;
  bt620 = $0000026C;
  bt700 = $000002BC;
  bt710 = $000002C6;
  bt750 = $000002EE;
  bt770 = $00000302;
  bt772 = $00000304;
  bt773 = $00000305;
  bt774 = $00000306;
  bt775 = $00000307;
  bt800 = $00000320;
  bt801 = $00000321;
  bt901 = $00000385;
  bt910 = $0000038E;
  bt920 = $00000398;
  bt921 = $00000399;
  bt930 = $000003A2;
  bt940 = $000003AC;

// Constants for enum BtSaveOptions
type
  BtSaveOptions = TOleEnum;
const
  btPromptSave = $00000000;
  btDoNotSaveChanges = $00000001;
  btSaveChanges = $00000002;

// Constants for enum BtInputDataFile
type
  BtInputDataFile = TOleEnum;
const
  btTextFile = $00000000;
  btODBC = $00000001;
  btSAPIDoc = $00000002;
  btOLEDB = $00000003;

// Constants for enum BtTextFileDelimitation
type
  BtTextFileDelimitation = TOleEnum;
const
  btDelimMixedQuoteAndComma = $00000000;
  btDelimQuoteAndComma = $00000001;
  btDelimComma = $00000002;
  btDelimTab = $00000003;
  btDelimCustom = $00000004;

// Constants for enum BtWindowState
type
  BtWindowState = TOleEnum;
const
  btNormal = $00000000;
  btMaximize = $00000001;
  btMinimize = $00000002;

// Constants for enum BtSubStringType
type
  BtSubStringType = TOleEnum;
const
  btSubStringScreenData = $00000000;
  btSubStringDate = $00000001;
  btSubStringTime = $00000002;
  btSubStringVBScript = $00000003;
  btSubStringDatabase = $00000004;
  btSubStringDiskWizard = $00000005;
  btSubStringTemplateField = $00000006;
  btSubStringLabelObject = $00000007;

// Constants for enum BtObjectType
type
  BtObjectType = TOleEnum;
const
  btObjectError = $FFFFFFFF;
  btObjectLine = $00000002;
  btObjectBox = $00000003;
  btObjectBarcode = $00000004;
  btObjectText = $00000005;
  btObjectPicture = $00000006;
  btObjectRFID = $00000007;
  btObjectEllipse = $00000008;
  btObjectRichText = $00000009;

// Constants for enum BtColors
type
  BtColors = TOleEnum;
const
  btColorsMono = $00000000;
  btColors16 = $00000001;
  btColors256 = $00000002;
  btColors24Bit = $00000004;

// Constants for enum BtResolution
type
  BtResolution = TOleEnum;
const
  btResolutionScreen = $00000000;
  btResolutionPrinter = $00000001;

// Constants for enum BtShape
type
  BtShape = TOleEnum;
const
  btSquare = $00000001;
  btRectangle = $00000002;
  btRound = $00000003;
  btEllipse = $00000004;

// Constants for enum BtUnits
type
  BtUnits = TOleEnum;
const
  btUnitsCurrent = $00000000;
  btUnitsInches = $00000001;
  btUnitsCentimeters = $00000002;
  btUnitsMillimeters = $00000003;

// Constants for enum BtOrientation
type
  BtOrientation = TOleEnum;
const
  btPortrait = $00000000;
  btLandscape = $00000001;
  btPortrait180 = $00000002;
  btLandscape180 = $00000003;

// Constants for enum BtTextPrintMethod
type
  BtTextPrintMethod = TOleEnum;
const
  btTextRasterGraphics = $00000000;
  btTextOutput = $00000001;

// Constants for enum BtBarCodePrintMethod
type
  BtBarCodePrintMethod = TOleEnum;
const
  btBarCodeRasterGraphics = $00000000;
  btBarCodeDeviceLines = $00000001;
  btBarCodeAuto = $00000002;

// Constants for enum BtLinePrintMethod
type
  BtLinePrintMethod = TOleEnum;
const
  btLineRasterGraphics = $00000000;
  btLineDeviceLines = $00000001;
  btLineAuto = $00000002;

// Constants for enum BtBoxPrintMethod
type
  BtBoxPrintMethod = TOleEnum;
const
  btBoxRasterGraphics = $00000000;
  btBoxDeviceLines = $00000001;
  btBoxDeviceBox = $00000002;
  btBoxAuto = $00000003;

// Constants for enum BtCacheFlushInterval
type
  BtCacheFlushInterval = TOleEnum;
const
  btCacheFlushPerSession = $00000000;
  btCacheFlushDaily = $00000001;
  btCacheFlushWeekly = $00000002;
  btCacheFlushMonthly = $00000003;
  btCacheFlushNever = $00000004;

// Constants for enum BtFormatIdValueType
type
  BtFormatIdValueType = TOleEnum;
const
  btFormatIdConstant = $00000000;
  btFormatIdFromTemplateField = $00000001;
  btFormatIdSetByDriver = $00000002;
  btFormatIdNotSupported = $00000003;

// Constants for enum BtPrinterCopiesValueType
type
  BtPrinterCopiesValueType = TOleEnum;
const
  btPrinterCopiesConstant = $00000000;
  btPrinterCopiesFromTemplateField = $00000001;
  btPrinterCopiesFromPrintDialogCopies = $00000002;
  btPrinterCopiesNotSupported = $00000003;

// Constants for enum BtPrinterSerializedCopiesValueType
type
  BtPrinterSerializedCopiesValueType = TOleEnum;
const
  btPrinterSerializedCopiesConstant = $00000000;
  btPrinterSerializedCopiesFromTemplateField = $00000001;
  btPrinterSerializedCopiesFromPrintDialogCopies = $00000002;
  btPrinterSerializedCopiesNotSupported = $00000003;

// Constants for enum BtPrinterBatchCopiesValueType
type
  BtPrinterBatchCopiesValueType = TOleEnum;
const
  btPrinterBatchCopiesConstant = $00000000;
  btPrinterBatchCopiesFromTemplateField = $00000001;
  btPrinterBatchCopiesFromPrintDialogCopies = $00000002;
  btPrinterBatchCopiesNotSupported = $00000003;

// Constants for enum BtMsgType
type
  BtMsgType = TOleEnum;
const
  btMsgTypeMiscellaneous = $00000000;
  btMsgTypeVBScripting = $00000001;
  btMsgTypePrinter = $00000002;
  btMsgTypeDatabase = $00000003;
  btMsgTypeFile = $00000004;
  btMsgTypeCommandLine = $00000005;
  btMsgTypeNetworkTrace = $00000006;
  btMsgTypeLicensing = $00000007;
  btMsgTypeEmail = $00000008;
  btMsgTypeService = $00000009;
  btMsgTypeVerification = $0000000A;
  btMsgTypeAutomation = $0000000B;
  btMsgTypeXMLScript = $0000000C;
  btMsgTypeCluster = $0000000D;
  btMsgTypeLogToDatabase = $0000000E;
  btMsgTypePrinting = $0000000F;

// Constants for enum BtMsgSeverity
type
  BtMsgSeverity = TOleEnum;
const
  btMsgSeverityInformation = $00000000;
  btMsgSeverityWarning = $00000001;
  btMsgSeverityError = $00000002;

// Constants for enum BtPctExportType
type
  BtPctExportType = TOleEnum;
const
  btPctExportSeparate = $00000000;
  btPctExportCombined = $00000001;
  btPctExportToPort = $00000002;

// Constants for enum BtNameType
type
  BtNameType = TOleEnum;
const
  btUsedNamedSubStrings = $00000000;
  btUsedDatabaseFields = $00000001;
  btUsedTemplateFields = $00000002;

// Constants for enum BtUsedNamesSampleDataType
type
  BtUsedNamesSampleDataType = TOleEnum;
const
  btUsedDatabaseFieldsSampleData = $00000000;

// Constants for enum BtEllipsePrintMethod
type
  BtEllipsePrintMethod = TOleEnum;
const
  btEllipseRasterGraphics = $00000000;
  btEllipseDevice = $00000001;
  btEllipseAuto = $00000002;

// Constants for enum BtMediaHandlingAction
type
  BtMediaHandlingAction = TOleEnum;
const
  btMHDriverSettings = $00000000;
  btMHPageBreak = $00000001;
  btMHPause = $00000002;
  btMHWaitForLabelTakenSensor = $00000003;
  btMHCut = $00000004;
  btMHCutAndPause = $00000005;
  btMHPartialCut = $00000006;
  btMHPartialCutAndPause = $00000007;

// Constants for enum BtMediaHandlingOccurrence
type
  BtMediaHandlingOccurrence = TOleEnum;
const
  btMHAtEndOfPrintJob = $00000000;
  btMHAfterEveryPage = $00000001;
  btMHAfterEveryRecord = $00000002;
  btMHAfterIdenticalCopies = $00000003;
  btMHAfterDataChange = $00000004;
  btMHAfterNumberOfLabels = $00000005;

// Constants for enum BtMediaHandlingDataItemType
type
  BtMediaHandlingDataItemType = TOleEnum;
const
  btMHDatabaseField = $00000000;
  btMHNamedSubstring = $00000001;
  btMHNamedObject = $00000002;

// Constants for enum BtPctExportVersion
type
  BtPctExportVersion = TOleEnum;
const
  btPctExportVersion773AndEarlier = $00000000;
  btPctExportVersionCurrent = $00000001;

// Constants for enum BtXMLSourceType
type
  BtXMLSourceType = TOleEnum;
const
  btXMLScriptString = $00000000;
  btXMLScriptFile = $00000001;

// Constants for enum BtPrintResult
type
  BtPrintResult = TOleEnum;
const
  btSuccess = $00000000;
  btTimeout = $00000001;
  btFailure = $00000002;

// Constants for enum BtVisibleWindows
type
  BtVisibleWindows = TOleEnum;
const
  btNone = $00000000;
  btAll = $00000001;
  btInteractiveDialogs = $00000002;
  btStartingLabelDialogOnly = $00000003;

// Constants for enum BtFontWeight
type
  BtFontWeight = TOleEnum;
const
  btFontWeightThin = $00000064;
  btFontWeightExtraLight = $000000C8;
  btFontWeightLight = $0000012C;
  btFontWeightNormal = $00000190;
  btFontWeightMedium = $000001F4;
  btFontWeightSemiBold = $00000258;
  btFontWeightBold = $000002BC;
  btFontWeightExtraBold = $00000320;
  btFontWeightHeavy = $00000384;

// Constants for enum BtFontScript
type
  BtFontScript = TOleEnum;
const
  btFontScriptArabic = $000000B2;
  btFontScriptBaltic = $000000BA;
  btFontScriptCentralEurope = $000000EE;
  btFontScriptChineseGB2312 = $00000086;
  btFontScriptChineseBig5 = $00000088;
  btFontScriptCyrillic = $000000CC;
  btFontScriptGreek = $000000A1;
  btFontScriptHebrew = $000000B1;
  btFontScriptJapanese = $00000080;
  btFontScriptKoreanHangul = $00000081;
  btFontScriptKoreanJohab = $00000082;
  btFontScriptMac = $0000004D;
  btFontScriptOEM = $000000FF;
  btFontScriptSymbol = $00000002;
  btFontScriptThai = $000000DE;
  btFontScriptTurkish = $000000A2;
  btFontScriptVietnamese = $000000A3;
  btFontScriptWestern = $00000000;

type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  DBtApplication = dispinterface;
  IBtMessages = interface;
  IBtMessagesDisp = dispinterface;
  DBtMessages = dispinterface;
  IBtMessage = interface;
  IBtMessageDisp = dispinterface;
  DBtMessage = dispinterface;
  IBtVerification = interface;
  IBtVerificationDisp = dispinterface;
  DBtVerification = dispinterface;
  IBtApplication = interface;
  IBtApplicationDisp = dispinterface;
  IBtFormat = interface;
  IBtFormatDisp = dispinterface;
  DBtFormat = dispinterface;
  IBtInputDataFileSetup = interface;
  IBtInputDataFileSetupDisp = dispinterface;
  DBtInputDataFileSetup = dispinterface;
  IBtTextFile = interface;
  IBtTextFileDisp = dispinterface;
  DBtTextFile = dispinterface;
  IBtODBC = interface;
  IBtODBCDisp = dispinterface;
  DBtODBC = dispinterface;
  IBtOLEDB = interface;
  IBtOLEDBDisp = dispinterface;
  DBtOLEDB = dispinterface;
  IBtNamedSubStrings = interface;
  IBtNamedSubStringsDisp = dispinterface;
  DBtNamedSubStrings = dispinterface;
  IBtSubString = interface;
  IBtSubStringDisp = dispinterface;
  DBtSubString = dispinterface;
  IBtDatabases = interface;
  IBtDatabasesDisp = dispinterface;
  DBtDatabases = dispinterface;
  IBtQueryPrompts = interface;
  IBtQueryPromptsDisp = dispinterface;
  DBtQueryPrompts = dispinterface;
  IBtQueryPrompt = interface;
  IBtQueryPromptDisp = dispinterface;
  DBtQueryPrompt = dispinterface;
  IBtDatabase = interface;
  IBtDatabaseDisp = dispinterface;
  DBtDatabase = dispinterface;
  IBtSAPIDoc = interface;
  IBtSAPIDocDisp = dispinterface;
  DBtSAPIDoc = dispinterface;
  IBtPageSetup = interface;
  IBtPageSetupDisp = dispinterface;
  DBtPageSetup = dispinterface;
  IBtMediaHandling = interface;
  IBtMediaHandlingDisp = dispinterface;
  DBtMediaHandling = dispinterface;
  IBtPrintSetup = interface;
  IBtPrintSetupDisp = dispinterface;
  DBtPrintSetup = dispinterface;
  IBtPerformance = interface;
  IBtPerformanceDisp = dispinterface;
  DBtPerformance = dispinterface;
  IBtCache = interface;
  IBtCacheDisp = dispinterface;
  DBtCache = dispinterface;
  IBtPrintMethod = interface;
  IBtPrintMethodDisp = dispinterface;
  DBtPrintMethod = dispinterface;
  IBtPrinterCodeTemplate = interface;
  IBtPrinterCodeTemplateDisp = dispinterface;
  DBtPrinterCodeTemplate = dispinterface;
  IBtJob = interface;
  IBtJobDisp = dispinterface;
  DBtJob = dispinterface;
  IBtDesignObjects = interface;
  IBtDesignObjectsDisp = dispinterface;
  DBtDesignObjects = dispinterface;
  IBtDesignObject = interface;
  IBtDesignObjectDisp = dispinterface;
  DBtDesignObject = dispinterface;
  IBtViewRecordNavigator = interface;
  IBtViewRecordNavigatorDisp = dispinterface;
  DBtViewRecordNavigator = dispinterface;
  IFormatEvents = dispinterface;
  IBtFormats = interface;
  IBtFormatsDisp = dispinterface;
  DBtFormats = dispinterface;
  IBtWindow = interface;
  IBtWindowDisp = dispinterface;
  DBtWindow = dispinterface;
  IBtLicenseServer = interface;
  IBtLicenseServerDisp = dispinterface;
  DBtLicenseServer = dispinterface;
  IApplicationEvents = dispinterface;
  IScreenDs = dispinterface;
  ITemplateFieldDs = dispinterface;
  ILabelObjectDs = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  Verification = IBtVerification;
  Message = IBtMessage;
  Messages = IBtMessages;
  TextFile = IBtTextFile;
  ODBC = IBtODBC;
  OLEDB = IBtOLEDB;
  InputDataFileSetup = IBtInputDataFileSetup;
  SubString = IBtSubString;
  NamedSubStrings = IBtNamedSubStrings;
  QueryPrompt = IBtQueryPrompt;
  QueryPrompts = IBtQueryPrompts;
  SAPIDoc = IBtSAPIDoc;
  Database = IBtDatabase;
  Databases = IBtDatabases;
  MediaHandling = IBtMediaHandling;
  PageSetup = IBtPageSetup;
  Performance = IBtPerformance;
  Cache = IBtCache;
  PrintMethod = IBtPrintMethod;
  PrintSetup = IBtPrintSetup;
  Job = IBtJob;
  PrinterCodeTemplate = IBtPrinterCodeTemplate;
  DesignObject = IBtDesignObject;
  DesignObjects = IBtDesignObjects;
  ViewRecordNavigator = IBtViewRecordNavigator;
  Format = IBtFormat;
  Formats = IBtFormats;
  Window = IBtWindow;
  LicenseServer = IBtLicenseServer;
  BarTenderApplication = IBtApplication;
  ScreenDataSubString = IScreenDs;
  TemplateFieldSubString = ITemplateFieldDs;
  LabelObjectSubString = ILabelObjectDs;


// *********************************************************************//
// Declaration of structures, unions and aliases.                         
// *********************************************************************//
  POleVariant1 = ^OleVariant; {*}
  PPUserType1 = ^Messages; {*}


// *********************************************************************//
// DispIntf:  DBtApplication
// Flags:     (4112) Hidden Dispatchable
// GUID:      {B9425245-4131-11D2-BE48-004005A04EDF}
// *********************************************************************//
  DBtApplication = dispinterface
    ['{B9425245-4131-11D2-BE48-004005A04EDF}']
    function XMLScript(const XMLScript: WideString; SourceType: BtXMLSourceType; 
                       out Messages: Messages): WideString; dispid 17;
    procedure CommandLine(const CommandLine: WideString); dispid 11;
    procedure Save(prompt: WordBool); dispid 10;
    procedure Quit(SaveChanges: BtSaveOptions); dispid 9;
    property BuildNumber: Integer dispid 2;
    property SAPIDocDefinitionFile: WideString dispid 12;
    property Formats: IDispatch dispid 3;
    property ActiveFormat: IDispatch dispid 1;
    property Version: WideString dispid 6;
    property Visible: WordBool dispid 7;
    property LicenseServer: IDispatch dispid 13;
    property Window: IDispatch dispid 8;
    property Edition: WideString dispid 20;
    property FullVersion: WideString dispid 26;
    property TopMost: WordBool dispid 23;
    property VisibleWindows: BtVisibleWindows dispid 22;
    property IsPrinting: WordBool dispid 4;
    property IsProcessingCommandLines: WordBool dispid 5;
    property ProcessId: Integer dispid 25;
    property ParentWindow: SYSUINT dispid 24;
  end;

// *********************************************************************//
// Interface: IBtMessages
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {365EE8DD-7FBD-44CC-8BCA-FF81E54FDF9B}
// *********************************************************************//
  IBtMessages = interface(IDispatch)
    ['{365EE8DD-7FBD-44CC-8BCA-FF81E54FDF9B}']
    function Get_Count: Integer; safecall;
    function Item(var Index: OleVariant): Message; safecall;
    function Get_NewEnum: IUnknown; safecall;
    function GetMessage(Index: OleVariant): Message; safecall;
    property Count: Integer read Get_Count;
    property NewEnum: IUnknown read Get_NewEnum;
  end;

// *********************************************************************//
// DispIntf:  IBtMessagesDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {365EE8DD-7FBD-44CC-8BCA-FF81E54FDF9B}
// *********************************************************************//
  IBtMessagesDisp = dispinterface
    ['{365EE8DD-7FBD-44CC-8BCA-FF81E54FDF9B}']
    property Count: Integer readonly dispid 1;
    function Item(var Index: OleVariant): Message; dispid 3;
    property NewEnum: IUnknown readonly dispid -4;
    function GetMessage(Index: OleVariant): Message; dispid 4;
  end;

// *********************************************************************//
// DispIntf:  DBtMessages
// Flags:     (4112) Hidden Dispatchable
// GUID:      {D0C88217-ACAA-47AB-BC11-29C44ED3E30E}
// *********************************************************************//
  DBtMessages = dispinterface
    ['{D0C88217-ACAA-47AB-BC11-29C44ED3E30E}']
    function GetMessage(Index: OleVariant): IDispatch; dispid 4;
    function Item(var Index: OleVariant): IDispatch; dispid 3;
    property NewEnum: IUnknown dispid -4;
    property Count: Integer dispid 1;
  end;

// *********************************************************************//
// Interface: IBtMessage
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2BF8000D-CC13-4810-9B86-4AC64555DE20}
// *********************************************************************//
  IBtMessage = interface(IDispatch)
    ['{2BF8000D-CC13-4810-9B86-4AC64555DE20}']
    function Get_Number: Integer; safecall;
    function Get_type_: BtMsgType; safecall;
    function Get_Severity: BtMsgSeverity; safecall;
    function Get_Message: WideString; safecall;
    function Get_Verification: Verification; safecall;
    function Get_TypeText: WideString; safecall;
    property Number: Integer read Get_Number;
    property type_: BtMsgType read Get_type_;
    property Severity: BtMsgSeverity read Get_Severity;
    property Message: WideString read Get_Message;
    property Verification: Verification read Get_Verification;
    property TypeText: WideString read Get_TypeText;
  end;

// *********************************************************************//
// DispIntf:  IBtMessageDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2BF8000D-CC13-4810-9B86-4AC64555DE20}
// *********************************************************************//
  IBtMessageDisp = dispinterface
    ['{2BF8000D-CC13-4810-9B86-4AC64555DE20}']
    property Number: Integer readonly dispid 1;
    property type_: BtMsgType readonly dispid 2;
    property Severity: BtMsgSeverity readonly dispid 3;
    property Message: WideString readonly dispid 4;
    property Verification: Verification readonly dispid 5;
    property TypeText: WideString readonly dispid 6;
  end;

// *********************************************************************//
// DispIntf:  DBtMessage
// Flags:     (4112) Hidden Dispatchable
// GUID:      {1E361CFE-0DD4-4301-8D22-2169976D2DB3}
// *********************************************************************//
  DBtMessage = dispinterface
    ['{1E361CFE-0DD4-4301-8D22-2169976D2DB3}']
    property NumNumber: Integer dispid 1;
    property type_: BtMsgType dispid 2;
    property Severity: BtMsgSeverity dispid 3;
    property Message: WideString dispid 4;
    property Verification: IDispatch dispid 5;
    property TypeText: WideString dispid 6;
  end;

// *********************************************************************//
// Interface: IBtVerification
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {99360435-04BF-4470-87D1-558692C111F8}
// *********************************************************************//
  IBtVerification = interface(IDispatch)
    ['{99360435-04BF-4470-87D1-558692C111F8}']
    function Get_Object_: WideString; safecall;
    function Get_Fields: WideString; safecall;
    function Get_Problem: WideString; safecall;
    function Get_Result: WideString; safecall;
    function Get_AutoFix: WideString; safecall;
    property Object_: WideString read Get_Object_;
    property Fields: WideString read Get_Fields;
    property Problem: WideString read Get_Problem;
    property Result: WideString read Get_Result;
    property AutoFix: WideString read Get_AutoFix;
  end;

// *********************************************************************//
// DispIntf:  IBtVerificationDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {99360435-04BF-4470-87D1-558692C111F8}
// *********************************************************************//
  IBtVerificationDisp = dispinterface
    ['{99360435-04BF-4470-87D1-558692C111F8}']
    property Object_: WideString readonly dispid 1;
    property Fields: WideString readonly dispid 2;
    property Problem: WideString readonly dispid 3;
    property Result: WideString readonly dispid 4;
    property AutoFix: WideString readonly dispid 5;
  end;

// *********************************************************************//
// DispIntf:  DBtVerification
// Flags:     (4112) Hidden Dispatchable
// GUID:      {E76149C8-5B9C-4C35-9EC3-053483065BD9}
// *********************************************************************//
  DBtVerification = dispinterface
    ['{E76149C8-5B9C-4C35-9EC3-053483065BD9}']
    property Object_: WideString dispid 1;
    property Fields: WideString dispid 2;
    property Problem: WideString dispid 3;
    property Result: WideString dispid 4;
    property AutoFix: WideString dispid 5;
  end;

// *********************************************************************//
// Interface: IBtApplication
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {75248841-42D0-11D2-B7D3-00104B639F6F}
// *********************************************************************//
  IBtApplication = interface(IDispatch)
    ['{75248841-42D0-11D2-B7D3-00104B639F6F}']
    function Get_ActiveFormat: Format; safecall;
    function Get_BuildNumber: Integer; safecall;
    function Get_Formats: Formats; safecall;
    function Get_IsPrinting: WordBool; safecall;
    function Get_IsProcessingCommandLines: WordBool; safecall;
    function Get_Version: WideString; safecall;
    procedure Set_Visible(retval: WordBool); safecall;
    function Get_Visible: WordBool; safecall;
    function Get_Window: Window; safecall;
    procedure Quit(SaveChanges: BtSaveOptions); safecall;
    procedure Save(DoPrompt: WordBool); safecall;
    procedure Set_SAPIDocDefinitionFile(const retval: WideString); safecall;
    function Get_SAPIDocDefinitionFile: WideString; safecall;
    procedure CommandLine(const CommandLine: WideString); safecall;
    function Get_LicenseServer: LicenseServer; safecall;
    function XMLScript(const XMLScript: WideString; SourceType: BtXMLSourceType; 
                       out Messages: Messages): WideString; safecall;
    function Get_Edition: WideString; safecall;
    procedure Set_VisibleWindows(retval: BtVisibleWindows); safecall;
    function Get_VisibleWindows: BtVisibleWindows; safecall;
    procedure Set_TopMost(retval: WordBool); safecall;
    function Get_TopMost: WordBool; safecall;
    procedure Set_ParentWindow(retval: SYSUINT); safecall;
    function Get_ParentWindow: SYSUINT; safecall;
    function Get_ProcessId: Integer; safecall;
    function Get_FullVersion: WideString; safecall;
    function SpecifyPrintOnlyPassword(const Password: WideString): WordBool; safecall;
    procedure AdministerMessageSetup; safecall;
    procedure AdministerAlertSetup; safecall;
    procedure AdministerLogSetup; safecall;
    function Private_SetSharedMemory(const sharedMemoryName: WideString): LongWord; safecall;
    procedure Private_QueueCommandLine(const CommandLine: WideString; cmdId: Largeuint); safecall;
    property ActiveFormat: Format read Get_ActiveFormat;
    property BuildNumber: Integer read Get_BuildNumber;
    property Formats: Formats read Get_Formats;
    property IsPrinting: WordBool read Get_IsPrinting;
    property IsProcessingCommandLines: WordBool read Get_IsProcessingCommandLines;
    property Version: WideString read Get_Version;
    property Visible: WordBool read Get_Visible write Set_Visible;
    property Window: Window read Get_Window;
    property SAPIDocDefinitionFile: WideString read Get_SAPIDocDefinitionFile write Set_SAPIDocDefinitionFile;
    property LicenseServer: LicenseServer read Get_LicenseServer;
    property Edition: WideString read Get_Edition;
    property VisibleWindows: BtVisibleWindows read Get_VisibleWindows write Set_VisibleWindows;
    property TopMost: WordBool read Get_TopMost write Set_TopMost;
    property ParentWindow: SYSUINT read Get_ParentWindow write Set_ParentWindow;
    property ProcessId: Integer read Get_ProcessId;
    property FullVersion: WideString read Get_FullVersion;
  end;

// *********************************************************************//
// DispIntf:  IBtApplicationDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {75248841-42D0-11D2-B7D3-00104B639F6F}
// *********************************************************************//
  IBtApplicationDisp = dispinterface
    ['{75248841-42D0-11D2-B7D3-00104B639F6F}']
    property ActiveFormat: Format readonly dispid 1;
    property BuildNumber: Integer readonly dispid 2;
    property Formats: Formats readonly dispid 3;
    property IsPrinting: WordBool readonly dispid 4;
    property IsProcessingCommandLines: WordBool readonly dispid 5;
    property Version: WideString readonly dispid 6;
    property Visible: WordBool dispid 7;
    property Window: Window readonly dispid 8;
    procedure Quit(SaveChanges: BtSaveOptions); dispid 9;
    procedure Save(DoPrompt: WordBool); dispid 10;
    property SAPIDocDefinitionFile: WideString dispid 12;
    procedure CommandLine(const CommandLine: WideString); dispid 11;
    property LicenseServer: LicenseServer readonly dispid 13;
    function XMLScript(const XMLScript: WideString; SourceType: BtXMLSourceType; 
                       out Messages: Messages): WideString; dispid 17;
    property Edition: WideString readonly dispid 20;
    property VisibleWindows: BtVisibleWindows dispid 22;
    property TopMost: WordBool dispid 23;
    property ParentWindow: SYSUINT dispid 24;
    property ProcessId: Integer readonly dispid 25;
    property FullVersion: WideString readonly dispid 26;
    function SpecifyPrintOnlyPassword(const Password: WideString): WordBool; dispid 27;
    procedure AdministerMessageSetup; dispid 28;
    procedure AdministerAlertSetup; dispid 29;
    procedure AdministerLogSetup; dispid 30;
    function Private_SetSharedMemory(const sharedMemoryName: WideString): LongWord; dispid 31;
    procedure Private_QueueCommandLine(const CommandLine: WideString; cmdId: {??Largeuint}OleVariant); dispid 32;
  end;

// *********************************************************************//
// Interface: IBtFormat
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A27F12A1-4305-11D2-BE48-004005A04EDF}
// *********************************************************************//
  IBtFormat = interface(IDispatch)
    ['{A27F12A1-4305-11D2-BE48-004005A04EDF}']
    procedure Set_AutoPrintAgain(retval: WordBool); safecall;
    function Get_AutoPrintAgain: WordBool; safecall;
    function Get_BaseName: WideString; safecall;
    function Get_Directory: WideString; safecall;
    function Get_FileName: WideString; safecall;
    procedure Set_IdenticalCopiesOfLabel(retval: Integer); safecall;
    function Get_IdenticalCopiesOfLabel: Integer; safecall;
    function Get_InputDataFileSetup: InputDataFileSetup; safecall;
    procedure Set_NumberSerializedLabels(retval: Integer); safecall;
    function Get_NumberSerializedLabels: Integer; safecall;
    function Get_Printer: WideString; safecall;
    procedure Set_PrintToFile(retval: WordBool); safecall;
    function Get_PrintToFile: WordBool; safecall;
    function Get_Title: WideString; safecall;
    procedure Set_UseInputDataFile(retval: WordBool); safecall;
    function Get_UseInputDataFile: WordBool; safecall;
    procedure Activate; safecall;
    procedure Close(SaveChanges: BtSaveOptions); safecall;
    function PrintOut(ShowStatusWindow: WordBool; ShowPrintDialog: WordBool): Integer; safecall;
    procedure SetNamedSubStringValue(const SubStringName: WideString; const Value: WideString); safecall;
    function GetNamedSubStringValue(const SubStringName: WideString): WideString; safecall;
    procedure Save; safecall;
    procedure SaveAs(const FileName: WideString; OverwriteIfExists: WordBool); safecall;
    procedure Set_SaveAsVersion(retval: BtVersion); safecall;
    function Get_SaveAsVersion: BtVersion; safecall;
    function Get_NamedSubStrings: NamedSubStrings; safecall;
    procedure ExportToClipboard(Color: BtColors; Resolution: BtResolution); safecall;
    procedure ExportToFile(const FileName: WideString; const FileType: WideString; Color: BtColors; 
                           Resolution: BtResolution; SaveOption: BtSaveOptions); safecall;
    function Get_Databases: Databases; safecall;
    procedure Set_EnablePrompting(retval: WordBool); safecall;
    function Get_EnablePrompting: WordBool; safecall;
    procedure Set_RecordRange(const retval: WideString); safecall;
    function Get_RecordRange: WideString; safecall;
    procedure Set_SelectRecordsAtPrint(retval: WordBool); safecall;
    function Get_SelectRecordsAtPrint: WordBool; safecall;
    procedure Set_UseDatabase(retval: WordBool); safecall;
    function Get_UseDatabase: WordBool; safecall;
    procedure Set_Printer(const retval: WideString); safecall;
    procedure Set_PrinterFile(const retval: WideString); safecall;
    function Get_PrinterFile: WideString; safecall;
    function Get_PageSetup: PageSetup; safecall;
    function Get_PrintSetup: PrintSetup; safecall;
    function Get_PrinterCodeTemplate: PrinterCodeTemplate; safecall;
    function Get_UsedNames(FieldType: BtNameType; const delimiter: WideString): WideString; safecall;
    procedure Set_UsedNamesSampleData(FieldType: BtUsedNamesSampleDataType; const Name: WideString; 
                                      const retval: WideString); safecall;
    function Get_UsedNamesSampleData(FieldType: BtUsedNamesSampleDataType; const Name: WideString): WideString; safecall;
    procedure SetAvailableTemplateFieldNames(const FieldnameSampleDataList: WideString; 
                                             const delimiter: WideString); safecall;
    function ExportPromptToXML(const XSLFileName: WideString): WideString; safecall;
    procedure SetPrompt(const PromptName: WideString; const PromptData: WideString); safecall;
    procedure Set_JobName(const retval: WideString); safecall;
    function Get_JobName: WideString; safecall;
    procedure Set_PrintToFileLicense(const retval: WideString); safecall;
    function Get_PrintToFileLicense: WideString; safecall;
    function Print(const PrintJobName: WideString; WaitForSpoolJobToComplete: WordBool; 
                   TimeoutMs: Integer; out Messages: Messages): BtPrintResult; safecall;
    procedure Set_PaperTray(const retval: WideString); safecall;
    function Get_PaperTray: WideString; safecall;
    procedure Set_Comment(const retval: WideString); safecall;
    function Get_Comment: WideString; safecall;
    function ExportPrintPreviewToImage(const Directory: WideString; 
                                       const FileNameTemplate: WideString; 
                                       const FileType: WideString; Colors: BtColors; dpi: SYSINT; 
                                       backgroundColor: SYSINT; SaveOpts: BtSaveOptions; 
                                       IncludeMargins: WordBool; IncludeBorder: WordBool; 
                                       out Messages: Messages): BtPrintResult; safecall;
    procedure Set_Encryption(retval: Integer); safecall;
    function Get_Encryption: Integer; safecall;
    function Get_SupportsSetSerializedCopies: WordBool; safecall;
    function Get_SupportsSetIdenticalCopies: WordBool; safecall;
    procedure Set_MeasurementUnits(retval: BtUnits); safecall;
    function Get_MeasurementUnits: BtUnits; safecall;
    function Get_Objects: DesignObjects; safecall;
    function SpecifyLabelFormatPassword(const Password: WideString): WordBool; safecall;
    function ExportPrintPreviewRangeToImage(const PageRange: WideString; 
                                            const Directory: WideString; 
                                            const FileNameTemplate: WideString; 
                                            const FileType: WideString; Colors: BtColors; 
                                            dpi: SYSINT; backgroundColor: SYSINT; 
                                            SaveOpts: BtSaveOptions; IncludeMargins: WordBool; 
                                            IncludeBorder: WordBool; out Messages: Messages): BtPrintResult; safecall;
    function Get_LatestSaveNumber: Integer; safecall;
    function Get_IsModified: WordBool; safecall;
    function Get_ViewRecordNavigator: ViewRecordNavigator; safecall;
    function GetPrompt(const PromptName: WideString): WideString; safecall;
    function Get_PromptValues: WideString; safecall;
    property AutoPrintAgain: WordBool read Get_AutoPrintAgain write Set_AutoPrintAgain;
    property BaseName: WideString read Get_BaseName;
    property Directory: WideString read Get_Directory;
    property FileName: WideString read Get_FileName;
    property IdenticalCopiesOfLabel: Integer read Get_IdenticalCopiesOfLabel write Set_IdenticalCopiesOfLabel;
    property InputDataFileSetup: InputDataFileSetup read Get_InputDataFileSetup;
    property NumberSerializedLabels: Integer read Get_NumberSerializedLabels write Set_NumberSerializedLabels;
    property Printer: WideString read Get_Printer write Set_Printer;
    property PrintToFile: WordBool read Get_PrintToFile write Set_PrintToFile;
    property Title: WideString read Get_Title;
    property UseInputDataFile: WordBool read Get_UseInputDataFile write Set_UseInputDataFile;
    property SaveAsVersion: BtVersion read Get_SaveAsVersion write Set_SaveAsVersion;
    property NamedSubStrings: NamedSubStrings read Get_NamedSubStrings;
    property Databases: Databases read Get_Databases;
    property EnablePrompting: WordBool read Get_EnablePrompting write Set_EnablePrompting;
    property RecordRange: WideString read Get_RecordRange write Set_RecordRange;
    property SelectRecordsAtPrint: WordBool read Get_SelectRecordsAtPrint write Set_SelectRecordsAtPrint;
    property UseDatabase: WordBool read Get_UseDatabase write Set_UseDatabase;
    property PrinterFile: WideString read Get_PrinterFile write Set_PrinterFile;
    property PageSetup: PageSetup read Get_PageSetup;
    property PrintSetup: PrintSetup read Get_PrintSetup;
    property PrinterCodeTemplate: PrinterCodeTemplate read Get_PrinterCodeTemplate;
    property UsedNames[FieldType: BtNameType; const delimiter: WideString]: WideString read Get_UsedNames;
    property UsedNamesSampleData[FieldType: BtUsedNamesSampleDataType; const Name: WideString]: WideString read Get_UsedNamesSampleData write Set_UsedNamesSampleData;
    property JobName: WideString read Get_JobName write Set_JobName;
    property PrintToFileLicense: WideString read Get_PrintToFileLicense write Set_PrintToFileLicense;
    property PaperTray: WideString read Get_PaperTray write Set_PaperTray;
    property Comment: WideString read Get_Comment write Set_Comment;
    property Encryption: Integer read Get_Encryption write Set_Encryption;
    property SupportsSetSerializedCopies: WordBool read Get_SupportsSetSerializedCopies;
    property SupportsSetIdenticalCopies: WordBool read Get_SupportsSetIdenticalCopies;
    property MeasurementUnits: BtUnits read Get_MeasurementUnits write Set_MeasurementUnits;
    property Objects: DesignObjects read Get_Objects;
    property LatestSaveNumber: Integer read Get_LatestSaveNumber;
    property IsModified: WordBool read Get_IsModified;
    property ViewRecordNavigator: ViewRecordNavigator read Get_ViewRecordNavigator;
    property PromptValues: WideString read Get_PromptValues;
  end;

// *********************************************************************//
// DispIntf:  IBtFormatDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A27F12A1-4305-11D2-BE48-004005A04EDF}
// *********************************************************************//
  IBtFormatDisp = dispinterface
    ['{A27F12A1-4305-11D2-BE48-004005A04EDF}']
    property AutoPrintAgain: WordBool dispid 2;
    property BaseName: WideString readonly dispid 3;
    property Directory: WideString readonly dispid 6;
    property FileName: WideString readonly dispid 8;
    property IdenticalCopiesOfLabel: Integer dispid 9;
    property InputDataFileSetup: InputDataFileSetup readonly dispid 10;
    property NumberSerializedLabels: Integer dispid 14;
    property Printer: WideString dispid 16;
    property PrintToFile: WordBool dispid 15;
    property Title: WideString readonly dispid 22;
    property UseInputDataFile: WordBool dispid 23;
    procedure Activate; dispid 1;
    procedure Close(SaveChanges: BtSaveOptions); dispid 5;
    function PrintOut(ShowStatusWindow: WordBool; ShowPrintDialog: WordBool): Integer; dispid 17;
    procedure SetNamedSubStringValue(const SubStringName: WideString; const Value: WideString); dispid 18;
    function GetNamedSubStringValue(const SubStringName: WideString): WideString; dispid 19;
    procedure Save; dispid 20;
    procedure SaveAs(const FileName: WideString; OverwriteIfExists: WordBool); dispid 21;
    property SaveAsVersion: BtVersion dispid 25;
    property NamedSubStrings: NamedSubStrings readonly dispid 28;
    procedure ExportToClipboard(Color: BtColors; Resolution: BtResolution); dispid 26;
    procedure ExportToFile(const FileName: WideString; const FileType: WideString; Color: BtColors; 
                           Resolution: BtResolution; SaveOption: BtSaveOptions); dispid 27;
    property Databases: Databases readonly dispid 29;
    property EnablePrompting: WordBool dispid 30;
    property RecordRange: WideString dispid 31;
    property SelectRecordsAtPrint: WordBool dispid 32;
    property UseDatabase: WordBool dispid 33;
    property PrinterFile: WideString dispid 34;
    property PageSetup: PageSetup readonly dispid 36;
    property PrintSetup: PrintSetup readonly dispid 38;
    property PrinterCodeTemplate: PrinterCodeTemplate readonly dispid 39;
    property UsedNames[FieldType: BtNameType; const delimiter: WideString]: WideString readonly dispid 40;
    property UsedNamesSampleData[FieldType: BtUsedNamesSampleDataType; const Name: WideString]: WideString dispid 41;
    procedure SetAvailableTemplateFieldNames(const FieldnameSampleDataList: WideString; 
                                             const delimiter: WideString); dispid 42;
    function ExportPromptToXML(const XSLFileName: WideString): WideString; dispid 44;
    procedure SetPrompt(const PromptName: WideString; const PromptData: WideString); dispid 45;
    property JobName: WideString dispid 46;
    property PrintToFileLicense: WideString dispid 47;
    function Print(const PrintJobName: WideString; WaitForSpoolJobToComplete: WordBool; 
                   TimeoutMs: Integer; out Messages: Messages): BtPrintResult; dispid 48;
    property PaperTray: WideString dispid 50;
    property Comment: WideString dispid 51;
    function ExportPrintPreviewToImage(const Directory: WideString; 
                                       const FileNameTemplate: WideString; 
                                       const FileType: WideString; Colors: BtColors; dpi: SYSINT; 
                                       backgroundColor: SYSINT; SaveOpts: BtSaveOptions; 
                                       IncludeMargins: WordBool; IncludeBorder: WordBool; 
                                       out Messages: Messages): BtPrintResult; dispid 53;
    property Encryption: Integer dispid 54;
    property SupportsSetSerializedCopies: WordBool readonly dispid 55;
    property SupportsSetIdenticalCopies: WordBool readonly dispid 56;
    property MeasurementUnits: BtUnits dispid 57;
    property Objects: DesignObjects readonly dispid 43;
    function SpecifyLabelFormatPassword(const Password: WideString): WordBool; dispid 58;
    function ExportPrintPreviewRangeToImage(const PageRange: WideString; 
                                            const Directory: WideString; 
                                            const FileNameTemplate: WideString; 
                                            const FileType: WideString; Colors: BtColors; 
                                            dpi: SYSINT; backgroundColor: SYSINT; 
                                            SaveOpts: BtSaveOptions; IncludeMargins: WordBool; 
                                            IncludeBorder: WordBool; out Messages: Messages): BtPrintResult; dispid 59;
    property LatestSaveNumber: Integer readonly dispid 60;
    property IsModified: WordBool readonly dispid 61;
    property ViewRecordNavigator: ViewRecordNavigator readonly dispid 62;
    function GetPrompt(const PromptName: WideString): WideString; dispid 63;
    property PromptValues: WideString readonly dispid 64;
  end;

// *********************************************************************//
// DispIntf:  DBtFormat
// Flags:     (4112) Hidden Dispatchable
// GUID:      {8786AEA3-17EC-11D1-8AD8-006097D76312}
// *********************************************************************//
  DBtFormat = dispinterface
    ['{8786AEA3-17EC-11D1-8AD8-006097D76312}']
    function GetPrompt(const PromptData: WideString): WideString; dispid 63;
    function ExportPrintPreviewRangeToImage(const PageRange: WideString; 
                                            const Directory: WideString; 
                                            const FileNameTemplate: WideString; 
                                            const FileType: WideString; Colors: BtColors; 
                                            dpi: SYSINT; backgroundColor: SYSINT; 
                                            SaveOpts: BtSaveOptions; IncludeMargins: WordBool; 
                                            IncludeBorders: WordBool; out Messages: Messages): BtPrintResult; dispid 59;
    function ExportPrintPreviewToImage(const Directory: WideString; 
                                       const FileNameTemplate: WideString; 
                                       const FileType: WideString; Colors: BtColors; dpi: SYSINT; 
                                       backgroundColor: SYSINT; SaveOpts: BtSaveOptions; 
                                       IncludeMargins: WordBool; IncludeBorders: WordBool; 
                                       out Messages: Messages): BtPrintResult; dispid 53;
    function Print(const PrintJobName: WideString; WaitForSpoolJobToComplete: WordBool; 
                   TimeoutMs: Integer; out Messages: Messages): BtPrintResult; dispid 48;
    procedure SetPrompt(const PromptName: WideString; const PromptData: WideString); dispid 45;
    function ExportPromptToXML(const XSLFileName: WideString): WideString; dispid 44;
    procedure SetAvailableTemplateFieldNames(const FieldnameSampleDataList: WideString; 
                                             const delimiter: WideString); dispid 42;
    procedure ExportToFile(const FileName: WideString; const FileType: WideString; 
                           Colors: BtColors; Resolution: BtResolution; SaveOption: BtSaveOptions); dispid 27;
    procedure ExportToClipboard(Colors: BtColors; Resolution: BtResolution); dispid 26;
    procedure SaveAs(const FileName: WideString; OverwriteIfExists: WordBool); dispid 21;
    procedure Save; dispid 20;
    procedure PrintOut(ShowStatusWindow: WordBool; ShowPrintDialog: WordBool); dispid 17;
    procedure Close(SaveChanges: BtSaveOptions); dispid 5;
    procedure Activate; dispid 1;
    property PrinterCodeTemplate: IDispatch dispid 39;
    property NamedSubStrings: IDispatch dispid 28;
    property PageSetup: IDispatch dispid 36;
    property PrintSetup: IDispatch dispid 38;
    property FileName: WideString dispid 8;
    property AutoPrintAgain: WordBool dispid 2;
    property BaseName: WideString dispid 3;
    property IdenticalCopiesOfLabel: Integer dispid 9;
    property InputDataFileSetup: IDispatch dispid 10;
    property PrinterFile: WideString dispid 34;
    property Databases: IDispatch dispid 29;
    property SelectRecordsAtPrint: WordBool dispid 32;
    property UseDatabase: WordBool dispid 33;
    property EnablePrompting: WordBool dispid 30;
    property UsedNamesSampleData: WideString dispid 41;
    property JobName: WideString dispid 46;
    property RecordRange: WideString dispid 31;
    property UsedNames: WideString dispid 40;
    property Directory: WideString dispid 6;
    property ViewRecordNavigator: IDispatch dispid 62;
    property MeasurementUnits: BtUnits dispid 57;
    property IsModified: WordBool dispid 61;
    property PromptValues: WideString dispid 64;
    property Comment: WideString dispid 51;
    property SupportsSetIdenticalCopies: WordBool dispid 56;
    property SupportsSetSerializedCopies: WordBool dispid 55;
    property PaperTray: WideString dispid 50;
    property Encryption: Integer dispid 54;
    property SaveAsVersion: BtVersion dispid 25;
    property NumberSerializedLabels: Integer dispid 14;
    property Title: WideString dispid 22;
    property UseInputDataFile: WordBool dispid 23;
    property Printer: WideString dispid 16;
    property LatestSaveNumber: Integer dispid 60;
    property Objects: IDispatch dispid 43;
    property PrintToFile: WordBool dispid 15;
    property PrintToFileLicense: WideString dispid 47;
  end;

// *********************************************************************//
// Interface: IBtInputDataFileSetup
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {66E43562-4379-11D2-B7D3-00104B639F6F}
// *********************************************************************//
  IBtInputDataFileSetup = interface(IDispatch)
    ['{66E43562-4379-11D2-B7D3-00104B639F6F}']
    procedure Set_AutoViewSelectedRecordsBeforePrint(retval: WordBool); safecall;
    function Get_AutoViewSelectedRecordsBeforePrint: WordBool; safecall;
    function Get_TextFile: TextFile; safecall;
    procedure Set_type_(retval: BtInputDataFile); safecall;
    function Get_type_: BtInputDataFile; safecall;
    function Get_ODBC: ODBC; safecall;
    function Get_OLEDB: OLEDB; safecall;
    property AutoViewSelectedRecordsBeforePrint: WordBool read Get_AutoViewSelectedRecordsBeforePrint write Set_AutoViewSelectedRecordsBeforePrint;
    property TextFile: TextFile read Get_TextFile;
    property type_: BtInputDataFile read Get_type_ write Set_type_;
    property ODBC: ODBC read Get_ODBC;
    property OLEDB: OLEDB read Get_OLEDB;
  end;

// *********************************************************************//
// DispIntf:  IBtInputDataFileSetupDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {66E43562-4379-11D2-B7D3-00104B639F6F}
// *********************************************************************//
  IBtInputDataFileSetupDisp = dispinterface
    ['{66E43562-4379-11D2-B7D3-00104B639F6F}']
    property AutoViewSelectedRecordsBeforePrint: WordBool dispid 4;
    property TextFile: TextFile readonly dispid 3;
    property type_: BtInputDataFile dispid 1;
    property ODBC: ODBC readonly dispid 2;
    property OLEDB: OLEDB readonly dispid 5;
  end;

// *********************************************************************//
// DispIntf:  DBtInputDataFileSetup
// Flags:     (4112) Hidden Dispatchable
// GUID:      {04D2C604-4296-11D2-B7D3-00104B639F6F}
// *********************************************************************//
  DBtInputDataFileSetup = dispinterface
    ['{04D2C604-4296-11D2-B7D3-00104B639F6F}']
    property AutoViewSelectedRecordsBeforePrint: WordBool dispid 4;
    property TextFile: IDispatch dispid 3;
    property type_: Integer dispid 1;
    property ODBC: IDispatch dispid 2;
    property OLEDB: IDispatch dispid 5;
  end;

// *********************************************************************//
// Interface: IBtTextFile
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {66E43564-4379-11D2-B7D3-00104B639F6F}
// *********************************************************************//
  IBtTextFile = interface(IDispatch)
    ['{66E43564-4379-11D2-B7D3-00104B639F6F}']
    procedure Set_FileName(const retval: WideString); safecall;
    function Get_FileName: WideString; safecall;
    procedure Set_Delimitation(retval: BtTextFileDelimitation); safecall;
    function Get_Delimitation: BtTextFileDelimitation; safecall;
    procedure Set_FieldDelimiter(const retval: WideString); safecall;
    function Get_FieldDelimiter: WideString; safecall;
    procedure Set_NumberOfFields(retval: SYSINT); safecall;
    function Get_NumberOfFields: SYSINT; safecall;
    procedure Set_UseFieldNamesFromFirstRecord(retval: WordBool); safecall;
    function Get_UseFieldNamesFromFirstRecord: WordBool; safecall;
    property FileName: WideString read Get_FileName write Set_FileName;
    property Delimitation: BtTextFileDelimitation read Get_Delimitation write Set_Delimitation;
    property FieldDelimiter: WideString read Get_FieldDelimiter write Set_FieldDelimiter;
    property NumberOfFields: SYSINT read Get_NumberOfFields write Set_NumberOfFields;
    property UseFieldNamesFromFirstRecord: WordBool read Get_UseFieldNamesFromFirstRecord write Set_UseFieldNamesFromFirstRecord;
  end;

// *********************************************************************//
// DispIntf:  IBtTextFileDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {66E43564-4379-11D2-B7D3-00104B639F6F}
// *********************************************************************//
  IBtTextFileDisp = dispinterface
    ['{66E43564-4379-11D2-B7D3-00104B639F6F}']
    property FileName: WideString dispid 2;
    property Delimitation: BtTextFileDelimitation dispid 1;
    property FieldDelimiter: WideString dispid 3;
    property NumberOfFields: SYSINT dispid 4;
    property UseFieldNamesFromFirstRecord: WordBool dispid 5;
  end;

// *********************************************************************//
// DispIntf:  DBtTextFile
// Flags:     (4112) Hidden Dispatchable
// GUID:      {04D2C607-4296-11D2-B7D3-00104B639F6F}
// *********************************************************************//
  DBtTextFile = dispinterface
    ['{04D2C607-4296-11D2-B7D3-00104B639F6F}']
    property FileName: WideString dispid 2;
    property Delimitation: BtTextFileDelimitation dispid 1;
    property FieldDelimiter: WideString dispid 3;
    property NumberOfFields: SYSINT dispid 4;
    property UseFieldNamesFromFirstRecord: WordBool dispid 5;
  end;

// *********************************************************************//
// Interface: IBtODBC
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {66E43566-4379-11D2-B7D3-00104B639F6F}
// *********************************************************************//
  IBtODBC = interface(IDispatch)
    ['{66E43566-4379-11D2-B7D3-00104B639F6F}']
    procedure Set_Where(const retval: WideString); safecall;
    function Get_Where: WideString; safecall;
    procedure Set_Password(const retval: WideString); safecall;
    function Get_Password: WideString; safecall;
    procedure Set_UserId(const retval: WideString); safecall;
    function Get_UserId: WideString; safecall;
    procedure Set_SQLStatement(const retval: WideString); safecall;
    function Get_SQLStatement: WideString; safecall;
    property Where: WideString read Get_Where write Set_Where;
    property Password: WideString read Get_Password write Set_Password;
    property UserId: WideString read Get_UserId write Set_UserId;
    property SQLStatement: WideString read Get_SQLStatement write Set_SQLStatement;
  end;

// *********************************************************************//
// DispIntf:  IBtODBCDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {66E43566-4379-11D2-B7D3-00104B639F6F}
// *********************************************************************//
  IBtODBCDisp = dispinterface
    ['{66E43566-4379-11D2-B7D3-00104B639F6F}']
    property Where: WideString dispid 1;
    property Password: WideString dispid 3;
    property UserId: WideString dispid 2;
    property SQLStatement: WideString dispid 4;
  end;

// *********************************************************************//
// DispIntf:  DBtODBC
// Flags:     (4112) Hidden Dispatchable
// GUID:      {04D2C60A-4296-11D2-B7D3-00104B639F6F}
// *********************************************************************//
  DBtODBC = dispinterface
    ['{04D2C60A-4296-11D2-B7D3-00104B639F6F}']
    property Where: WideString dispid 1;
    property Password: WideString dispid 3;
    property UserId: WideString dispid 2;
    property SQLStatement: WideString dispid 4;
  end;

// *********************************************************************//
// Interface: IBtOLEDB
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {17E5C0F9-FDBE-4658-B0A0-A76BD4154A81}
// *********************************************************************//
  IBtOLEDB = interface(IDispatch)
    ['{17E5C0F9-FDBE-4658-B0A0-A76BD4154A81}']
    procedure Set_Password(const retval: WideString); safecall;
    function Get_Password: WideString; safecall;
    procedure Set_UserId(const retval: WideString); safecall;
    function Get_UserId: WideString; safecall;
    procedure Set_SQLStatement(const retval: WideString); safecall;
    function Get_SQLStatement: WideString; safecall;
    property Password: WideString read Get_Password write Set_Password;
    property UserId: WideString read Get_UserId write Set_UserId;
    property SQLStatement: WideString read Get_SQLStatement write Set_SQLStatement;
  end;

// *********************************************************************//
// DispIntf:  IBtOLEDBDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {17E5C0F9-FDBE-4658-B0A0-A76BD4154A81}
// *********************************************************************//
  IBtOLEDBDisp = dispinterface
    ['{17E5C0F9-FDBE-4658-B0A0-A76BD4154A81}']
    property Password: WideString dispid 2;
    property UserId: WideString dispid 1;
    property SQLStatement: WideString dispid 3;
  end;

// *********************************************************************//
// DispIntf:  DBtOLEDB
// Flags:     (4112) Hidden Dispatchable
// GUID:      {8C1DF6E3-F044-43AF-880F-8DF7DEA1DBF5}
// *********************************************************************//
  DBtOLEDB = dispinterface
    ['{8C1DF6E3-F044-43AF-880F-8DF7DEA1DBF5}']
    property Password: WideString dispid 2;
    property UserId: WideString dispid 1;
    property SQLStatement: WideString dispid 3;
  end;

// *********************************************************************//
// Interface: IBtNamedSubStrings
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {66E43568-4379-11D2-B7D3-00104B639F6F}
// *********************************************************************//
  IBtNamedSubStrings = interface(IDispatch)
    ['{66E43568-4379-11D2-B7D3-00104B639F6F}']
    function Get_Count: Integer; safecall;
    function Item(var Index: OleVariant): SubString; safecall;
    function GetAll(const nameValueDelimiter: WideString; const recordDelimter: WideString): WideString; safecall;
    procedure SetAll(const setStr: WideString; const delimter: WideString); safecall;
    function Get_NewEnum: IUnknown; safecall;
    function GetSubString(Index: OleVariant): SubString; safecall;
    property Count: Integer read Get_Count;
    property NewEnum: IUnknown read Get_NewEnum;
  end;

// *********************************************************************//
// DispIntf:  IBtNamedSubStringsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {66E43568-4379-11D2-B7D3-00104B639F6F}
// *********************************************************************//
  IBtNamedSubStringsDisp = dispinterface
    ['{66E43568-4379-11D2-B7D3-00104B639F6F}']
    property Count: Integer readonly dispid 1;
    function Item(var Index: OleVariant): SubString; dispid 2;
    function GetAll(const nameValueDelimiter: WideString; const recordDelimter: WideString): WideString; dispid 3;
    procedure SetAll(const setStr: WideString; const delimter: WideString); dispid 4;
    property NewEnum: IUnknown readonly dispid -4;
    function GetSubString(Index: OleVariant): SubString; dispid 5;
  end;

// *********************************************************************//
// DispIntf:  DBtNamedSubStrings
// Flags:     (4112) Hidden Dispatchable
// GUID:      {994E4DC0-6CE6-11D3-A885-005004A506ED}
// *********************************************************************//
  DBtNamedSubStrings = dispinterface
    ['{994E4DC0-6CE6-11D3-A885-005004A506ED}']
    function GetSubString(Index: OleVariant): IDispatch; dispid 5;
    function Item(var Index: OleVariant): IDispatch; dispid 2;
    function GetAll(const nameValueDelimiter: WideString; const recordDelimiter: WideString): WideString; dispid 3;
    procedure SetAll(const subStringsAndValues: WideString; const delimiter: WideString); dispid 4;
    property NewEnum: IUnknown dispid -4;
    property Count: Integer dispid 1;
  end;

// *********************************************************************//
// Interface: IBtSubString
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6B6C8EE4-6CEA-11D3-A885-005004A506ED}
// *********************************************************************//
  IBtSubString = interface(IDispatch)
    ['{6B6C8EE4-6CEA-11D3-A885-005004A506ED}']
    function Get_Name: WideString; safecall;
    function Get_Value: WideString; safecall;
    procedure Set_Value(const retval: WideString); safecall;
    function Get_type_: BtSubStringType; safecall;
    property Name: WideString read Get_Name;
    property Value: WideString read Get_Value write Set_Value;
    property type_: BtSubStringType read Get_type_;
  end;

// *********************************************************************//
// DispIntf:  IBtSubStringDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6B6C8EE4-6CEA-11D3-A885-005004A506ED}
// *********************************************************************//
  IBtSubStringDisp = dispinterface
    ['{6B6C8EE4-6CEA-11D3-A885-005004A506ED}']
    property Name: WideString readonly dispid 1;
    property Value: WideString dispid 2;
    property type_: BtSubStringType readonly dispid 3;
  end;

// *********************************************************************//
// DispIntf:  DBtSubString
// Flags:     (4112) Hidden Dispatchable
// GUID:      {994E4DF0-6CE6-11D3-A885-005004A506ED}
// *********************************************************************//
  DBtSubString = dispinterface
    ['{994E4DF0-6CE6-11D3-A885-005004A506ED}']
    property Name: WideString dispid 1;
    property Value: WideString dispid 2;
    property type_: Integer dispid 3;
  end;

// *********************************************************************//
// Interface: IBtDatabases
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {46ECE465-6C20-11D3-9CA5-00104B9C1746}
// *********************************************************************//
  IBtDatabases = interface(IDispatch)
    ['{46ECE465-6C20-11D3-9CA5-00104B9C1746}']
    function Get_Count: SYSINT; safecall;
    function Get_QueryPrompts: QueryPrompts; safecall;
    function Item(var Index: OleVariant): Database; safecall;
    function Get_NewEnum: IUnknown; safecall;
    function GetDatabase(Index: OleVariant): Database; safecall;
    property Count: SYSINT read Get_Count;
    property QueryPrompts: QueryPrompts read Get_QueryPrompts;
    property NewEnum: IUnknown read Get_NewEnum;
  end;

// *********************************************************************//
// DispIntf:  IBtDatabasesDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {46ECE465-6C20-11D3-9CA5-00104B9C1746}
// *********************************************************************//
  IBtDatabasesDisp = dispinterface
    ['{46ECE465-6C20-11D3-9CA5-00104B9C1746}']
    property Count: SYSINT readonly dispid 1;
    property QueryPrompts: QueryPrompts readonly dispid 2;
    function Item(var Index: OleVariant): Database; dispid 3;
    property NewEnum: IUnknown readonly dispid -4;
    function GetDatabase(Index: OleVariant): Database; dispid 4;
  end;

// *********************************************************************//
// DispIntf:  DBtDatabases
// Flags:     (4112) Hidden Dispatchable
// GUID:      {46ECE464-6C20-11D3-9CA5-00104B9C1746}
// *********************************************************************//
  DBtDatabases = dispinterface
    ['{46ECE464-6C20-11D3-9CA5-00104B9C1746}']
    function GetDatabase(Index: OleVariant): IDispatch; dispid 4;
    function Item(var Index: OleVariant): IDispatch; dispid 3;
    property QueryPrompts: IDispatch dispid 2;
    property Count: SYSINT dispid 1;
    property NewEnum: IUnknown dispid -4;
  end;

// *********************************************************************//
// Interface: IBtQueryPrompts
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {46ECE46B-6C20-11D3-9CA5-00104B9C1746}
// *********************************************************************//
  IBtQueryPrompts = interface(IDispatch)
    ['{46ECE46B-6C20-11D3-9CA5-00104B9C1746}']
    function Get_Count: Integer; safecall;
    function Item(var Index: OleVariant): QueryPrompt; safecall;
    function Get_NewEnum: IUnknown; safecall;
    function GetQueryPrompt(Index: OleVariant): QueryPrompt; safecall;
    function ExportToXML: WideString; safecall;
    property Count: Integer read Get_Count;
    property NewEnum: IUnknown read Get_NewEnum;
  end;

// *********************************************************************//
// DispIntf:  IBtQueryPromptsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {46ECE46B-6C20-11D3-9CA5-00104B9C1746}
// *********************************************************************//
  IBtQueryPromptsDisp = dispinterface
    ['{46ECE46B-6C20-11D3-9CA5-00104B9C1746}']
    property Count: Integer readonly dispid 1;
    function Item(var Index: OleVariant): QueryPrompt; dispid 2;
    property NewEnum: IUnknown readonly dispid -4;
    function GetQueryPrompt(Index: OleVariant): QueryPrompt; dispid 3;
    function ExportToXML: WideString; dispid 4;
  end;

// *********************************************************************//
// DispIntf:  DBtQueryPrompts
// Flags:     (4112) Hidden Dispatchable
// GUID:      {46ECE46A-6C20-11D3-9CA5-00104B9C1746}
// *********************************************************************//
  DBtQueryPrompts = dispinterface
    ['{46ECE46A-6C20-11D3-9CA5-00104B9C1746}']
    function Item(var Index: OleVariant): IDispatch; dispid 2;
    function ExportToXML: WideString; dispid 4;
    function GetQueryPrompt(Index: OleVariant): IDispatch; dispid 3;
    property NewEnum: IUnknown dispid -4;
    property Count: Integer dispid 1;
  end;

// *********************************************************************//
// Interface: IBtQueryPrompt
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {46ECE468-6C20-11D3-9CA5-00104B9C1746}
// *********************************************************************//
  IBtQueryPrompt = interface(IDispatch)
    ['{46ECE468-6C20-11D3-9CA5-00104B9C1746}']
    procedure Set_DefaultReply(const retval: WideString); safecall;
    function Get_DefaultReply: WideString; safecall;
    function Get_Name: WideString; safecall;
    procedure Set_UserPrompt(const retval: WideString); safecall;
    function Get_UserPrompt: WideString; safecall;
    procedure Set_Value(const retval: WideString); safecall;
    function Get_Value: WideString; safecall;
    property DefaultReply: WideString read Get_DefaultReply write Set_DefaultReply;
    property Name: WideString read Get_Name;
    property UserPrompt: WideString read Get_UserPrompt write Set_UserPrompt;
    property Value: WideString read Get_Value write Set_Value;
  end;

// *********************************************************************//
// DispIntf:  IBtQueryPromptDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {46ECE468-6C20-11D3-9CA5-00104B9C1746}
// *********************************************************************//
  IBtQueryPromptDisp = dispinterface
    ['{46ECE468-6C20-11D3-9CA5-00104B9C1746}']
    property DefaultReply: WideString dispid 1;
    property Name: WideString readonly dispid 2;
    property UserPrompt: WideString dispid 3;
    property Value: WideString dispid 4;
  end;

// *********************************************************************//
// DispIntf:  DBtQueryPrompt
// Flags:     (4112) Hidden Dispatchable
// GUID:      {46ECE467-6C20-11D3-9CA5-00104B9C1746}
// *********************************************************************//
  DBtQueryPrompt = dispinterface
    ['{46ECE467-6C20-11D3-9CA5-00104B9C1746}']
    property DefaultReply: WideString dispid 1;
    property Name: WideString dispid 2;
    property UserPrompt: WideString dispid 3;
    property Value: WideString dispid 4;
  end;

// *********************************************************************//
// Interface: IBtDatabase
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {46ECE462-6C20-11D3-9CA5-00104B9C1746}
// *********************************************************************//
  IBtDatabase = interface(IDispatch)
    ['{46ECE462-6C20-11D3-9CA5-00104B9C1746}']
    procedure Set_Name(const retval: WideString); safecall;
    function Get_Name: WideString; safecall;
    function Get_ODBC: ODBC; safecall;
    function Get_TextFile: TextFile; safecall;
    function Get_type_: BtInputDataFile; safecall;
    function Get_SAPIDoc: SAPIDoc; safecall;
    function Get_OLEDB: OLEDB; safecall;
    property Name: WideString read Get_Name write Set_Name;
    property ODBC: ODBC read Get_ODBC;
    property TextFile: TextFile read Get_TextFile;
    property type_: BtInputDataFile read Get_type_;
    property SAPIDoc: SAPIDoc read Get_SAPIDoc;
    property OLEDB: OLEDB read Get_OLEDB;
  end;

// *********************************************************************//
// DispIntf:  IBtDatabaseDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {46ECE462-6C20-11D3-9CA5-00104B9C1746}
// *********************************************************************//
  IBtDatabaseDisp = dispinterface
    ['{46ECE462-6C20-11D3-9CA5-00104B9C1746}']
    property Name: WideString dispid 1;
    property ODBC: ODBC readonly dispid 2;
    property TextFile: TextFile readonly dispid 3;
    property type_: BtInputDataFile readonly dispid 4;
    property SAPIDoc: SAPIDoc readonly dispid 5;
    property OLEDB: OLEDB readonly dispid 6;
  end;

// *********************************************************************//
// DispIntf:  DBtDatabase
// Flags:     (4112) Hidden Dispatchable
// GUID:      {46ECE461-6C20-11D3-9CA5-00104B9C1746}
// *********************************************************************//
  DBtDatabase = dispinterface
    ['{46ECE461-6C20-11D3-9CA5-00104B9C1746}']
    property Name: WideString dispid 1;
    property ODBC: IDispatch dispid 2;
    property TextFile: IDispatch dispid 3;
    property type_: Integer dispid 4;
    property SAPIDoc: IDispatch dispid 5;
    property OLEDB: IDispatch dispid 6;
  end;

// *********************************************************************//
// Interface: IBtSAPIDoc
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C79DBC2D-F4D6-4D55-9BE3-3E1A662F770B}
// *********************************************************************//
  IBtSAPIDoc = interface(IDispatch)
    ['{C79DBC2D-F4D6-4D55-9BE3-3E1A662F770B}']
    procedure Set_IDocFileName(const retval: WideString); safecall;
    function Get_IDocFileName: WideString; safecall;
    property IDocFileName: WideString read Get_IDocFileName write Set_IDocFileName;
  end;

// *********************************************************************//
// DispIntf:  IBtSAPIDocDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C79DBC2D-F4D6-4D55-9BE3-3E1A662F770B}
// *********************************************************************//
  IBtSAPIDocDisp = dispinterface
    ['{C79DBC2D-F4D6-4D55-9BE3-3E1A662F770B}']
    property IDocFileName: WideString dispid 1;
  end;

// *********************************************************************//
// DispIntf:  DBtSAPIDoc
// Flags:     (4112) Hidden Dispatchable
// GUID:      {3B0427E2-DBF6-4AAB-AC77-0380C5C6727F}
// *********************************************************************//
  DBtSAPIDoc = dispinterface
    ['{3B0427E2-DBF6-4AAB-AC77-0380C5C6727F}']
    property IDocFileName: WideString dispid 1;
  end;

// *********************************************************************//
// Interface: IBtPageSetup
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6BF825B8-825A-4986-B4D4-F134112C1F97}
// *********************************************************************//
  IBtPageSetup = interface(IDispatch)
    ['{6BF825B8-825A-4986-B4D4-F134112C1F97}']
    function Get_StockCategory: WideString; safecall;
    function Get_StockType: WideString; safecall;
    procedure Set_PaperName(const retval: WideString); safecall;
    function Get_PaperName: WideString; safecall;
    procedure Set_PaperID(retval: Integer); safecall;
    function Get_PaperID: Integer; safecall;
    procedure Set_Orientation(retval: BtOrientation); safecall;
    function Get_Orientation: BtOrientation; safecall;
    procedure Set_LabelColumns(retval: Integer); safecall;
    function Get_LabelColumns: Integer; safecall;
    procedure Set_LabelRows(retval: Integer); safecall;
    function Get_LabelRows: Integer; safecall;
    procedure Set_LabelSizeManual(retval: WordBool); safecall;
    function Get_LabelSizeManual: WordBool; safecall;
    procedure Set_LabelShape(retval: BtShape); safecall;
    function Get_LabelShape: BtShape; safecall;
    procedure Set_LabelCorners(retval: BtShape); safecall;
    function Get_LabelCorners: BtShape; safecall;
    procedure Set_LabelHole(retval: WordBool); safecall;
    function Get_LabelHole: WordBool; safecall;
    procedure Set_PaperWidth(units: BtUnits; retval: Single); safecall;
    function Get_PaperWidth(units: BtUnits): Single; safecall;
    procedure Set_PaperHeight(units: BtUnits; retval: Single); safecall;
    function Get_PaperHeight(units: BtUnits): Single; safecall;
    procedure Set_MarginLeft(units: BtUnits; retval: Single); safecall;
    function Get_MarginLeft(units: BtUnits): Single; safecall;
    procedure Set_MarginRight(units: BtUnits; retval: Single); safecall;
    function Get_MarginRight(units: BtUnits): Single; safecall;
    procedure Set_MarginTop(units: BtUnits; retval: Single); safecall;
    function Get_MarginTop(units: BtUnits): Single; safecall;
    procedure Set_MarginBottom(units: BtUnits; retval: Single); safecall;
    function Get_MarginBottom(units: BtUnits): Single; safecall;
    procedure Set_LabelWidth(units: BtUnits; retval: Single); safecall;
    function Get_LabelWidth(units: BtUnits): Single; safecall;
    procedure Set_LabelHeight(units: BtUnits; retval: Single); safecall;
    function Get_LabelHeight(units: BtUnits): Single; safecall;
    procedure Set_LabelHoleDiameter(units: BtUnits; retval: Single); safecall;
    function Get_LabelHoleDiameter(units: BtUnits): Single; safecall;
    function Get_Valid: WordBool; safecall;
    procedure SetStock(const StockCategory: WideString; const StockType: WideString); safecall;
    procedure Set_LabelGapManual(retval: WordBool); safecall;
    function Get_LabelGapManual: WordBool; safecall;
    procedure Set_LabelGapHorizontal(units: BtUnits; retval: Single); safecall;
    function Get_LabelGapHorizontal(units: BtUnits): Single; safecall;
    procedure Set_LabelGapVertical(units: BtUnits; retval: Single); safecall;
    function Get_LabelGapVertical(units: BtUnits): Single; safecall;
    procedure Set_Mirror(retval: WordBool); safecall;
    function Get_Mirror: WordBool; safecall;
    procedure Set_Inverse(retval: WordBool); safecall;
    function Get_Inverse: WordBool; safecall;
    function Get_Tray: WideString; safecall;
    procedure Set_Tray(const retval: WideString); safecall;
    function Get_MediaHandling: MediaHandling; safecall;
    property StockCategory: WideString read Get_StockCategory;
    property StockType: WideString read Get_StockType;
    property PaperName: WideString read Get_PaperName write Set_PaperName;
    property PaperID: Integer read Get_PaperID write Set_PaperID;
    property Orientation: BtOrientation read Get_Orientation write Set_Orientation;
    property LabelColumns: Integer read Get_LabelColumns write Set_LabelColumns;
    property LabelRows: Integer read Get_LabelRows write Set_LabelRows;
    property LabelSizeManual: WordBool read Get_LabelSizeManual write Set_LabelSizeManual;
    property LabelShape: BtShape read Get_LabelShape write Set_LabelShape;
    property LabelCorners: BtShape read Get_LabelCorners write Set_LabelCorners;
    property LabelHole: WordBool read Get_LabelHole write Set_LabelHole;
    property PaperWidth[units: BtUnits]: Single read Get_PaperWidth write Set_PaperWidth;
    property PaperHeight[units: BtUnits]: Single read Get_PaperHeight write Set_PaperHeight;
    property MarginLeft[units: BtUnits]: Single read Get_MarginLeft write Set_MarginLeft;
    property MarginRight[units: BtUnits]: Single read Get_MarginRight write Set_MarginRight;
    property MarginTop[units: BtUnits]: Single read Get_MarginTop write Set_MarginTop;
    property MarginBottom[units: BtUnits]: Single read Get_MarginBottom write Set_MarginBottom;
    property LabelWidth[units: BtUnits]: Single read Get_LabelWidth write Set_LabelWidth;
    property LabelHeight[units: BtUnits]: Single read Get_LabelHeight write Set_LabelHeight;
    property LabelHoleDiameter[units: BtUnits]: Single read Get_LabelHoleDiameter write Set_LabelHoleDiameter;
    property Valid: WordBool read Get_Valid;
    property LabelGapManual: WordBool read Get_LabelGapManual write Set_LabelGapManual;
    property LabelGapHorizontal[units: BtUnits]: Single read Get_LabelGapHorizontal write Set_LabelGapHorizontal;
    property LabelGapVertical[units: BtUnits]: Single read Get_LabelGapVertical write Set_LabelGapVertical;
    property Mirror: WordBool read Get_Mirror write Set_Mirror;
    property Inverse: WordBool read Get_Inverse write Set_Inverse;
    property Tray: WideString read Get_Tray write Set_Tray;
    property MediaHandling: MediaHandling read Get_MediaHandling;
  end;

// *********************************************************************//
// DispIntf:  IBtPageSetupDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6BF825B8-825A-4986-B4D4-F134112C1F97}
// *********************************************************************//
  IBtPageSetupDisp = dispinterface
    ['{6BF825B8-825A-4986-B4D4-F134112C1F97}']
    property StockCategory: WideString readonly dispid 1;
    property StockType: WideString readonly dispid 2;
    property PaperName: WideString dispid 3;
    property PaperID: Integer dispid 4;
    property Orientation: BtOrientation dispid 5;
    property LabelColumns: Integer dispid 6;
    property LabelRows: Integer dispid 7;
    property LabelSizeManual: WordBool dispid 8;
    property LabelShape: BtShape dispid 9;
    property LabelCorners: BtShape dispid 10;
    property LabelHole: WordBool dispid 11;
    property PaperWidth[units: BtUnits]: Single dispid 12;
    property PaperHeight[units: BtUnits]: Single dispid 13;
    property MarginLeft[units: BtUnits]: Single dispid 14;
    property MarginRight[units: BtUnits]: Single dispid 15;
    property MarginTop[units: BtUnits]: Single dispid 16;
    property MarginBottom[units: BtUnits]: Single dispid 17;
    property LabelWidth[units: BtUnits]: Single dispid 18;
    property LabelHeight[units: BtUnits]: Single dispid 19;
    property LabelHoleDiameter[units: BtUnits]: Single dispid 20;
    property Valid: WordBool readonly dispid 21;
    procedure SetStock(const StockCategory: WideString; const StockType: WideString); dispid 23;
    property LabelGapManual: WordBool dispid 24;
    property LabelGapHorizontal[units: BtUnits]: Single dispid 25;
    property LabelGapVertical[units: BtUnits]: Single dispid 26;
    property Mirror: WordBool dispid 27;
    property Inverse: WordBool dispid 28;
    property Tray: WideString dispid 29;
    property MediaHandling: MediaHandling readonly dispid 30;
  end;

// *********************************************************************//
// DispIntf:  DBtPageSetup
// Flags:     (4112) Hidden Dispatchable
// GUID:      {62524E94-C8C9-4CF9-8403-9897381DEE95}
// *********************************************************************//
  DBtPageSetup = dispinterface
    ['{62524E94-C8C9-4CF9-8403-9897381DEE95}']
    property LabelHeight[units: BtUnits]: Single dispid 19;
    property LabelWidth[units: BtUnits]: Single dispid 18;
    property LabelGapVertical[units: BtUnits]: Single dispid 26;
    property LabelGapHorizontal[units: BtUnits]: Single dispid 25;
    property PaperWidth[units: BtUnits]: Single dispid 12;
    property PaperHeight[units: BtUnits]: Single dispid 13;
    property LabelHoleDiameter[units: BtUnits]: Single dispid 20;
    procedure SetStock(const StockCategory: WideString; const StockType: WideString); dispid 23;
    property MarginBottom[units: BtUnits]: Single dispid 17;
    property MarginTop[units: BtUnits]: Single dispid 16;
    property MarginLeft[units: BtUnits]: Single dispid 14;
    property MarginRight[units: BtUnits]: Single dispid 15;
    property MediaHandling: IDispatch dispid 30;
    property Tray: WideString dispid 29;
    property Inverse: WordBool dispid 28;
    property Mirror: WordBool dispid 27;
    property LabelGapManual: WordBool dispid 24;
    property Valid: WordBool dispid 21;
    property LabelHole: WordBool dispid 11;
    property LabelCorners: BtShape dispid 10;
    property LabelShape: BtShape dispid 9;
    property LabelSizeManual: WordBool dispid 8;
    property LabelRows: Integer dispid 7;
    property LabelColumns: Integer dispid 6;
    property Orientation: BtOrientation dispid 5;
    property PaperID: Integer dispid 4;
    property PaperName: WideString dispid 3;
    property StockType: WideString dispid 2;
    property StockCategory: WideString dispid 1;
  end;

// *********************************************************************//
// Interface: IBtMediaHandling
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D21AED41-7F63-4572-9976-EC506FCEBC19}
// *********************************************************************//
  IBtMediaHandling = interface(IDispatch)
    ['{D21AED41-7F63-4572-9976-EC506FCEBC19}']
    procedure Set_Action(retval: BtMediaHandlingAction); safecall;
    function Get_Action: BtMediaHandlingAction; safecall;
    procedure Set_Occurrence(retval: BtMediaHandlingOccurrence); safecall;
    function Get_Occurrence: BtMediaHandlingOccurrence; safecall;
    procedure Set_DataItemType(retval: BtMediaHandlingDataItemType); safecall;
    function Get_DataItemType: BtMediaHandlingDataItemType; safecall;
    procedure Set_DataItemName(const retval: WideString); safecall;
    function Get_DataItemName: WideString; safecall;
    procedure Set_NumberOfLabels(retval: Integer); safecall;
    function Get_NumberOfLabels: Integer; safecall;
    procedure Set_IgnoreCase(retval: WordBool); safecall;
    function Get_IgnoreCase: WordBool; safecall;
    property Action: BtMediaHandlingAction read Get_Action write Set_Action;
    property Occurrence: BtMediaHandlingOccurrence read Get_Occurrence write Set_Occurrence;
    property DataItemType: BtMediaHandlingDataItemType read Get_DataItemType write Set_DataItemType;
    property DataItemName: WideString read Get_DataItemName write Set_DataItemName;
    property NumberOfLabels: Integer read Get_NumberOfLabels write Set_NumberOfLabels;
    property IgnoreCase: WordBool read Get_IgnoreCase write Set_IgnoreCase;
  end;

// *********************************************************************//
// DispIntf:  IBtMediaHandlingDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D21AED41-7F63-4572-9976-EC506FCEBC19}
// *********************************************************************//
  IBtMediaHandlingDisp = dispinterface
    ['{D21AED41-7F63-4572-9976-EC506FCEBC19}']
    property Action: BtMediaHandlingAction dispid 1;
    property Occurrence: BtMediaHandlingOccurrence dispid 2;
    property DataItemType: BtMediaHandlingDataItemType dispid 3;
    property DataItemName: WideString dispid 4;
    property NumberOfLabels: Integer dispid 5;
    property IgnoreCase: WordBool dispid 6;
  end;

// *********************************************************************//
// DispIntf:  DBtMediaHandling
// Flags:     (4112) Hidden Dispatchable
// GUID:      {DA43F695-C68E-4CD5-8675-03181F4281E5}
// *********************************************************************//
  DBtMediaHandling = dispinterface
    ['{DA43F695-C68E-4CD5-8675-03181F4281E5}']
    property Action: BtMediaHandlingAction dispid 1;
    property Occurrence: BtMediaHandlingOccurrence dispid 2;
    property DataItemType: BtMediaHandlingDataItemType dispid 3;
    property DataItemName: WideString dispid 4;
    property NumberOfLabels: Integer dispid 5;
    property IgnoreCase: WordBool dispid 6;
  end;

// *********************************************************************//
// Interface: IBtPrintSetup
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C35295CA-7A00-4FDC-8A24-D9C680E82CF0}
// *********************************************************************//
  IBtPrintSetup = interface(IDispatch)
    ['{C35295CA-7A00-4FDC-8A24-D9C680E82CF0}']
    function Get_Performance: Performance; safecall;
    function Get_Cache: Cache; safecall;
    function Get_PrintMethod: PrintMethod; safecall;
    procedure Set_AutoPrintAgain(retval: WordBool); safecall;
    function Get_AutoPrintAgain: WordBool; safecall;
    procedure Set_IdenticalCopiesOfLabel(retval: SYSINT); safecall;
    function Get_IdenticalCopiesOfLabel: SYSINT; safecall;
    procedure Set_NumberSerializedLabels(retval: SYSINT); safecall;
    function Get_NumberSerializedLabels: SYSINT; safecall;
    procedure Set_RefreshDatabases(retval: WordBool); safecall;
    function Get_RefreshDatabases: WordBool; safecall;
    procedure Set_LogPrintJob(retval: WordBool); safecall;
    function Get_LogPrintJob: WordBool; safecall;
    function Get_Printer: WideString; safecall;
    procedure Set_PrintToFile(retval: WordBool); safecall;
    function Get_PrintToFile: WordBool; safecall;
    procedure Set_UseDatabase(retval: WordBool); safecall;
    function Get_UseDatabase: WordBool; safecall;
    procedure Set_Printer(const retval: WideString); safecall;
    property Performance: Performance read Get_Performance;
    property Cache: Cache read Get_Cache;
    property PrintMethod: PrintMethod read Get_PrintMethod;
    property AutoPrintAgain: WordBool read Get_AutoPrintAgain write Set_AutoPrintAgain;
    property IdenticalCopiesOfLabel: SYSINT read Get_IdenticalCopiesOfLabel write Set_IdenticalCopiesOfLabel;
    property NumberSerializedLabels: SYSINT read Get_NumberSerializedLabels write Set_NumberSerializedLabels;
    property RefreshDatabases: WordBool read Get_RefreshDatabases write Set_RefreshDatabases;
    property LogPrintJob: WordBool read Get_LogPrintJob write Set_LogPrintJob;
    property Printer: WideString read Get_Printer write Set_Printer;
    property PrintToFile: WordBool read Get_PrintToFile write Set_PrintToFile;
    property UseDatabase: WordBool read Get_UseDatabase write Set_UseDatabase;
  end;

// *********************************************************************//
// DispIntf:  IBtPrintSetupDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C35295CA-7A00-4FDC-8A24-D9C680E82CF0}
// *********************************************************************//
  IBtPrintSetupDisp = dispinterface
    ['{C35295CA-7A00-4FDC-8A24-D9C680E82CF0}']
    property Performance: Performance readonly dispid 1;
    property Cache: Cache readonly dispid 2;
    property PrintMethod: PrintMethod readonly dispid 3;
    property AutoPrintAgain: WordBool dispid 4;
    property IdenticalCopiesOfLabel: SYSINT dispid 5;
    property NumberSerializedLabels: SYSINT dispid 6;
    property RefreshDatabases: WordBool dispid 7;
    property LogPrintJob: WordBool dispid 8;
    property Printer: WideString dispid 9;
    property PrintToFile: WordBool dispid 10;
    property UseDatabase: WordBool dispid 11;
  end;

// *********************************************************************//
// DispIntf:  DBtPrintSetup
// Flags:     (4112) Hidden Dispatchable
// GUID:      {7C88C498-363B-40D1-91EE-F970653E4C7E}
// *********************************************************************//
  DBtPrintSetup = dispinterface
    ['{7C88C498-363B-40D1-91EE-F970653E4C7E}']
    property Performance: IDispatch dispid 1;
    property Cache: IDispatch dispid 2;
    property PrintMethod: IDispatch dispid 3;
    property AutoPrintAgain: WordBool dispid 4;
    property IdenticalCopiesOfLabel: SYSINT dispid 5;
    property NumberSerializedLabels: SYSINT dispid 6;
    property Printer: WideString dispid 9;
    property PrintToFile: WordBool dispid 10;
    property UseDatabase: WordBool dispid 11;
  end;

// *********************************************************************//
// Interface: IBtPerformance
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F3FE3E31-4D1C-4F8E-94DC-FF6255AFB087}
// *********************************************************************//
  IBtPerformance = interface(IDispatch)
    ['{F3FE3E31-4D1C-4F8E-94DC-FF6255AFB087}']
    procedure Set_AllowStaticGraphics(retval: WordBool); safecall;
    function Get_AllowStaticGraphics: WordBool; safecall;
    procedure Set_AllowStaticObjects(retval: WordBool); safecall;
    function Get_AllowStaticObjects: WordBool; safecall;
    procedure Set_AllowSerialization(retval: WordBool); safecall;
    function Get_AllowSerialization: WordBool; safecall;
    procedure Set_AllowVariableDataOptimization(retval: WordBool); safecall;
    function Get_AllowVariableDataOptimization: WordBool; safecall;
    procedure Set_AllowGraphicsCaching(retval: WordBool); safecall;
    function Get_AllowGraphicsCaching: WordBool; safecall;
    procedure Set_AllowFormatCaching(retval: WordBool); safecall;
    function Get_AllowFormatCaching: WordBool; safecall;
    procedure Set_WarnWhenUsingTrueTypeFonts(retval: WordBool); safecall;
    function Get_WarnWhenUsingTrueTypeFonts: WordBool; safecall;
    property AllowStaticGraphics: WordBool read Get_AllowStaticGraphics write Set_AllowStaticGraphics;
    property AllowStaticObjects: WordBool read Get_AllowStaticObjects write Set_AllowStaticObjects;
    property AllowSerialization: WordBool read Get_AllowSerialization write Set_AllowSerialization;
    property AllowVariableDataOptimization: WordBool read Get_AllowVariableDataOptimization write Set_AllowVariableDataOptimization;
    property AllowGraphicsCaching: WordBool read Get_AllowGraphicsCaching write Set_AllowGraphicsCaching;
    property AllowFormatCaching: WordBool read Get_AllowFormatCaching write Set_AllowFormatCaching;
    property WarnWhenUsingTrueTypeFonts: WordBool read Get_WarnWhenUsingTrueTypeFonts write Set_WarnWhenUsingTrueTypeFonts;
  end;

// *********************************************************************//
// DispIntf:  IBtPerformanceDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F3FE3E31-4D1C-4F8E-94DC-FF6255AFB087}
// *********************************************************************//
  IBtPerformanceDisp = dispinterface
    ['{F3FE3E31-4D1C-4F8E-94DC-FF6255AFB087}']
    property AllowStaticGraphics: WordBool dispid 1;
    property AllowStaticObjects: WordBool dispid 2;
    property AllowSerialization: WordBool dispid 3;
    property AllowVariableDataOptimization: WordBool dispid 4;
    property AllowGraphicsCaching: WordBool dispid 5;
    property AllowFormatCaching: WordBool dispid 6;
    property WarnWhenUsingTrueTypeFonts: WordBool dispid 7;
  end;

// *********************************************************************//
// DispIntf:  DBtPerformance
// Flags:     (4112) Hidden Dispatchable
// GUID:      {E398EB62-3AEA-4C41-9674-9BEE973F3377}
// *********************************************************************//
  DBtPerformance = dispinterface
    ['{E398EB62-3AEA-4C41-9674-9BEE973F3377}']
    property AllowStaticGraphics: WordBool dispid 1;
    property AllowStaticObjects: WordBool dispid 2;
    property AllowSerialization: WordBool dispid 3;
    property AllowVariableDataOptimization: WordBool dispid 4;
    property AllowGraphicsCaching: WordBool dispid 5;
    property AllowFormatCaching: WordBool dispid 6;
    property WarnWhenUsingTrueTypeFonts: WordBool dispid 7;
  end;

// *********************************************************************//
// Interface: IBtCache
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {60F959CD-13EB-4C72-8BD2-787EA11A0435}
// *********************************************************************//
  IBtCache = interface(IDispatch)
    ['{60F959CD-13EB-4C72-8BD2-787EA11A0435}']
    procedure Set_FlushInterval(retval: BtCacheFlushInterval); safecall;
    function Get_FlushInterval: BtCacheFlushInterval; safecall;
    procedure Flush; safecall;
    property FlushInterval: BtCacheFlushInterval read Get_FlushInterval write Set_FlushInterval;
  end;

// *********************************************************************//
// DispIntf:  IBtCacheDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {60F959CD-13EB-4C72-8BD2-787EA11A0435}
// *********************************************************************//
  IBtCacheDisp = dispinterface
    ['{60F959CD-13EB-4C72-8BD2-787EA11A0435}']
    property FlushInterval: BtCacheFlushInterval dispid 1;
    procedure Flush; dispid 2;
  end;

// *********************************************************************//
// DispIntf:  DBtCache
// Flags:     (4112) Hidden Dispatchable
// GUID:      {491AB5A2-F834-480B-9164-278D6A5DC9BB}
// *********************************************************************//
  DBtCache = dispinterface
    ['{491AB5A2-F834-480B-9164-278D6A5DC9BB}']
    procedure Flush; dispid 2;
    property FlushInterval: BtCacheFlushInterval dispid 1;
  end;

// *********************************************************************//
// Interface: IBtPrintMethod
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {234D7F41-F5CF-47F9-A7F1-4DCAD70E105A}
// *********************************************************************//
  IBtPrintMethod = interface(IDispatch)
    ['{234D7F41-F5CF-47F9-A7F1-4DCAD70E105A}']
    procedure Set_TrueTypeText(retval: BtTextPrintMethod); safecall;
    function Get_TrueTypeText: BtTextPrintMethod; safecall;
    procedure Set_Unsupported1DBarCodes(retval: BtBarCodePrintMethod); safecall;
    function Get_Unsupported1DBarCodes: BtBarCodePrintMethod; safecall;
    procedure Set_Unsupported2DBarCodes(retval: BtBarCodePrintMethod); safecall;
    function Get_Unsupported2DBarCodes: BtBarCodePrintMethod; safecall;
    procedure Set_Lines(retval: BtLinePrintMethod); safecall;
    function Get_Lines: BtLinePrintMethod; safecall;
    procedure Set_Boxes(retval: BtBoxPrintMethod); safecall;
    function Get_Boxes: BtBoxPrintMethod; safecall;
    procedure Set_Ellipses(retval: BtEllipsePrintMethod); safecall;
    function Get_Ellipses: BtEllipsePrintMethod; safecall;
    property TrueTypeText: BtTextPrintMethod read Get_TrueTypeText write Set_TrueTypeText;
    property Unsupported1DBarCodes: BtBarCodePrintMethod read Get_Unsupported1DBarCodes write Set_Unsupported1DBarCodes;
    property Unsupported2DBarCodes: BtBarCodePrintMethod read Get_Unsupported2DBarCodes write Set_Unsupported2DBarCodes;
    property Lines: BtLinePrintMethod read Get_Lines write Set_Lines;
    property Boxes: BtBoxPrintMethod read Get_Boxes write Set_Boxes;
    property Ellipses: BtEllipsePrintMethod read Get_Ellipses write Set_Ellipses;
  end;

// *********************************************************************//
// DispIntf:  IBtPrintMethodDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {234D7F41-F5CF-47F9-A7F1-4DCAD70E105A}
// *********************************************************************//
  IBtPrintMethodDisp = dispinterface
    ['{234D7F41-F5CF-47F9-A7F1-4DCAD70E105A}']
    property TrueTypeText: BtTextPrintMethod dispid 1;
    property Unsupported1DBarCodes: BtBarCodePrintMethod dispid 2;
    property Unsupported2DBarCodes: BtBarCodePrintMethod dispid 3;
    property Lines: BtLinePrintMethod dispid 4;
    property Boxes: BtBoxPrintMethod dispid 5;
    property Ellipses: BtEllipsePrintMethod dispid 6;
  end;

// *********************************************************************//
// DispIntf:  DBtPrintMethod
// Flags:     (4112) Hidden Dispatchable
// GUID:      {F0461615-1F0E-40FF-A637-286050B51366}
// *********************************************************************//
  DBtPrintMethod = dispinterface
    ['{F0461615-1F0E-40FF-A637-286050B51366}']
    property TrueTypeText: BtTextPrintMethod dispid 1;
    property Unsupported1DBarCodes: BtBarCodePrintMethod dispid 2;
    property Unsupported2DBarCodes: BtBarCodePrintMethod dispid 3;
    property Lines: BtLinePrintMethod dispid 4;
    property Boxes: BtBoxPrintMethod dispid 5;
    property Ellipses: BtEllipsePrintMethod dispid 6;
  end;

// *********************************************************************//
// Interface: IBtPrinterCodeTemplate
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {022288E5-B441-4002-A531-F102F2999505}
// *********************************************************************//
  IBtPrinterCodeTemplate = interface(IDispatch)
    ['{022288E5-B441-4002-A531-F102F2999505}']
    function Get_PrintMethod: PrintMethod; safecall;
    function Get_Performance: Performance; safecall;
    function Get_Job: Job; safecall;
    function Export(const PrintSystemName: WideString; ExportType: BtPctExportType; 
                    const FormatOrCombinedExportPath: WideString; const DataExportPath: WideString; 
                    var Messages: IDispatch): WordBool; safecall;
    procedure Set_ExportAsVersion(retval: BtPctExportVersion); safecall;
    function Get_ExportAsVersion: BtPctExportVersion; safecall;
    property PrintMethod: PrintMethod read Get_PrintMethod;
    property Performance: Performance read Get_Performance;
    property Job: Job read Get_Job;
    property ExportAsVersion: BtPctExportVersion read Get_ExportAsVersion write Set_ExportAsVersion;
  end;

// *********************************************************************//
// DispIntf:  IBtPrinterCodeTemplateDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {022288E5-B441-4002-A531-F102F2999505}
// *********************************************************************//
  IBtPrinterCodeTemplateDisp = dispinterface
    ['{022288E5-B441-4002-A531-F102F2999505}']
    property PrintMethod: PrintMethod readonly dispid 1;
    property Performance: Performance readonly dispid 2;
    property Job: Job readonly dispid 3;
    function Export(const PrintSystemName: WideString; ExportType: BtPctExportType; 
                    const FormatOrCombinedExportPath: WideString; const DataExportPath: WideString; 
                    var Messages: IDispatch): WordBool; dispid 4;
    property ExportAsVersion: BtPctExportVersion dispid 5;
  end;

// *********************************************************************//
// DispIntf:  DBtPrinterCodeTemplate
// Flags:     (4112) Hidden Dispatchable
// GUID:      {B1FE2B7F-7E02-4C3F-BABF-0B9EF28AFCF8}
// *********************************************************************//
  DBtPrinterCodeTemplate = dispinterface
    ['{B1FE2B7F-7E02-4C3F-BABF-0B9EF28AFCF8}']
    function Export(const PrintSystemName: WideString; ExportType: BtPctExportType; 
                    const FormatOrCombinedExportPath: WideString; const DataExportPath: WideString; 
                    var Messages: IDispatch): WordBool; dispid 4;
    property PrintMethod: IDispatch dispid 1;
    property Performance: IDispatch dispid 2;
    property ExportAsVersion: BtPctExportVersion dispid 5;
    property Job: IDispatch dispid 3;
  end;

// *********************************************************************//
// Interface: IBtJob
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3E062404-47D8-41BC-86D8-664471F63602}
// *********************************************************************//
  IBtJob = interface(IDispatch)
    ['{3E062404-47D8-41BC-86D8-664471F63602}']
    procedure Set_FormatIdType(retval: BtFormatIdValueType); safecall;
    function Get_FormatIdType: BtFormatIdValueType; safecall;
    procedure Set_FormatId(const retval: WideString); safecall;
    function Get_FormatId: WideString; safecall;
    procedure Set_PrinterCopiesType(retval: BtPrinterCopiesValueType); safecall;
    function Get_PrinterCopiesType: BtPrinterCopiesValueType; safecall;
    procedure Set_PrinterCopies(const retval: WideString); safecall;
    function Get_PrinterCopies: WideString; safecall;
    procedure Set_PrinterSerializedCopiesType(retval: BtPrinterSerializedCopiesValueType); safecall;
    function Get_PrinterSerializedCopiesType: BtPrinterSerializedCopiesValueType; safecall;
    procedure Set_PrinterSerializedCopies(const retval: WideString); safecall;
    function Get_PrinterSerializedCopies: WideString; safecall;
    procedure Set_PrinterBatchCopiesType(retval: BtPrinterBatchCopiesValueType); safecall;
    function Get_PrinterBatchCopiesType: BtPrinterBatchCopiesValueType; safecall;
    procedure Set_PrinterBatchCopies(const retval: WideString); safecall;
    function Get_PrinterBatchCopies: WideString; safecall;
    property FormatIdType: BtFormatIdValueType read Get_FormatIdType write Set_FormatIdType;
    property FormatId: WideString read Get_FormatId write Set_FormatId;
    property PrinterCopiesType: BtPrinterCopiesValueType read Get_PrinterCopiesType write Set_PrinterCopiesType;
    property PrinterCopies: WideString read Get_PrinterCopies write Set_PrinterCopies;
    property PrinterSerializedCopiesType: BtPrinterSerializedCopiesValueType read Get_PrinterSerializedCopiesType write Set_PrinterSerializedCopiesType;
    property PrinterSerializedCopies: WideString read Get_PrinterSerializedCopies write Set_PrinterSerializedCopies;
    property PrinterBatchCopiesType: BtPrinterBatchCopiesValueType read Get_PrinterBatchCopiesType write Set_PrinterBatchCopiesType;
    property PrinterBatchCopies: WideString read Get_PrinterBatchCopies write Set_PrinterBatchCopies;
  end;

// *********************************************************************//
// DispIntf:  IBtJobDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3E062404-47D8-41BC-86D8-664471F63602}
// *********************************************************************//
  IBtJobDisp = dispinterface
    ['{3E062404-47D8-41BC-86D8-664471F63602}']
    property FormatIdType: BtFormatIdValueType dispid 1;
    property FormatId: WideString dispid 2;
    property PrinterCopiesType: BtPrinterCopiesValueType dispid 3;
    property PrinterCopies: WideString dispid 4;
    property PrinterSerializedCopiesType: BtPrinterSerializedCopiesValueType dispid 5;
    property PrinterSerializedCopies: WideString dispid 6;
    property PrinterBatchCopiesType: BtPrinterBatchCopiesValueType dispid 7;
    property PrinterBatchCopies: WideString dispid 8;
  end;

// *********************************************************************//
// DispIntf:  DBtJob
// Flags:     (4112) Hidden Dispatchable
// GUID:      {53C11C77-97F9-4E5D-8BA7-83B65D26B473}
// *********************************************************************//
  DBtJob = dispinterface
    ['{53C11C77-97F9-4E5D-8BA7-83B65D26B473}']
    property FormatIdValueType: BtFormatIdValueType dispid 1;
    property FormatIdValue: WideString dispid 2;
    property PrinterCopiesValueType: BtPrinterCopiesValueType dispid 3;
    property PrinterCopiesValue: WideString dispid 4;
    property PrinterSerializedCopiesValueType: BtPrinterSerializedCopiesValueType dispid 5;
    property PrinterSerializedCopiesValue: WideString dispid 6;
    property PrinterBatchCopiesValueType: BtPrinterBatchCopiesValueType dispid 7;
    property PrinterBatchCopiesValue: WideString dispid 8;
  end;

// *********************************************************************//
// Interface: IBtDesignObjects
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8C28D1E8-6056-4EC8-8AE6-4265D198A5A5}
// *********************************************************************//
  IBtDesignObjects = interface(IDispatch)
    ['{8C28D1E8-6056-4EC8-8AE6-4265D198A5A5}']
    function Get_Count: Integer; safecall;
    function Item(var Index: OleVariant): DesignObject; safecall;
    function Get_NewEnum: IUnknown; safecall;
    function Find(const Name: WideString): DesignObject; safecall;
    property Count: Integer read Get_Count;
    property NewEnum: IUnknown read Get_NewEnum;
  end;

// *********************************************************************//
// DispIntf:  IBtDesignObjectsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8C28D1E8-6056-4EC8-8AE6-4265D198A5A5}
// *********************************************************************//
  IBtDesignObjectsDisp = dispinterface
    ['{8C28D1E8-6056-4EC8-8AE6-4265D198A5A5}']
    property Count: Integer readonly dispid 1;
    function Item(var Index: OleVariant): DesignObject; dispid 2;
    property NewEnum: IUnknown readonly dispid -4;
    function Find(const Name: WideString): DesignObject; dispid 3;
  end;

// *********************************************************************//
// DispIntf:  DBtDesignObjects
// Flags:     (4112) Hidden Dispatchable
// GUID:      {87F92F53-9EFC-4D32-83A6-E371E9CB222A}
// *********************************************************************//
  DBtDesignObjects = dispinterface
    ['{87F92F53-9EFC-4D32-83A6-E371E9CB222A}']
    function Find(const Name: WideString): IDispatch; dispid 3;
    function Item(var Index: OleVariant): IDispatch; dispid 2;
    property NewEnum: IUnknown dispid -4;
    property Count: Integer dispid 1;
  end;

// *********************************************************************//
// Interface: IBtDesignObject
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8FC5B386-0AFC-469D-AAA5-3F0E3BC26367}
// *********************************************************************//
  IBtDesignObject = interface(IDispatch)
    ['{8FC5B386-0AFC-469D-AAA5-3F0E3BC26367}']
    function Get_Name: WideString; safecall;
    function Get_Value: WideString; safecall;
    function Get_type_: BtObjectType; safecall;
    procedure Set_X(retval: Double); safecall;
    function Get_X: Double; safecall;
    procedure Set_Y(retval: Double); safecall;
    function Get_Y: Double; safecall;
    procedure Set_RotationAngle(retval: Double); safecall;
    function Get_RotationAngle: Double; safecall;
    procedure Set_DoNotPrint(retval: WordBool); safecall;
    function Get_DoNotPrint: WordBool; safecall;
    procedure Set_Comment(const retval: WideString); safecall;
    function Get_Comment: WideString; safecall;
    procedure Set_Width(retval: Double); safecall;
    function Get_Width: Double; safecall;
    procedure Set_Height(retval: Double); safecall;
    function Get_Height: Double; safecall;
    procedure Set_Length(retval: Double); safecall;
    function Get_Length: Double; safecall;
    procedure Set_LineThickness(retval: Double); safecall;
    function Get_LineThickness: Double; safecall;
    procedure Set_LineStartX(retval: Double); safecall;
    function Get_LineStartX: Double; safecall;
    procedure Set_LineStartY(retval: Double); safecall;
    function Get_LineStartY: Double; safecall;
    procedure Set_LineEndX(retval: Double); safecall;
    function Get_LineEndX: Double; safecall;
    procedure Set_LineEndY(retval: Double); safecall;
    function Get_LineEndY: Double; safecall;
    procedure Set_CornerRadius(retval: Double); safecall;
    function Get_CornerRadius: Double; safecall;
    procedure Set_LineColor(retval: LongWord); safecall;
    function Get_LineColor: LongWord; safecall;
    procedure Set_FillColor(retval: LongWord); safecall;
    function Get_FillColor: LongWord; safecall;
    procedure Set_BarCodeColor(retval: LongWord); safecall;
    function Get_BarCodeColor: LongWord; safecall;
    procedure Set_TextColor(retval: LongWord); safecall;
    function Get_TextColor: LongWord; safecall;
    procedure Set_TextBackgroundColor(retval: LongWord); safecall;
    function Get_TextBackgroundColor: LongWord; safecall;
    procedure Set_FontName(const retval: WideString); safecall;
    function Get_FontName: WideString; safecall;
    procedure Set_FontSize(retval: Double); safecall;
    function Get_FontSize: Double; safecall;
    procedure Set_FontScale(retval: Double); safecall;
    function Get_FontScale: Double; safecall;
    procedure Set_FontWeight(retval: BtFontWeight); safecall;
    function Get_FontWeight: BtFontWeight; safecall;
    procedure Set_FontBold(retval: WordBool); safecall;
    function Get_FontBold: WordBool; safecall;
    procedure Set_FontItalic(retval: WordBool); safecall;
    function Get_FontItalic: WordBool; safecall;
    procedure Set_FontUnderline(retval: WordBool); safecall;
    function Get_FontUnderline: WordBool; safecall;
    procedure Set_FontStrikeout(retval: WordBool); safecall;
    function Get_FontStrikeout: WordBool; safecall;
    procedure Set_FontScript(retval: BtFontScript); safecall;
    function Get_FontScript: BtFontScript; safecall;
    function Get_HumanReadableValue: WideString; safecall;
    function Get_EncodedValue: WideString; safecall;
    procedure Set_MirrorHorizontal(retval: WordBool); safecall;
    function Get_MirrorHorizontal: WordBool; safecall;
    procedure Set_MirrorVertical(retval: WordBool); safecall;
    function Get_MirrorVertical: WordBool; safecall;
    procedure Set_PercentWidth(retval: Integer); safecall;
    function Get_PercentWidth: Integer; safecall;
    procedure Set_PercentHeight(retval: Integer); safecall;
    function Get_PercentHeight: Integer; safecall;
    procedure Set_PreserveAspectRatio(retval: WordBool); safecall;
    function Get_PreserveAspectRatio: WordBool; safecall;
    procedure Set_PicturePath(const retval: WideString); safecall;
    function Get_PicturePath: WideString; safecall;
    procedure ExportToClipboard(Color: BtColors; Resolution: BtResolution); safecall;
    procedure ExportToFile(const FileName: WideString; const FileType: WideString; Color: BtColors; 
                           Resolution: BtResolution; SaveOption: BtSaveOptions); safecall;
    property Name: WideString read Get_Name;
    property Value: WideString read Get_Value;
    property type_: BtObjectType read Get_type_;
    property X: Double read Get_X write Set_X;
    property Y: Double read Get_Y write Set_Y;
    property RotationAngle: Double read Get_RotationAngle write Set_RotationAngle;
    property DoNotPrint: WordBool read Get_DoNotPrint write Set_DoNotPrint;
    property Comment: WideString read Get_Comment write Set_Comment;
    property Width: Double read Get_Width write Set_Width;
    property Height: Double read Get_Height write Set_Height;
    property Length: Double read Get_Length write Set_Length;
    property LineThickness: Double read Get_LineThickness write Set_LineThickness;
    property LineStartX: Double read Get_LineStartX write Set_LineStartX;
    property LineStartY: Double read Get_LineStartY write Set_LineStartY;
    property LineEndX: Double read Get_LineEndX write Set_LineEndX;
    property LineEndY: Double read Get_LineEndY write Set_LineEndY;
    property CornerRadius: Double read Get_CornerRadius write Set_CornerRadius;
    property LineColor: LongWord read Get_LineColor write Set_LineColor;
    property FillColor: LongWord read Get_FillColor write Set_FillColor;
    property BarCodeColor: LongWord read Get_BarCodeColor write Set_BarCodeColor;
    property TextColor: LongWord read Get_TextColor write Set_TextColor;
    property TextBackgroundColor: LongWord read Get_TextBackgroundColor write Set_TextBackgroundColor;
    property FontName: WideString read Get_FontName write Set_FontName;
    property FontSize: Double read Get_FontSize write Set_FontSize;
    property FontScale: Double read Get_FontScale write Set_FontScale;
    property FontWeight: BtFontWeight read Get_FontWeight write Set_FontWeight;
    property FontBold: WordBool read Get_FontBold write Set_FontBold;
    property FontItalic: WordBool read Get_FontItalic write Set_FontItalic;
    property FontUnderline: WordBool read Get_FontUnderline write Set_FontUnderline;
    property FontStrikeout: WordBool read Get_FontStrikeout write Set_FontStrikeout;
    property FontScript: BtFontScript read Get_FontScript write Set_FontScript;
    property HumanReadableValue: WideString read Get_HumanReadableValue;
    property EncodedValue: WideString read Get_EncodedValue;
    property MirrorHorizontal: WordBool read Get_MirrorHorizontal write Set_MirrorHorizontal;
    property MirrorVertical: WordBool read Get_MirrorVertical write Set_MirrorVertical;
    property PercentWidth: Integer read Get_PercentWidth write Set_PercentWidth;
    property PercentHeight: Integer read Get_PercentHeight write Set_PercentHeight;
    property PreserveAspectRatio: WordBool read Get_PreserveAspectRatio write Set_PreserveAspectRatio;
    property PicturePath: WideString read Get_PicturePath write Set_PicturePath;
  end;

// *********************************************************************//
// DispIntf:  IBtDesignObjectDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8FC5B386-0AFC-469D-AAA5-3F0E3BC26367}
// *********************************************************************//
  IBtDesignObjectDisp = dispinterface
    ['{8FC5B386-0AFC-469D-AAA5-3F0E3BC26367}']
    property Name: WideString readonly dispid 2;
    property Value: WideString readonly dispid 1;
    property type_: BtObjectType readonly dispid 3;
    property X: Double dispid 4;
    property Y: Double dispid 5;
    property RotationAngle: Double dispid 6;
    property DoNotPrint: WordBool dispid 7;
    property Comment: WideString dispid 8;
    property Width: Double dispid 9;
    property Height: Double dispid 10;
    property Length: Double dispid 11;
    property LineThickness: Double dispid 12;
    property LineStartX: Double dispid 13;
    property LineStartY: Double dispid 14;
    property LineEndX: Double dispid 15;
    property LineEndY: Double dispid 16;
    property CornerRadius: Double dispid 17;
    property LineColor: LongWord dispid 100;
    property FillColor: LongWord dispid 101;
    property BarCodeColor: LongWord dispid 102;
    property TextColor: LongWord dispid 103;
    property TextBackgroundColor: LongWord dispid 104;
    property FontName: WideString dispid 200;
    property FontSize: Double dispid 201;
    property FontScale: Double dispid 202;
    property FontWeight: BtFontWeight dispid 203;
    property FontBold: WordBool dispid 204;
    property FontItalic: WordBool dispid 205;
    property FontUnderline: WordBool dispid 206;
    property FontStrikeout: WordBool dispid 207;
    property FontScript: BtFontScript dispid 208;
    property HumanReadableValue: WideString readonly dispid 1001;
    property EncodedValue: WideString readonly dispid 2001;
    property MirrorHorizontal: WordBool dispid 301;
    property MirrorVertical: WordBool dispid 302;
    property PercentWidth: Integer dispid 303;
    property PercentHeight: Integer dispid 304;
    property PreserveAspectRatio: WordBool dispid 305;
    property PicturePath: WideString dispid 306;
    procedure ExportToClipboard(Color: BtColors; Resolution: BtResolution); dispid 10001;
    procedure ExportToFile(const FileName: WideString; const FileType: WideString; Color: BtColors; 
                           Resolution: BtResolution; SaveOption: BtSaveOptions); dispid 10002;
  end;

// *********************************************************************//
// DispIntf:  DBtDesignObject
// Flags:     (4112) Hidden Dispatchable
// GUID:      {4FAD1843-63DC-4275-A5B6-D49B58CEB101}
// *********************************************************************//
  DBtDesignObject = dispinterface
    ['{4FAD1843-63DC-4275-A5B6-D49B58CEB101}']
    procedure ExportToFile(const FileName: WideString; const FileType: WideString; 
                           Colors: BtColors; Resolution: BtResolution; SaveOption: BtSaveOptions); dispid 10002;
    procedure ExportToClipboard(Colors: BtColors; Resolution: BtResolution); dispid 10001;
    property type_: BtObjectType dispid 3;
    property Name: WideString dispid 2;
    property X: Double dispid 4;
    property Y: Double dispid 5;
    property Value: WideString dispid 1;
    property Comment: WideString dispid 8;
    property RotationAngle: Double dispid 6;
    property Width: Double dispid 9;
    property Height: Double dispid 10;
    property CornerRadius: Double dispid 17;
    property LineStartX: Double dispid 13;
    property Length: Double dispid 11;
    property LineStartY: Double dispid 14;
    property LineEndX: Double dispid 15;
    property LineThickness: Double dispid 12;
    property LineColor: LongWord dispid 100;
    property LineEndY: Double dispid 16;
    property FillColor: LongWord dispid 101;
    property BarCodeColor: LongWord dispid 102;
    property DoNotPrint: WordBool dispid 7;
    property TextBackgroundColor: LongWord dispid 104;
    property FontName: WideString dispid 200;
    property FontSize: Double dispid 201;
    property FontScale: Double dispid 202;
    property FontWeight: BtFontWeight dispid 203;
    property FontBold: WordBool dispid 204;
    property FontItalic: WordBool dispid 205;
    property FontUnderline: WordBool dispid 206;
    property FontStrikeout: WordBool dispid 207;
    property PercentHeight: Double dispid 304;
    property MirrorHorizontal: WordBool dispid 301;
    property FontScript: BtFontScript dispid 208;
    property TextColor: LongWord dispid 103;
    property EncodedValue: WideString dispid 2001;
    property HumanReadableValue: WideString dispid 1001;
    property PicturePath: WideString dispid 306;
    property PercentWidth: Double dispid 303;
    property MirrorVertical: WordBool dispid 302;
    property PreserveAspectRatio: WordBool dispid 305;
  end;

// *********************************************************************//
// Interface: IBtViewRecordNavigator
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {30B7D99D-A6D0-4D57-BBF4-593E5C613E8C}
// *********************************************************************//
  IBtViewRecordNavigator = interface(IDispatch)
    ['{30B7D99D-A6D0-4D57-BBF4-593E5C613E8C}']
    procedure Set_Enabled(retval: WordBool); safecall;
    function Get_Enabled: WordBool; safecall;
    function Get_IsConnected: WordBool; safecall;
    procedure Set_CurrentRecord(retval: Integer); safecall;
    function Get_CurrentRecord: Integer; safecall;
    function Get_LastRecord: Integer; safecall;
    property Enabled: WordBool read Get_Enabled write Set_Enabled;
    property IsConnected: WordBool read Get_IsConnected;
    property CurrentRecord: Integer read Get_CurrentRecord write Set_CurrentRecord;
    property LastRecord: Integer read Get_LastRecord;
  end;

// *********************************************************************//
// DispIntf:  IBtViewRecordNavigatorDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {30B7D99D-A6D0-4D57-BBF4-593E5C613E8C}
// *********************************************************************//
  IBtViewRecordNavigatorDisp = dispinterface
    ['{30B7D99D-A6D0-4D57-BBF4-593E5C613E8C}']
    property Enabled: WordBool dispid 1;
    property IsConnected: WordBool readonly dispid 2;
    property CurrentRecord: Integer dispid 3;
    property LastRecord: Integer readonly dispid 4;
  end;

// *********************************************************************//
// DispIntf:  DBtViewRecordNavigator
// Flags:     (4112) Hidden Dispatchable
// GUID:      {BCC3D373-D9EE-4C45-8FA3-A41CFCC12D79}
// *********************************************************************//
  DBtViewRecordNavigator = dispinterface
    ['{BCC3D373-D9EE-4C45-8FA3-A41CFCC12D79}']
    property Enabled: WordBool dispid 1;
    property IsConnected: WordBool dispid 2;
    property CurrentRecord: Integer dispid 3;
    property LastRecord: Integer dispid 4;
  end;

// *********************************************************************//
// DispIntf:  IFormatEvents
// Flags:     (4096) Dispatchable
// GUID:      {2A91A78A-AE85-11DC-A4C8-B30156D89593}
// *********************************************************************//
  IFormatEvents = dispinterface
    ['{2A91A78A-AE85-11DC-A4C8-B30156D89593}']
    procedure OnNewPrintJob(const PrinterName: WideString; JobID: Integer); dispid 52;
  end;

// *********************************************************************//
// Interface: IBtFormats
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {66E43561-4379-11D2-B7D3-00104B639F6F}
// *********************************************************************//
  IBtFormats = interface(IDispatch)
    ['{66E43561-4379-11D2-B7D3-00104B639F6F}']
    function Get_Count: Integer; safecall;
    function Add: Format; safecall;
    function Item(var Index: OleVariant): Format; safecall;
    function Open(const FileName: WideString; CloseOutFirstFormat: WordBool; 
                  const UsePrinter: WideString): Format; safecall;
    function Get_NewEnum: IUnknown; safecall;
    function GetFormat(Index: OleVariant): Format; safecall;
    property Count: Integer read Get_Count;
    property NewEnum: IUnknown read Get_NewEnum;
  end;

// *********************************************************************//
// DispIntf:  IBtFormatsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {66E43561-4379-11D2-B7D3-00104B639F6F}
// *********************************************************************//
  IBtFormatsDisp = dispinterface
    ['{66E43561-4379-11D2-B7D3-00104B639F6F}']
    property Count: Integer readonly dispid 1;
    function Add: Format; dispid 2;
    function Item(var Index: OleVariant): Format; dispid 3;
    function Open(const FileName: WideString; CloseOutFirstFormat: WordBool; 
                  const UsePrinter: WideString): Format; dispid 4;
    property NewEnum: IUnknown readonly dispid -4;
    function GetFormat(Index: OleVariant): Format; dispid 5;
  end;

// *********************************************************************//
// DispIntf:  DBtFormats
// Flags:     (4112) Hidden Dispatchable
// GUID:      {EF2F3EA1-4147-11D2-BE48-004005A04EDF}
// *********************************************************************//
  DBtFormats = dispinterface
    ['{EF2F3EA1-4147-11D2-BE48-004005A04EDF}']
    function GetFormat(Index: OleVariant): IDispatch; dispid 5;
    function Add: IDispatch; dispid 2;
    function Open(const FileName: WideString; CloseOutFirstFormat: WordBool; 
                  const UsePrinter: WideString): IDispatch; dispid 4;
    function Item(var Index: OleVariant): IDispatch; dispid 3;
    property NewEnum: IUnknown dispid -4;
    property Count: Integer dispid 1;
  end;

// *********************************************************************//
// Interface: IBtWindow
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {66E4356B-4379-11D2-B7D3-00104B639F6F}
// *********************************************************************//
  IBtWindow = interface(IDispatch)
    ['{66E4356B-4379-11D2-B7D3-00104B639F6F}']
    procedure Set_Left(retval: Integer); safecall;
    function Get_Left: Integer; safecall;
    procedure Set_Top(retval: Integer); safecall;
    function Get_Top: Integer; safecall;
    procedure Set_Width(retval: Integer); safecall;
    function Get_Width: Integer; safecall;
    procedure Set_Height(retval: Integer); safecall;
    function Get_Height: Integer; safecall;
    procedure Set_WindowState(retval: BtWindowState); safecall;
    function Get_WindowState: BtWindowState; safecall;
    property Left: Integer read Get_Left write Set_Left;
    property Top: Integer read Get_Top write Set_Top;
    property Width: Integer read Get_Width write Set_Width;
    property Height: Integer read Get_Height write Set_Height;
    property WindowState: BtWindowState read Get_WindowState write Set_WindowState;
  end;

// *********************************************************************//
// DispIntf:  IBtWindowDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {66E4356B-4379-11D2-B7D3-00104B639F6F}
// *********************************************************************//
  IBtWindowDisp = dispinterface
    ['{66E4356B-4379-11D2-B7D3-00104B639F6F}']
    property Left: Integer dispid 1;
    property Top: Integer dispid 2;
    property Width: Integer dispid 3;
    property Height: Integer dispid 4;
    property WindowState: BtWindowState dispid 5;
  end;

// *********************************************************************//
// DispIntf:  DBtWindow
// Flags:     (4112) Hidden Dispatchable
// GUID:      {66E4356A-4379-11D2-B7D3-00104B639F6F}
// *********************************************************************//
  DBtWindow = dispinterface
    ['{66E4356A-4379-11D2-B7D3-00104B639F6F}']
    property Left: Integer dispid 1;
    property Top: Integer dispid 2;
    property Width: Integer dispid 3;
    property Height: Integer dispid 4;
    property WindowState: BtWindowState dispid 5;
  end;

// *********************************************************************//
// Interface: IBtLicenseServer
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {AC955B42-36D1-4AE9-894E-FE1C693CF07C}
// *********************************************************************//
  IBtLicenseServer = interface(IDispatch)
    ['{AC955B42-36D1-4AE9-894E-FE1C693CF07C}']
    procedure Set_Address(const retval: WideString); safecall;
    function Get_Address: WideString; safecall;
    procedure Set_Port(retval: SYSINT); safecall;
    function Get_Port: SYSINT; safecall;
    procedure Set_Timeout(retval: SYSINT); safecall;
    function Get_Timeout: SYSINT; safecall;
    function Get_IsConnected: WordBool; safecall;
    function Connect: WordBool; safecall;
    procedure Set_AlternateAddress(const retval: WideString); safecall;
    function Get_AlternateAddress: WideString; safecall;
    procedure Set_AlternatePort(retval: SYSINT); safecall;
    function Get_AlternatePort: SYSINT; safecall;
    procedure Set_AlternateTimeout(retval: SYSINT); safecall;
    function Get_AlternateTimeout: SYSINT; safecall;
    function Get_MaxAllowedPrinters: SYSINT; safecall;
    function Get_MaxAllowedUsers: SYSINT; safecall;
    procedure Set_Retries(retval: SYSINT); safecall;
    function Get_Retries: SYSINT; safecall;
    procedure Set_AlternateRetries(retval: SYSINT); safecall;
    function Get_AlternateRetries: SYSINT; safecall;
    property Address: WideString read Get_Address write Set_Address;
    property Port: SYSINT read Get_Port write Set_Port;
    property Timeout: SYSINT read Get_Timeout write Set_Timeout;
    property IsConnected: WordBool read Get_IsConnected;
    property AlternateAddress: WideString read Get_AlternateAddress write Set_AlternateAddress;
    property AlternatePort: SYSINT read Get_AlternatePort write Set_AlternatePort;
    property AlternateTimeout: SYSINT read Get_AlternateTimeout write Set_AlternateTimeout;
    property MaxAllowedPrinters: SYSINT read Get_MaxAllowedPrinters;
    property MaxAllowedUsers: SYSINT read Get_MaxAllowedUsers;
    property Retries: SYSINT read Get_Retries write Set_Retries;
    property AlternateRetries: SYSINT read Get_AlternateRetries write Set_AlternateRetries;
  end;

// *********************************************************************//
// DispIntf:  IBtLicenseServerDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {AC955B42-36D1-4AE9-894E-FE1C693CF07C}
// *********************************************************************//
  IBtLicenseServerDisp = dispinterface
    ['{AC955B42-36D1-4AE9-894E-FE1C693CF07C}']
    property Address: WideString dispid 1;
    property Port: SYSINT dispid 2;
    property Timeout: SYSINT dispid 3;
    property IsConnected: WordBool readonly dispid 4;
    function Connect: WordBool; dispid 5;
    property AlternateAddress: WideString dispid 6;
    property AlternatePort: SYSINT dispid 7;
    property AlternateTimeout: SYSINT dispid 8;
    property MaxAllowedPrinters: SYSINT readonly dispid 9;
    property MaxAllowedUsers: SYSINT readonly dispid 10;
    property Retries: SYSINT dispid 11;
    property AlternateRetries: SYSINT dispid 12;
  end;

// *********************************************************************//
// DispIntf:  DBtLicenseServer
// Flags:     (4112) Hidden Dispatchable
// GUID:      {8C708F07-9199-4CE9-A1CC-312616D0B9BD}
// *********************************************************************//
  DBtLicenseServer = dispinterface
    ['{8C708F07-9199-4CE9-A1CC-312616D0B9BD}']
    function Connect: WordBool; dispid 5;
    property Address: WideString dispid 1;
    property AlternateAddress: WideString dispid 6;
    property AlternateTimeout: SYSINT dispid 8;
    property AlternatePort: SYSINT dispid 7;
    property Timeout: SYSINT dispid 3;
    property Port: SYSINT dispid 2;
    property IsConnected: WordBool dispid 4;
    property MaxAllowedPrinters: SYSINT dispid 9;
    property MaxAllowedUsers: SYSINT dispid 10;
    property Retries: SYSINT dispid 11;
    property AlternateRetries: SYSINT dispid 12;
  end;

// *********************************************************************//
// DispIntf:  IApplicationEvents
// Flags:     (4096) Dispatchable
// GUID:      {F057BB82-74E7-4174-9ECE-DCBDA33CCD2C}
// *********************************************************************//
  IApplicationEvents = dispinterface
    ['{F057BB82-74E7-4174-9ECE-DCBDA33CCD2C}']
    procedure OnCommandLineCompleted(const ResponseString: WideString; var Messages: Messages; 
                                     const CommandLine: WideString); dispid 19;
    procedure OnNewPrintJob(const PrinterName: WideString; JobID: Integer); dispid 21;
  end;

// *********************************************************************//
// DispIntf:  IScreenDs
// Flags:     (4112) Hidden Dispatchable
// GUID:      {0C36B111-18CA-11D1-8AD9-006097D76312}
// *********************************************************************//
  IScreenDs = dispinterface
    ['{0C36B111-18CA-11D1-8AD9-006097D76312}']
    property Name: WideString dispid 1;
    property Value: WideString dispid 2;
  end;

// *********************************************************************//
// DispIntf:  ITemplateFieldDs
// Flags:     (4112) Hidden Dispatchable
// GUID:      {D7474543-9FA9-4A25-8410-7972143FA813}
// *********************************************************************//
  ITemplateFieldDs = dispinterface
    ['{D7474543-9FA9-4A25-8410-7972143FA813}']
    property Name: WideString dispid 1;
    property Value: WideString dispid 2;
    property FieldName: WideString dispid 3;
  end;

// *********************************************************************//
// DispIntf:  ILabelObjectDs
// Flags:     (4112) Hidden Dispatchable
// GUID:      {AEE1630E-3FD0-45B9-9ECF-E8E2990BAC0F}
// *********************************************************************//
  ILabelObjectDs = dispinterface
    ['{AEE1630E-3FD0-45B9-9ECF-E8E2990BAC0F}']
    property ObjectName: WideString dispid 2;
    property Value: WideString dispid 1;
  end;

// *********************************************************************//
// The Class CoVerification provides a Create and CreateRemote method to          
// create instances of the default interface IBtVerification exposed by              
// the CoClass Verification. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoVerification = class
    class function Create: IBtVerification;
    class function CreateRemote(const MachineName: string): IBtVerification;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TVerification
// Help String      : 
// Default Interface: IBtVerification
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TVerificationProperties= class;
{$ENDIF}
  TVerification = class(TOleServer)
  private
    FIntf: IBtVerification;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TVerificationProperties;
    function GetServerProperties: TVerificationProperties;
{$ENDIF}
    function GetDefaultInterface: IBtVerification;
  protected
    procedure InitServerData; override;
    function Get_Object_: WideString;
    function Get_Fields: WideString;
    function Get_Problem: WideString;
    function Get_Result: WideString;
    function Get_AutoFix: WideString;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IBtVerification);
    procedure Disconnect; override;
    property DefaultInterface: IBtVerification read GetDefaultInterface;
    property Object_: WideString read Get_Object_;
    property Fields: WideString read Get_Fields;
    property Problem: WideString read Get_Problem;
    property Result: WideString read Get_Result;
    property AutoFix: WideString read Get_AutoFix;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TVerificationProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TVerification
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TVerificationProperties = class(TPersistent)
  private
    FServer:    TVerification;
    function    GetDefaultInterface: IBtVerification;
    constructor Create(AServer: TVerification);
  protected
    function Get_Object_: WideString;
    function Get_Fields: WideString;
    function Get_Problem: WideString;
    function Get_Result: WideString;
    function Get_AutoFix: WideString;
  public
    property DefaultInterface: IBtVerification read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoMessage provides a Create and CreateRemote method to          
// create instances of the default interface IBtMessage exposed by              
// the CoClass Message. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoMessage = class
    class function Create: IBtMessage;
    class function CreateRemote(const MachineName: string): IBtMessage;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TMessage
// Help String      : 
// Default Interface: IBtMessage
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TMessageProperties= class;
{$ENDIF}
  TMessage = class(TOleServer)
  private
    FIntf: IBtMessage;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TMessageProperties;
    function GetServerProperties: TMessageProperties;
{$ENDIF}
    function GetDefaultInterface: IBtMessage;
  protected
    procedure InitServerData; override;
    function Get_Number: Integer;
    function Get_type_: BtMsgType;
    function Get_Severity: BtMsgSeverity;
    function Get_Message: WideString;
    function Get_Verification: Verification;
    function Get_TypeText: WideString;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IBtMessage);
    procedure Disconnect; override;
    property DefaultInterface: IBtMessage read GetDefaultInterface;
    property Number: Integer read Get_Number;
    property type_: BtMsgType read Get_type_;
    property Severity: BtMsgSeverity read Get_Severity;
    property Message: WideString read Get_Message;
    property Verification: Verification read Get_Verification;
    property TypeText: WideString read Get_TypeText;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TMessageProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TMessage
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TMessageProperties = class(TPersistent)
  private
    FServer:    TMessage;
    function    GetDefaultInterface: IBtMessage;
    constructor Create(AServer: TMessage);
  protected
    function Get_Number: Integer;
    function Get_type_: BtMsgType;
    function Get_Severity: BtMsgSeverity;
    function Get_Message: WideString;
    function Get_Verification: Verification;
    function Get_TypeText: WideString;
  public
    property DefaultInterface: IBtMessage read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoMessages provides a Create and CreateRemote method to          
// create instances of the default interface IBtMessages exposed by              
// the CoClass Messages. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoMessages = class
    class function Create: IBtMessages;
    class function CreateRemote(const MachineName: string): IBtMessages;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TMessages
// Help String      : 
// Default Interface: IBtMessages
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TMessagesProperties= class;
{$ENDIF}
  TMessages = class(TOleServer)
  private
    FIntf: IBtMessages;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TMessagesProperties;
    function GetServerProperties: TMessagesProperties;
{$ENDIF}
    function GetDefaultInterface: IBtMessages;
  protected
    procedure InitServerData; override;
    function Get_Count: Integer;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IBtMessages);
    procedure Disconnect; override;
    function Item(var Index: OleVariant): Message;
    function GetMessage(Index: OleVariant): Message;
    property DefaultInterface: IBtMessages read GetDefaultInterface;
    property Count: Integer read Get_Count;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TMessagesProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TMessages
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TMessagesProperties = class(TPersistent)
  private
    FServer:    TMessages;
    function    GetDefaultInterface: IBtMessages;
    constructor Create(AServer: TMessages);
  protected
    function Get_Count: Integer;
  public
    property DefaultInterface: IBtMessages read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoTextFile provides a Create and CreateRemote method to          
// create instances of the default interface IBtTextFile exposed by              
// the CoClass TextFile. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoTextFile = class
    class function Create: IBtTextFile;
    class function CreateRemote(const MachineName: string): IBtTextFile;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TTextFile
// Help String      : 
// Default Interface: IBtTextFile
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TTextFileProperties= class;
{$ENDIF}
  TTextFile = class(TOleServer)
  private
    FIntf: IBtTextFile;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TTextFileProperties;
    function GetServerProperties: TTextFileProperties;
{$ENDIF}
    function GetDefaultInterface: IBtTextFile;
  protected
    procedure InitServerData; override;
    procedure Set_FileName(const retval: WideString);
    function Get_FileName: WideString;
    procedure Set_Delimitation(retval: BtTextFileDelimitation);
    function Get_Delimitation: BtTextFileDelimitation;
    procedure Set_FieldDelimiter(const retval: WideString);
    function Get_FieldDelimiter: WideString;
    procedure Set_NumberOfFields(retval: SYSINT);
    function Get_NumberOfFields: SYSINT;
    procedure Set_UseFieldNamesFromFirstRecord(retval: WordBool);
    function Get_UseFieldNamesFromFirstRecord: WordBool;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IBtTextFile);
    procedure Disconnect; override;
    property DefaultInterface: IBtTextFile read GetDefaultInterface;
    property FileName: WideString read Get_FileName write Set_FileName;
    property Delimitation: BtTextFileDelimitation read Get_Delimitation write Set_Delimitation;
    property FieldDelimiter: WideString read Get_FieldDelimiter write Set_FieldDelimiter;
    property NumberOfFields: SYSINT read Get_NumberOfFields write Set_NumberOfFields;
    property UseFieldNamesFromFirstRecord: WordBool read Get_UseFieldNamesFromFirstRecord write Set_UseFieldNamesFromFirstRecord;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TTextFileProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TTextFile
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TTextFileProperties = class(TPersistent)
  private
    FServer:    TTextFile;
    function    GetDefaultInterface: IBtTextFile;
    constructor Create(AServer: TTextFile);
  protected
    procedure Set_FileName(const retval: WideString);
    function Get_FileName: WideString;
    procedure Set_Delimitation(retval: BtTextFileDelimitation);
    function Get_Delimitation: BtTextFileDelimitation;
    procedure Set_FieldDelimiter(const retval: WideString);
    function Get_FieldDelimiter: WideString;
    procedure Set_NumberOfFields(retval: SYSINT);
    function Get_NumberOfFields: SYSINT;
    procedure Set_UseFieldNamesFromFirstRecord(retval: WordBool);
    function Get_UseFieldNamesFromFirstRecord: WordBool;
  public
    property DefaultInterface: IBtTextFile read GetDefaultInterface;
  published
    property FileName: WideString read Get_FileName write Set_FileName;
    property Delimitation: BtTextFileDelimitation read Get_Delimitation write Set_Delimitation;
    property FieldDelimiter: WideString read Get_FieldDelimiter write Set_FieldDelimiter;
    property NumberOfFields: SYSINT read Get_NumberOfFields write Set_NumberOfFields;
    property UseFieldNamesFromFirstRecord: WordBool read Get_UseFieldNamesFromFirstRecord write Set_UseFieldNamesFromFirstRecord;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoODBC provides a Create and CreateRemote method to          
// create instances of the default interface IBtODBC exposed by              
// the CoClass ODBC. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoODBC = class
    class function Create: IBtODBC;
    class function CreateRemote(const MachineName: string): IBtODBC;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TODBC
// Help String      : 
// Default Interface: IBtODBC
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TODBCProperties= class;
{$ENDIF}
  TODBC = class(TOleServer)
  private
    FIntf: IBtODBC;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TODBCProperties;
    function GetServerProperties: TODBCProperties;
{$ENDIF}
    function GetDefaultInterface: IBtODBC;
  protected
    procedure InitServerData; override;
    procedure Set_Where(const retval: WideString);
    function Get_Where: WideString;
    procedure Set_Password(const retval: WideString);
    function Get_Password: WideString;
    procedure Set_UserId(const retval: WideString);
    function Get_UserId: WideString;
    procedure Set_SQLStatement(const retval: WideString);
    function Get_SQLStatement: WideString;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IBtODBC);
    procedure Disconnect; override;
    property DefaultInterface: IBtODBC read GetDefaultInterface;
    property Where: WideString read Get_Where write Set_Where;
    property Password: WideString read Get_Password write Set_Password;
    property UserId: WideString read Get_UserId write Set_UserId;
    property SQLStatement: WideString read Get_SQLStatement write Set_SQLStatement;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TODBCProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TODBC
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TODBCProperties = class(TPersistent)
  private
    FServer:    TODBC;
    function    GetDefaultInterface: IBtODBC;
    constructor Create(AServer: TODBC);
  protected
    procedure Set_Where(const retval: WideString);
    function Get_Where: WideString;
    procedure Set_Password(const retval: WideString);
    function Get_Password: WideString;
    procedure Set_UserId(const retval: WideString);
    function Get_UserId: WideString;
    procedure Set_SQLStatement(const retval: WideString);
    function Get_SQLStatement: WideString;
  public
    property DefaultInterface: IBtODBC read GetDefaultInterface;
  published
    property Where: WideString read Get_Where write Set_Where;
    property Password: WideString read Get_Password write Set_Password;
    property UserId: WideString read Get_UserId write Set_UserId;
    property SQLStatement: WideString read Get_SQLStatement write Set_SQLStatement;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoOLEDB provides a Create and CreateRemote method to          
// create instances of the default interface IBtOLEDB exposed by              
// the CoClass OLEDB. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoOLEDB = class
    class function Create: IBtOLEDB;
    class function CreateRemote(const MachineName: string): IBtOLEDB;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TOLEDB
// Help String      : 
// Default Interface: IBtOLEDB
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TOLEDBProperties= class;
{$ENDIF}
  TOLEDB = class(TOleServer)
  private
    FIntf: IBtOLEDB;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TOLEDBProperties;
    function GetServerProperties: TOLEDBProperties;
{$ENDIF}
    function GetDefaultInterface: IBtOLEDB;
  protected
    procedure InitServerData; override;
    procedure Set_Password(const retval: WideString);
    function Get_Password: WideString;
    procedure Set_UserId(const retval: WideString);
    function Get_UserId: WideString;
    procedure Set_SQLStatement(const retval: WideString);
    function Get_SQLStatement: WideString;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IBtOLEDB);
    procedure Disconnect; override;
    property DefaultInterface: IBtOLEDB read GetDefaultInterface;
    property Password: WideString read Get_Password write Set_Password;
    property UserId: WideString read Get_UserId write Set_UserId;
    property SQLStatement: WideString read Get_SQLStatement write Set_SQLStatement;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TOLEDBProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TOLEDB
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TOLEDBProperties = class(TPersistent)
  private
    FServer:    TOLEDB;
    function    GetDefaultInterface: IBtOLEDB;
    constructor Create(AServer: TOLEDB);
  protected
    procedure Set_Password(const retval: WideString);
    function Get_Password: WideString;
    procedure Set_UserId(const retval: WideString);
    function Get_UserId: WideString;
    procedure Set_SQLStatement(const retval: WideString);
    function Get_SQLStatement: WideString;
  public
    property DefaultInterface: IBtOLEDB read GetDefaultInterface;
  published
    property Password: WideString read Get_Password write Set_Password;
    property UserId: WideString read Get_UserId write Set_UserId;
    property SQLStatement: WideString read Get_SQLStatement write Set_SQLStatement;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoInputDataFileSetup provides a Create and CreateRemote method to          
// create instances of the default interface IBtInputDataFileSetup exposed by              
// the CoClass InputDataFileSetup. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoInputDataFileSetup = class
    class function Create: IBtInputDataFileSetup;
    class function CreateRemote(const MachineName: string): IBtInputDataFileSetup;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TInputDataFileSetup
// Help String      : 
// Default Interface: IBtInputDataFileSetup
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TInputDataFileSetupProperties= class;
{$ENDIF}
  TInputDataFileSetup = class(TOleServer)
  private
    FIntf: IBtInputDataFileSetup;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TInputDataFileSetupProperties;
    function GetServerProperties: TInputDataFileSetupProperties;
{$ENDIF}
    function GetDefaultInterface: IBtInputDataFileSetup;
  protected
    procedure InitServerData; override;
    procedure Set_AutoViewSelectedRecordsBeforePrint(retval: WordBool);
    function Get_AutoViewSelectedRecordsBeforePrint: WordBool;
    function Get_TextFile: TextFile;
    procedure Set_type_(retval: BtInputDataFile);
    function Get_type_: BtInputDataFile;
    function Get_ODBC: ODBC;
    function Get_OLEDB: OLEDB;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IBtInputDataFileSetup);
    procedure Disconnect; override;
    property DefaultInterface: IBtInputDataFileSetup read GetDefaultInterface;
    property TextFile: TextFile read Get_TextFile;
    property ODBC: ODBC read Get_ODBC;
    property OLEDB: OLEDB read Get_OLEDB;
    property AutoViewSelectedRecordsBeforePrint: WordBool read Get_AutoViewSelectedRecordsBeforePrint write Set_AutoViewSelectedRecordsBeforePrint;
    property type_: BtInputDataFile read Get_type_ write Set_type_;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TInputDataFileSetupProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TInputDataFileSetup
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TInputDataFileSetupProperties = class(TPersistent)
  private
    FServer:    TInputDataFileSetup;
    function    GetDefaultInterface: IBtInputDataFileSetup;
    constructor Create(AServer: TInputDataFileSetup);
  protected
    procedure Set_AutoViewSelectedRecordsBeforePrint(retval: WordBool);
    function Get_AutoViewSelectedRecordsBeforePrint: WordBool;
    function Get_TextFile: TextFile;
    procedure Set_type_(retval: BtInputDataFile);
    function Get_type_: BtInputDataFile;
    function Get_ODBC: ODBC;
    function Get_OLEDB: OLEDB;
  public
    property DefaultInterface: IBtInputDataFileSetup read GetDefaultInterface;
  published
    property AutoViewSelectedRecordsBeforePrint: WordBool read Get_AutoViewSelectedRecordsBeforePrint write Set_AutoViewSelectedRecordsBeforePrint;
    property type_: BtInputDataFile read Get_type_ write Set_type_;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoSubString provides a Create and CreateRemote method to          
// create instances of the default interface IBtSubString exposed by              
// the CoClass SubString. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSubString = class
    class function Create: IBtSubString;
    class function CreateRemote(const MachineName: string): IBtSubString;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TSubString
// Help String      : 
// Default Interface: IBtSubString
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TSubStringProperties= class;
{$ENDIF}
  TSubString = class(TOleServer)
  private
    FIntf: IBtSubString;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TSubStringProperties;
    function GetServerProperties: TSubStringProperties;
{$ENDIF}
    function GetDefaultInterface: IBtSubString;
  protected
    procedure InitServerData; override;
    function Get_Name: WideString;
    function Get_Value: WideString;
    procedure Set_Value(const retval: WideString);
    function Get_type_: BtSubStringType;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IBtSubString);
    procedure Disconnect; override;
    property DefaultInterface: IBtSubString read GetDefaultInterface;
    property Name: WideString read Get_Name;
    property type_: BtSubStringType read Get_type_;
    property Value: WideString read Get_Value write Set_Value;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TSubStringProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TSubString
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TSubStringProperties = class(TPersistent)
  private
    FServer:    TSubString;
    function    GetDefaultInterface: IBtSubString;
    constructor Create(AServer: TSubString);
  protected
    function Get_Name: WideString;
    function Get_Value: WideString;
    procedure Set_Value(const retval: WideString);
    function Get_type_: BtSubStringType;
  public
    property DefaultInterface: IBtSubString read GetDefaultInterface;
  published
    property Value: WideString read Get_Value write Set_Value;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoNamedSubStrings provides a Create and CreateRemote method to          
// create instances of the default interface IBtNamedSubStrings exposed by              
// the CoClass NamedSubStrings. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNamedSubStrings = class
    class function Create: IBtNamedSubStrings;
    class function CreateRemote(const MachineName: string): IBtNamedSubStrings;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TNamedSubStrings
// Help String      : 
// Default Interface: IBtNamedSubStrings
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TNamedSubStringsProperties= class;
{$ENDIF}
  TNamedSubStrings = class(TOleServer)
  private
    FIntf: IBtNamedSubStrings;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TNamedSubStringsProperties;
    function GetServerProperties: TNamedSubStringsProperties;
{$ENDIF}
    function GetDefaultInterface: IBtNamedSubStrings;
  protected
    procedure InitServerData; override;
    function Get_Count: Integer;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IBtNamedSubStrings);
    procedure Disconnect; override;
    function Item(var Index: OleVariant): SubString;
    function GetAll(const nameValueDelimiter: WideString; const recordDelimter: WideString): WideString;
    procedure SetAll(const setStr: WideString; const delimter: WideString);
    function GetSubString(Index: OleVariant): SubString;
    property DefaultInterface: IBtNamedSubStrings read GetDefaultInterface;
    property Count: Integer read Get_Count;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TNamedSubStringsProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TNamedSubStrings
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TNamedSubStringsProperties = class(TPersistent)
  private
    FServer:    TNamedSubStrings;
    function    GetDefaultInterface: IBtNamedSubStrings;
    constructor Create(AServer: TNamedSubStrings);
  protected
    function Get_Count: Integer;
  public
    property DefaultInterface: IBtNamedSubStrings read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoQueryPrompt provides a Create and CreateRemote method to          
// create instances of the default interface IBtQueryPrompt exposed by              
// the CoClass QueryPrompt. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoQueryPrompt = class
    class function Create: IBtQueryPrompt;
    class function CreateRemote(const MachineName: string): IBtQueryPrompt;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TQueryPrompt
// Help String      : 
// Default Interface: IBtQueryPrompt
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TQueryPromptProperties= class;
{$ENDIF}
  TQueryPrompt = class(TOleServer)
  private
    FIntf: IBtQueryPrompt;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TQueryPromptProperties;
    function GetServerProperties: TQueryPromptProperties;
{$ENDIF}
    function GetDefaultInterface: IBtQueryPrompt;
  protected
    procedure InitServerData; override;
    procedure Set_DefaultReply(const retval: WideString);
    function Get_DefaultReply: WideString;
    function Get_Name: WideString;
    procedure Set_UserPrompt(const retval: WideString);
    function Get_UserPrompt: WideString;
    procedure Set_Value(const retval: WideString);
    function Get_Value: WideString;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IBtQueryPrompt);
    procedure Disconnect; override;
    property DefaultInterface: IBtQueryPrompt read GetDefaultInterface;
    property Name: WideString read Get_Name;
    property DefaultReply: WideString read Get_DefaultReply write Set_DefaultReply;
    property UserPrompt: WideString read Get_UserPrompt write Set_UserPrompt;
    property Value: WideString read Get_Value write Set_Value;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TQueryPromptProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TQueryPrompt
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TQueryPromptProperties = class(TPersistent)
  private
    FServer:    TQueryPrompt;
    function    GetDefaultInterface: IBtQueryPrompt;
    constructor Create(AServer: TQueryPrompt);
  protected
    procedure Set_DefaultReply(const retval: WideString);
    function Get_DefaultReply: WideString;
    function Get_Name: WideString;
    procedure Set_UserPrompt(const retval: WideString);
    function Get_UserPrompt: WideString;
    procedure Set_Value(const retval: WideString);
    function Get_Value: WideString;
  public
    property DefaultInterface: IBtQueryPrompt read GetDefaultInterface;
  published
    property DefaultReply: WideString read Get_DefaultReply write Set_DefaultReply;
    property UserPrompt: WideString read Get_UserPrompt write Set_UserPrompt;
    property Value: WideString read Get_Value write Set_Value;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoQueryPrompts provides a Create and CreateRemote method to          
// create instances of the default interface IBtQueryPrompts exposed by              
// the CoClass QueryPrompts. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoQueryPrompts = class
    class function Create: IBtQueryPrompts;
    class function CreateRemote(const MachineName: string): IBtQueryPrompts;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TQueryPrompts
// Help String      : 
// Default Interface: IBtQueryPrompts
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TQueryPromptsProperties= class;
{$ENDIF}
  TQueryPrompts = class(TOleServer)
  private
    FIntf: IBtQueryPrompts;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TQueryPromptsProperties;
    function GetServerProperties: TQueryPromptsProperties;
{$ENDIF}
    function GetDefaultInterface: IBtQueryPrompts;
  protected
    procedure InitServerData; override;
    function Get_Count: Integer;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IBtQueryPrompts);
    procedure Disconnect; override;
    function Item(var Index: OleVariant): QueryPrompt;
    function GetQueryPrompt(Index: OleVariant): QueryPrompt;
    function ExportToXML: WideString;
    property DefaultInterface: IBtQueryPrompts read GetDefaultInterface;
    property Count: Integer read Get_Count;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TQueryPromptsProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TQueryPrompts
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TQueryPromptsProperties = class(TPersistent)
  private
    FServer:    TQueryPrompts;
    function    GetDefaultInterface: IBtQueryPrompts;
    constructor Create(AServer: TQueryPrompts);
  protected
    function Get_Count: Integer;
  public
    property DefaultInterface: IBtQueryPrompts read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoSAPIDoc provides a Create and CreateRemote method to          
// create instances of the default interface IBtSAPIDoc exposed by              
// the CoClass SAPIDoc. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSAPIDoc = class
    class function Create: IBtSAPIDoc;
    class function CreateRemote(const MachineName: string): IBtSAPIDoc;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TSAPIDoc
// Help String      : 
// Default Interface: IBtSAPIDoc
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TSAPIDocProperties= class;
{$ENDIF}
  TSAPIDoc = class(TOleServer)
  private
    FIntf: IBtSAPIDoc;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TSAPIDocProperties;
    function GetServerProperties: TSAPIDocProperties;
{$ENDIF}
    function GetDefaultInterface: IBtSAPIDoc;
  protected
    procedure InitServerData; override;
    procedure Set_IDocFileName(const retval: WideString);
    function Get_IDocFileName: WideString;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IBtSAPIDoc);
    procedure Disconnect; override;
    property DefaultInterface: IBtSAPIDoc read GetDefaultInterface;
    property IDocFileName: WideString read Get_IDocFileName write Set_IDocFileName;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TSAPIDocProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TSAPIDoc
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TSAPIDocProperties = class(TPersistent)
  private
    FServer:    TSAPIDoc;
    function    GetDefaultInterface: IBtSAPIDoc;
    constructor Create(AServer: TSAPIDoc);
  protected
    procedure Set_IDocFileName(const retval: WideString);
    function Get_IDocFileName: WideString;
  public
    property DefaultInterface: IBtSAPIDoc read GetDefaultInterface;
  published
    property IDocFileName: WideString read Get_IDocFileName write Set_IDocFileName;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoDatabase provides a Create and CreateRemote method to          
// create instances of the default interface IBtDatabase exposed by              
// the CoClass Database. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDatabase = class
    class function Create: IBtDatabase;
    class function CreateRemote(const MachineName: string): IBtDatabase;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TDatabase
// Help String      : 
// Default Interface: IBtDatabase
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TDatabaseProperties= class;
{$ENDIF}
  TDatabase = class(TOleServer)
  private
    FIntf: IBtDatabase;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TDatabaseProperties;
    function GetServerProperties: TDatabaseProperties;
{$ENDIF}
    function GetDefaultInterface: IBtDatabase;
  protected
    procedure InitServerData; override;
    procedure Set_Name(const retval: WideString);
    function Get_Name: WideString;
    function Get_ODBC: ODBC;
    function Get_TextFile: TextFile;
    function Get_type_: BtInputDataFile;
    function Get_SAPIDoc: SAPIDoc;
    function Get_OLEDB: OLEDB;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IBtDatabase);
    procedure Disconnect; override;
    property DefaultInterface: IBtDatabase read GetDefaultInterface;
    property ODBC: ODBC read Get_ODBC;
    property TextFile: TextFile read Get_TextFile;
    property type_: BtInputDataFile read Get_type_;
    property SAPIDoc: SAPIDoc read Get_SAPIDoc;
    property OLEDB: OLEDB read Get_OLEDB;
    property Name: WideString read Get_Name write Set_Name;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TDatabaseProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TDatabase
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TDatabaseProperties = class(TPersistent)
  private
    FServer:    TDatabase;
    function    GetDefaultInterface: IBtDatabase;
    constructor Create(AServer: TDatabase);
  protected
    procedure Set_Name(const retval: WideString);
    function Get_Name: WideString;
    function Get_ODBC: ODBC;
    function Get_TextFile: TextFile;
    function Get_type_: BtInputDataFile;
    function Get_SAPIDoc: SAPIDoc;
    function Get_OLEDB: OLEDB;
  public
    property DefaultInterface: IBtDatabase read GetDefaultInterface;
  published
    property Name: WideString read Get_Name write Set_Name;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoDatabases provides a Create and CreateRemote method to          
// create instances of the default interface IBtDatabases exposed by              
// the CoClass Databases. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDatabases = class
    class function Create: IBtDatabases;
    class function CreateRemote(const MachineName: string): IBtDatabases;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TDatabases
// Help String      : 
// Default Interface: IBtDatabases
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TDatabasesProperties= class;
{$ENDIF}
  TDatabases = class(TOleServer)
  private
    FIntf: IBtDatabases;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TDatabasesProperties;
    function GetServerProperties: TDatabasesProperties;
{$ENDIF}
    function GetDefaultInterface: IBtDatabases;
  protected
    procedure InitServerData; override;
    function Get_Count: SYSINT;
    function Get_QueryPrompts: QueryPrompts;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IBtDatabases);
    procedure Disconnect; override;
    function Item(var Index: OleVariant): Database;
    function GetDatabase(Index: OleVariant): Database;
    property DefaultInterface: IBtDatabases read GetDefaultInterface;
    property Count: SYSINT read Get_Count;
    property QueryPrompts: QueryPrompts read Get_QueryPrompts;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TDatabasesProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TDatabases
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TDatabasesProperties = class(TPersistent)
  private
    FServer:    TDatabases;
    function    GetDefaultInterface: IBtDatabases;
    constructor Create(AServer: TDatabases);
  protected
    function Get_Count: SYSINT;
    function Get_QueryPrompts: QueryPrompts;
  public
    property DefaultInterface: IBtDatabases read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoMediaHandling provides a Create and CreateRemote method to          
// create instances of the default interface IBtMediaHandling exposed by              
// the CoClass MediaHandling. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoMediaHandling = class
    class function Create: IBtMediaHandling;
    class function CreateRemote(const MachineName: string): IBtMediaHandling;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TMediaHandling
// Help String      : 
// Default Interface: IBtMediaHandling
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TMediaHandlingProperties= class;
{$ENDIF}
  TMediaHandling = class(TOleServer)
  private
    FIntf: IBtMediaHandling;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TMediaHandlingProperties;
    function GetServerProperties: TMediaHandlingProperties;
{$ENDIF}
    function GetDefaultInterface: IBtMediaHandling;
  protected
    procedure InitServerData; override;
    procedure Set_Action(retval: BtMediaHandlingAction);
    function Get_Action: BtMediaHandlingAction;
    procedure Set_Occurrence(retval: BtMediaHandlingOccurrence);
    function Get_Occurrence: BtMediaHandlingOccurrence;
    procedure Set_DataItemType(retval: BtMediaHandlingDataItemType);
    function Get_DataItemType: BtMediaHandlingDataItemType;
    procedure Set_DataItemName(const retval: WideString);
    function Get_DataItemName: WideString;
    procedure Set_NumberOfLabels(retval: Integer);
    function Get_NumberOfLabels: Integer;
    procedure Set_IgnoreCase(retval: WordBool);
    function Get_IgnoreCase: WordBool;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IBtMediaHandling);
    procedure Disconnect; override;
    property DefaultInterface: IBtMediaHandling read GetDefaultInterface;
    property Action: BtMediaHandlingAction read Get_Action write Set_Action;
    property Occurrence: BtMediaHandlingOccurrence read Get_Occurrence write Set_Occurrence;
    property DataItemType: BtMediaHandlingDataItemType read Get_DataItemType write Set_DataItemType;
    property DataItemName: WideString read Get_DataItemName write Set_DataItemName;
    property NumberOfLabels: Integer read Get_NumberOfLabels write Set_NumberOfLabels;
    property IgnoreCase: WordBool read Get_IgnoreCase write Set_IgnoreCase;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TMediaHandlingProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TMediaHandling
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TMediaHandlingProperties = class(TPersistent)
  private
    FServer:    TMediaHandling;
    function    GetDefaultInterface: IBtMediaHandling;
    constructor Create(AServer: TMediaHandling);
  protected
    procedure Set_Action(retval: BtMediaHandlingAction);
    function Get_Action: BtMediaHandlingAction;
    procedure Set_Occurrence(retval: BtMediaHandlingOccurrence);
    function Get_Occurrence: BtMediaHandlingOccurrence;
    procedure Set_DataItemType(retval: BtMediaHandlingDataItemType);
    function Get_DataItemType: BtMediaHandlingDataItemType;
    procedure Set_DataItemName(const retval: WideString);
    function Get_DataItemName: WideString;
    procedure Set_NumberOfLabels(retval: Integer);
    function Get_NumberOfLabels: Integer;
    procedure Set_IgnoreCase(retval: WordBool);
    function Get_IgnoreCase: WordBool;
  public
    property DefaultInterface: IBtMediaHandling read GetDefaultInterface;
  published
    property Action: BtMediaHandlingAction read Get_Action write Set_Action;
    property Occurrence: BtMediaHandlingOccurrence read Get_Occurrence write Set_Occurrence;
    property DataItemType: BtMediaHandlingDataItemType read Get_DataItemType write Set_DataItemType;
    property DataItemName: WideString read Get_DataItemName write Set_DataItemName;
    property NumberOfLabels: Integer read Get_NumberOfLabels write Set_NumberOfLabels;
    property IgnoreCase: WordBool read Get_IgnoreCase write Set_IgnoreCase;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoPageSetup provides a Create and CreateRemote method to          
// create instances of the default interface IBtPageSetup exposed by              
// the CoClass PageSetup. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPageSetup = class
    class function Create: IBtPageSetup;
    class function CreateRemote(const MachineName: string): IBtPageSetup;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TPageSetup
// Help String      : 
// Default Interface: IBtPageSetup
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TPageSetupProperties= class;
{$ENDIF}
  TPageSetup = class(TOleServer)
  private
    FIntf: IBtPageSetup;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TPageSetupProperties;
    function GetServerProperties: TPageSetupProperties;
{$ENDIF}
    function GetDefaultInterface: IBtPageSetup;
  protected
    procedure InitServerData; override;
    function Get_StockCategory: WideString;
    function Get_StockType: WideString;
    procedure Set_PaperName(const retval: WideString);
    function Get_PaperName: WideString;
    procedure Set_PaperID(retval: Integer);
    function Get_PaperID: Integer;
    procedure Set_Orientation(retval: BtOrientation);
    function Get_Orientation: BtOrientation;
    procedure Set_LabelColumns(retval: Integer);
    function Get_LabelColumns: Integer;
    procedure Set_LabelRows(retval: Integer);
    function Get_LabelRows: Integer;
    procedure Set_LabelSizeManual(retval: WordBool);
    function Get_LabelSizeManual: WordBool;
    procedure Set_LabelShape(retval: BtShape);
    function Get_LabelShape: BtShape;
    procedure Set_LabelCorners(retval: BtShape);
    function Get_LabelCorners: BtShape;
    procedure Set_LabelHole(retval: WordBool);
    function Get_LabelHole: WordBool;
    procedure Set_PaperWidth(units: BtUnits; retval: Single);
    function Get_PaperWidth(units: BtUnits): Single;
    procedure Set_PaperHeight(units: BtUnits; retval: Single);
    function Get_PaperHeight(units: BtUnits): Single;
    procedure Set_MarginLeft(units: BtUnits; retval: Single);
    function Get_MarginLeft(units: BtUnits): Single;
    procedure Set_MarginRight(units: BtUnits; retval: Single);
    function Get_MarginRight(units: BtUnits): Single;
    procedure Set_MarginTop(units: BtUnits; retval: Single);
    function Get_MarginTop(units: BtUnits): Single;
    procedure Set_MarginBottom(units: BtUnits; retval: Single);
    function Get_MarginBottom(units: BtUnits): Single;
    procedure Set_LabelWidth(units: BtUnits; retval: Single);
    function Get_LabelWidth(units: BtUnits): Single;
    procedure Set_LabelHeight(units: BtUnits; retval: Single);
    function Get_LabelHeight(units: BtUnits): Single;
    procedure Set_LabelHoleDiameter(units: BtUnits; retval: Single);
    function Get_LabelHoleDiameter(units: BtUnits): Single;
    function Get_Valid: WordBool;
    procedure Set_LabelGapManual(retval: WordBool);
    function Get_LabelGapManual: WordBool;
    procedure Set_LabelGapHorizontal(units: BtUnits; retval: Single);
    function Get_LabelGapHorizontal(units: BtUnits): Single;
    procedure Set_LabelGapVertical(units: BtUnits; retval: Single);
    function Get_LabelGapVertical(units: BtUnits): Single;
    procedure Set_Mirror(retval: WordBool);
    function Get_Mirror: WordBool;
    procedure Set_Inverse(retval: WordBool);
    function Get_Inverse: WordBool;
    function Get_Tray: WideString;
    procedure Set_Tray(const retval: WideString);
    function Get_MediaHandling: MediaHandling;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IBtPageSetup);
    procedure Disconnect; override;
    procedure SetStock(const StockCategory: WideString; const StockType: WideString);
    property DefaultInterface: IBtPageSetup read GetDefaultInterface;
    property StockCategory: WideString read Get_StockCategory;
    property StockType: WideString read Get_StockType;
    property PaperWidth[units: BtUnits]: Single read Get_PaperWidth write Set_PaperWidth;
    property PaperHeight[units: BtUnits]: Single read Get_PaperHeight write Set_PaperHeight;
    property MarginLeft[units: BtUnits]: Single read Get_MarginLeft write Set_MarginLeft;
    property MarginRight[units: BtUnits]: Single read Get_MarginRight write Set_MarginRight;
    property MarginTop[units: BtUnits]: Single read Get_MarginTop write Set_MarginTop;
    property MarginBottom[units: BtUnits]: Single read Get_MarginBottom write Set_MarginBottom;
    property LabelWidth[units: BtUnits]: Single read Get_LabelWidth write Set_LabelWidth;
    property LabelHeight[units: BtUnits]: Single read Get_LabelHeight write Set_LabelHeight;
    property LabelHoleDiameter[units: BtUnits]: Single read Get_LabelHoleDiameter write Set_LabelHoleDiameter;
    property Valid: WordBool read Get_Valid;
    property LabelGapHorizontal[units: BtUnits]: Single read Get_LabelGapHorizontal write Set_LabelGapHorizontal;
    property LabelGapVertical[units: BtUnits]: Single read Get_LabelGapVertical write Set_LabelGapVertical;
    property MediaHandling: MediaHandling read Get_MediaHandling;
    property PaperName: WideString read Get_PaperName write Set_PaperName;
    property PaperID: Integer read Get_PaperID write Set_PaperID;
    property Orientation: BtOrientation read Get_Orientation write Set_Orientation;
    property LabelColumns: Integer read Get_LabelColumns write Set_LabelColumns;
    property LabelRows: Integer read Get_LabelRows write Set_LabelRows;
    property LabelSizeManual: WordBool read Get_LabelSizeManual write Set_LabelSizeManual;
    property LabelShape: BtShape read Get_LabelShape write Set_LabelShape;
    property LabelCorners: BtShape read Get_LabelCorners write Set_LabelCorners;
    property LabelHole: WordBool read Get_LabelHole write Set_LabelHole;
    property LabelGapManual: WordBool read Get_LabelGapManual write Set_LabelGapManual;
    property Mirror: WordBool read Get_Mirror write Set_Mirror;
    property Inverse: WordBool read Get_Inverse write Set_Inverse;
    property Tray: WideString read Get_Tray write Set_Tray;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TPageSetupProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TPageSetup
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TPageSetupProperties = class(TPersistent)
  private
    FServer:    TPageSetup;
    function    GetDefaultInterface: IBtPageSetup;
    constructor Create(AServer: TPageSetup);
  protected
    function Get_StockCategory: WideString;
    function Get_StockType: WideString;
    procedure Set_PaperName(const retval: WideString);
    function Get_PaperName: WideString;
    procedure Set_PaperID(retval: Integer);
    function Get_PaperID: Integer;
    procedure Set_Orientation(retval: BtOrientation);
    function Get_Orientation: BtOrientation;
    procedure Set_LabelColumns(retval: Integer);
    function Get_LabelColumns: Integer;
    procedure Set_LabelRows(retval: Integer);
    function Get_LabelRows: Integer;
    procedure Set_LabelSizeManual(retval: WordBool);
    function Get_LabelSizeManual: WordBool;
    procedure Set_LabelShape(retval: BtShape);
    function Get_LabelShape: BtShape;
    procedure Set_LabelCorners(retval: BtShape);
    function Get_LabelCorners: BtShape;
    procedure Set_LabelHole(retval: WordBool);
    function Get_LabelHole: WordBool;
    procedure Set_PaperWidth(units: BtUnits; retval: Single);
    function Get_PaperWidth(units: BtUnits): Single;
    procedure Set_PaperHeight(units: BtUnits; retval: Single);
    function Get_PaperHeight(units: BtUnits): Single;
    procedure Set_MarginLeft(units: BtUnits; retval: Single);
    function Get_MarginLeft(units: BtUnits): Single;
    procedure Set_MarginRight(units: BtUnits; retval: Single);
    function Get_MarginRight(units: BtUnits): Single;
    procedure Set_MarginTop(units: BtUnits; retval: Single);
    function Get_MarginTop(units: BtUnits): Single;
    procedure Set_MarginBottom(units: BtUnits; retval: Single);
    function Get_MarginBottom(units: BtUnits): Single;
    procedure Set_LabelWidth(units: BtUnits; retval: Single);
    function Get_LabelWidth(units: BtUnits): Single;
    procedure Set_LabelHeight(units: BtUnits; retval: Single);
    function Get_LabelHeight(units: BtUnits): Single;
    procedure Set_LabelHoleDiameter(units: BtUnits; retval: Single);
    function Get_LabelHoleDiameter(units: BtUnits): Single;
    function Get_Valid: WordBool;
    procedure Set_LabelGapManual(retval: WordBool);
    function Get_LabelGapManual: WordBool;
    procedure Set_LabelGapHorizontal(units: BtUnits; retval: Single);
    function Get_LabelGapHorizontal(units: BtUnits): Single;
    procedure Set_LabelGapVertical(units: BtUnits; retval: Single);
    function Get_LabelGapVertical(units: BtUnits): Single;
    procedure Set_Mirror(retval: WordBool);
    function Get_Mirror: WordBool;
    procedure Set_Inverse(retval: WordBool);
    function Get_Inverse: WordBool;
    function Get_Tray: WideString;
    procedure Set_Tray(const retval: WideString);
    function Get_MediaHandling: MediaHandling;
  public
    property DefaultInterface: IBtPageSetup read GetDefaultInterface;
  published
    property PaperName: WideString read Get_PaperName write Set_PaperName;
    property PaperID: Integer read Get_PaperID write Set_PaperID;
    property Orientation: BtOrientation read Get_Orientation write Set_Orientation;
    property LabelColumns: Integer read Get_LabelColumns write Set_LabelColumns;
    property LabelRows: Integer read Get_LabelRows write Set_LabelRows;
    property LabelSizeManual: WordBool read Get_LabelSizeManual write Set_LabelSizeManual;
    property LabelShape: BtShape read Get_LabelShape write Set_LabelShape;
    property LabelCorners: BtShape read Get_LabelCorners write Set_LabelCorners;
    property LabelHole: WordBool read Get_LabelHole write Set_LabelHole;
    property LabelGapManual: WordBool read Get_LabelGapManual write Set_LabelGapManual;
    property Mirror: WordBool read Get_Mirror write Set_Mirror;
    property Inverse: WordBool read Get_Inverse write Set_Inverse;
    property Tray: WideString read Get_Tray write Set_Tray;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoPerformance provides a Create and CreateRemote method to          
// create instances of the default interface IBtPerformance exposed by              
// the CoClass Performance. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPerformance = class
    class function Create: IBtPerformance;
    class function CreateRemote(const MachineName: string): IBtPerformance;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TPerformance
// Help String      : 
// Default Interface: IBtPerformance
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TPerformanceProperties= class;
{$ENDIF}
  TPerformance = class(TOleServer)
  private
    FIntf: IBtPerformance;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TPerformanceProperties;
    function GetServerProperties: TPerformanceProperties;
{$ENDIF}
    function GetDefaultInterface: IBtPerformance;
  protected
    procedure InitServerData; override;
    procedure Set_AllowStaticGraphics(retval: WordBool);
    function Get_AllowStaticGraphics: WordBool;
    procedure Set_AllowStaticObjects(retval: WordBool);
    function Get_AllowStaticObjects: WordBool;
    procedure Set_AllowSerialization(retval: WordBool);
    function Get_AllowSerialization: WordBool;
    procedure Set_AllowVariableDataOptimization(retval: WordBool);
    function Get_AllowVariableDataOptimization: WordBool;
    procedure Set_AllowGraphicsCaching(retval: WordBool);
    function Get_AllowGraphicsCaching: WordBool;
    procedure Set_AllowFormatCaching(retval: WordBool);
    function Get_AllowFormatCaching: WordBool;
    procedure Set_WarnWhenUsingTrueTypeFonts(retval: WordBool);
    function Get_WarnWhenUsingTrueTypeFonts: WordBool;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IBtPerformance);
    procedure Disconnect; override;
    property DefaultInterface: IBtPerformance read GetDefaultInterface;
    property AllowStaticGraphics: WordBool read Get_AllowStaticGraphics write Set_AllowStaticGraphics;
    property AllowStaticObjects: WordBool read Get_AllowStaticObjects write Set_AllowStaticObjects;
    property AllowSerialization: WordBool read Get_AllowSerialization write Set_AllowSerialization;
    property AllowVariableDataOptimization: WordBool read Get_AllowVariableDataOptimization write Set_AllowVariableDataOptimization;
    property AllowGraphicsCaching: WordBool read Get_AllowGraphicsCaching write Set_AllowGraphicsCaching;
    property AllowFormatCaching: WordBool read Get_AllowFormatCaching write Set_AllowFormatCaching;
    property WarnWhenUsingTrueTypeFonts: WordBool read Get_WarnWhenUsingTrueTypeFonts write Set_WarnWhenUsingTrueTypeFonts;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TPerformanceProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TPerformance
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TPerformanceProperties = class(TPersistent)
  private
    FServer:    TPerformance;
    function    GetDefaultInterface: IBtPerformance;
    constructor Create(AServer: TPerformance);
  protected
    procedure Set_AllowStaticGraphics(retval: WordBool);
    function Get_AllowStaticGraphics: WordBool;
    procedure Set_AllowStaticObjects(retval: WordBool);
    function Get_AllowStaticObjects: WordBool;
    procedure Set_AllowSerialization(retval: WordBool);
    function Get_AllowSerialization: WordBool;
    procedure Set_AllowVariableDataOptimization(retval: WordBool);
    function Get_AllowVariableDataOptimization: WordBool;
    procedure Set_AllowGraphicsCaching(retval: WordBool);
    function Get_AllowGraphicsCaching: WordBool;
    procedure Set_AllowFormatCaching(retval: WordBool);
    function Get_AllowFormatCaching: WordBool;
    procedure Set_WarnWhenUsingTrueTypeFonts(retval: WordBool);
    function Get_WarnWhenUsingTrueTypeFonts: WordBool;
  public
    property DefaultInterface: IBtPerformance read GetDefaultInterface;
  published
    property AllowStaticGraphics: WordBool read Get_AllowStaticGraphics write Set_AllowStaticGraphics;
    property AllowStaticObjects: WordBool read Get_AllowStaticObjects write Set_AllowStaticObjects;
    property AllowSerialization: WordBool read Get_AllowSerialization write Set_AllowSerialization;
    property AllowVariableDataOptimization: WordBool read Get_AllowVariableDataOptimization write Set_AllowVariableDataOptimization;
    property AllowGraphicsCaching: WordBool read Get_AllowGraphicsCaching write Set_AllowGraphicsCaching;
    property AllowFormatCaching: WordBool read Get_AllowFormatCaching write Set_AllowFormatCaching;
    property WarnWhenUsingTrueTypeFonts: WordBool read Get_WarnWhenUsingTrueTypeFonts write Set_WarnWhenUsingTrueTypeFonts;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoCache provides a Create and CreateRemote method to          
// create instances of the default interface IBtCache exposed by              
// the CoClass Cache. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCache = class
    class function Create: IBtCache;
    class function CreateRemote(const MachineName: string): IBtCache;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TCache
// Help String      : 
// Default Interface: IBtCache
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TCacheProperties= class;
{$ENDIF}
  TCache = class(TOleServer)
  private
    FIntf: IBtCache;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TCacheProperties;
    function GetServerProperties: TCacheProperties;
{$ENDIF}
    function GetDefaultInterface: IBtCache;
  protected
    procedure InitServerData; override;
    procedure Set_FlushInterval(retval: BtCacheFlushInterval);
    function Get_FlushInterval: BtCacheFlushInterval;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IBtCache);
    procedure Disconnect; override;
    procedure Flush;
    property DefaultInterface: IBtCache read GetDefaultInterface;
    property FlushInterval: BtCacheFlushInterval read Get_FlushInterval write Set_FlushInterval;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TCacheProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TCache
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TCacheProperties = class(TPersistent)
  private
    FServer:    TCache;
    function    GetDefaultInterface: IBtCache;
    constructor Create(AServer: TCache);
  protected
    procedure Set_FlushInterval(retval: BtCacheFlushInterval);
    function Get_FlushInterval: BtCacheFlushInterval;
  public
    property DefaultInterface: IBtCache read GetDefaultInterface;
  published
    property FlushInterval: BtCacheFlushInterval read Get_FlushInterval write Set_FlushInterval;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoPrintMethod provides a Create and CreateRemote method to          
// create instances of the default interface IBtPrintMethod exposed by              
// the CoClass PrintMethod. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPrintMethod = class
    class function Create: IBtPrintMethod;
    class function CreateRemote(const MachineName: string): IBtPrintMethod;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TPrintMethod
// Help String      : 
// Default Interface: IBtPrintMethod
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TPrintMethodProperties= class;
{$ENDIF}
  TPrintMethod = class(TOleServer)
  private
    FIntf: IBtPrintMethod;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TPrintMethodProperties;
    function GetServerProperties: TPrintMethodProperties;
{$ENDIF}
    function GetDefaultInterface: IBtPrintMethod;
  protected
    procedure InitServerData; override;
    procedure Set_TrueTypeText(retval: BtTextPrintMethod);
    function Get_TrueTypeText: BtTextPrintMethod;
    procedure Set_Unsupported1DBarCodes(retval: BtBarCodePrintMethod);
    function Get_Unsupported1DBarCodes: BtBarCodePrintMethod;
    procedure Set_Unsupported2DBarCodes(retval: BtBarCodePrintMethod);
    function Get_Unsupported2DBarCodes: BtBarCodePrintMethod;
    procedure Set_Lines(retval: BtLinePrintMethod);
    function Get_Lines: BtLinePrintMethod;
    procedure Set_Boxes(retval: BtBoxPrintMethod);
    function Get_Boxes: BtBoxPrintMethod;
    procedure Set_Ellipses(retval: BtEllipsePrintMethod);
    function Get_Ellipses: BtEllipsePrintMethod;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IBtPrintMethod);
    procedure Disconnect; override;
    property DefaultInterface: IBtPrintMethod read GetDefaultInterface;
    property TrueTypeText: BtTextPrintMethod read Get_TrueTypeText write Set_TrueTypeText;
    property Unsupported1DBarCodes: BtBarCodePrintMethod read Get_Unsupported1DBarCodes write Set_Unsupported1DBarCodes;
    property Unsupported2DBarCodes: BtBarCodePrintMethod read Get_Unsupported2DBarCodes write Set_Unsupported2DBarCodes;
    property Lines: BtLinePrintMethod read Get_Lines write Set_Lines;
    property Boxes: BtBoxPrintMethod read Get_Boxes write Set_Boxes;
    property Ellipses: BtEllipsePrintMethod read Get_Ellipses write Set_Ellipses;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TPrintMethodProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TPrintMethod
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TPrintMethodProperties = class(TPersistent)
  private
    FServer:    TPrintMethod;
    function    GetDefaultInterface: IBtPrintMethod;
    constructor Create(AServer: TPrintMethod);
  protected
    procedure Set_TrueTypeText(retval: BtTextPrintMethod);
    function Get_TrueTypeText: BtTextPrintMethod;
    procedure Set_Unsupported1DBarCodes(retval: BtBarCodePrintMethod);
    function Get_Unsupported1DBarCodes: BtBarCodePrintMethod;
    procedure Set_Unsupported2DBarCodes(retval: BtBarCodePrintMethod);
    function Get_Unsupported2DBarCodes: BtBarCodePrintMethod;
    procedure Set_Lines(retval: BtLinePrintMethod);
    function Get_Lines: BtLinePrintMethod;
    procedure Set_Boxes(retval: BtBoxPrintMethod);
    function Get_Boxes: BtBoxPrintMethod;
    procedure Set_Ellipses(retval: BtEllipsePrintMethod);
    function Get_Ellipses: BtEllipsePrintMethod;
  public
    property DefaultInterface: IBtPrintMethod read GetDefaultInterface;
  published
    property TrueTypeText: BtTextPrintMethod read Get_TrueTypeText write Set_TrueTypeText;
    property Unsupported1DBarCodes: BtBarCodePrintMethod read Get_Unsupported1DBarCodes write Set_Unsupported1DBarCodes;
    property Unsupported2DBarCodes: BtBarCodePrintMethod read Get_Unsupported2DBarCodes write Set_Unsupported2DBarCodes;
    property Lines: BtLinePrintMethod read Get_Lines write Set_Lines;
    property Boxes: BtBoxPrintMethod read Get_Boxes write Set_Boxes;
    property Ellipses: BtEllipsePrintMethod read Get_Ellipses write Set_Ellipses;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoPrintSetup provides a Create and CreateRemote method to          
// create instances of the default interface IBtPrintSetup exposed by              
// the CoClass PrintSetup. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPrintSetup = class
    class function Create: IBtPrintSetup;
    class function CreateRemote(const MachineName: string): IBtPrintSetup;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TPrintSetup
// Help String      : 
// Default Interface: IBtPrintSetup
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TPrintSetupProperties= class;
{$ENDIF}
  TPrintSetup = class(TOleServer)
  private
    FIntf: IBtPrintSetup;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TPrintSetupProperties;
    function GetServerProperties: TPrintSetupProperties;
{$ENDIF}
    function GetDefaultInterface: IBtPrintSetup;
  protected
    procedure InitServerData; override;
    function Get_Performance: Performance;
    function Get_Cache: Cache;
    function Get_PrintMethod: PrintMethod;
    procedure Set_AutoPrintAgain(retval: WordBool);
    function Get_AutoPrintAgain: WordBool;
    procedure Set_IdenticalCopiesOfLabel(retval: SYSINT);
    function Get_IdenticalCopiesOfLabel: SYSINT;
    procedure Set_NumberSerializedLabels(retval: SYSINT);
    function Get_NumberSerializedLabels: SYSINT;
    procedure Set_RefreshDatabases(retval: WordBool);
    function Get_RefreshDatabases: WordBool;
    procedure Set_LogPrintJob(retval: WordBool);
    function Get_LogPrintJob: WordBool;
    function Get_Printer: WideString;
    procedure Set_PrintToFile(retval: WordBool);
    function Get_PrintToFile: WordBool;
    procedure Set_UseDatabase(retval: WordBool);
    function Get_UseDatabase: WordBool;
    procedure Set_Printer(const retval: WideString);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IBtPrintSetup);
    procedure Disconnect; override;
    property DefaultInterface: IBtPrintSetup read GetDefaultInterface;
    property Performance: Performance read Get_Performance;
    property Cache: Cache read Get_Cache;
    property PrintMethod: PrintMethod read Get_PrintMethod;
    property AutoPrintAgain: WordBool read Get_AutoPrintAgain write Set_AutoPrintAgain;
    property IdenticalCopiesOfLabel: SYSINT read Get_IdenticalCopiesOfLabel write Set_IdenticalCopiesOfLabel;
    property NumberSerializedLabels: SYSINT read Get_NumberSerializedLabels write Set_NumberSerializedLabels;
    property RefreshDatabases: WordBool read Get_RefreshDatabases write Set_RefreshDatabases;
    property LogPrintJob: WordBool read Get_LogPrintJob write Set_LogPrintJob;
    property Printer: WideString read Get_Printer write Set_Printer;
    property PrintToFile: WordBool read Get_PrintToFile write Set_PrintToFile;
    property UseDatabase: WordBool read Get_UseDatabase write Set_UseDatabase;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TPrintSetupProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TPrintSetup
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TPrintSetupProperties = class(TPersistent)
  private
    FServer:    TPrintSetup;
    function    GetDefaultInterface: IBtPrintSetup;
    constructor Create(AServer: TPrintSetup);
  protected
    function Get_Performance: Performance;
    function Get_Cache: Cache;
    function Get_PrintMethod: PrintMethod;
    procedure Set_AutoPrintAgain(retval: WordBool);
    function Get_AutoPrintAgain: WordBool;
    procedure Set_IdenticalCopiesOfLabel(retval: SYSINT);
    function Get_IdenticalCopiesOfLabel: SYSINT;
    procedure Set_NumberSerializedLabels(retval: SYSINT);
    function Get_NumberSerializedLabels: SYSINT;
    procedure Set_RefreshDatabases(retval: WordBool);
    function Get_RefreshDatabases: WordBool;
    procedure Set_LogPrintJob(retval: WordBool);
    function Get_LogPrintJob: WordBool;
    function Get_Printer: WideString;
    procedure Set_PrintToFile(retval: WordBool);
    function Get_PrintToFile: WordBool;
    procedure Set_UseDatabase(retval: WordBool);
    function Get_UseDatabase: WordBool;
    procedure Set_Printer(const retval: WideString);
  public
    property DefaultInterface: IBtPrintSetup read GetDefaultInterface;
  published
    property AutoPrintAgain: WordBool read Get_AutoPrintAgain write Set_AutoPrintAgain;
    property IdenticalCopiesOfLabel: SYSINT read Get_IdenticalCopiesOfLabel write Set_IdenticalCopiesOfLabel;
    property NumberSerializedLabels: SYSINT read Get_NumberSerializedLabels write Set_NumberSerializedLabels;
    property RefreshDatabases: WordBool read Get_RefreshDatabases write Set_RefreshDatabases;
    property LogPrintJob: WordBool read Get_LogPrintJob write Set_LogPrintJob;
    property Printer: WideString read Get_Printer write Set_Printer;
    property PrintToFile: WordBool read Get_PrintToFile write Set_PrintToFile;
    property UseDatabase: WordBool read Get_UseDatabase write Set_UseDatabase;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoJob provides a Create and CreateRemote method to          
// create instances of the default interface IBtJob exposed by              
// the CoClass Job. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoJob = class
    class function Create: IBtJob;
    class function CreateRemote(const MachineName: string): IBtJob;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TJob
// Help String      : 
// Default Interface: IBtJob
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TJobProperties= class;
{$ENDIF}
  TJob = class(TOleServer)
  private
    FIntf: IBtJob;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TJobProperties;
    function GetServerProperties: TJobProperties;
{$ENDIF}
    function GetDefaultInterface: IBtJob;
  protected
    procedure InitServerData; override;
    procedure Set_FormatIdType(retval: BtFormatIdValueType);
    function Get_FormatIdType: BtFormatIdValueType;
    procedure Set_FormatId(const retval: WideString);
    function Get_FormatId: WideString;
    procedure Set_PrinterCopiesType(retval: BtPrinterCopiesValueType);
    function Get_PrinterCopiesType: BtPrinterCopiesValueType;
    procedure Set_PrinterCopies(const retval: WideString);
    function Get_PrinterCopies: WideString;
    procedure Set_PrinterSerializedCopiesType(retval: BtPrinterSerializedCopiesValueType);
    function Get_PrinterSerializedCopiesType: BtPrinterSerializedCopiesValueType;
    procedure Set_PrinterSerializedCopies(const retval: WideString);
    function Get_PrinterSerializedCopies: WideString;
    procedure Set_PrinterBatchCopiesType(retval: BtPrinterBatchCopiesValueType);
    function Get_PrinterBatchCopiesType: BtPrinterBatchCopiesValueType;
    procedure Set_PrinterBatchCopies(const retval: WideString);
    function Get_PrinterBatchCopies: WideString;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IBtJob);
    procedure Disconnect; override;
    property DefaultInterface: IBtJob read GetDefaultInterface;
    property FormatIdType: BtFormatIdValueType read Get_FormatIdType write Set_FormatIdType;
    property FormatId: WideString read Get_FormatId write Set_FormatId;
    property PrinterCopiesType: BtPrinterCopiesValueType read Get_PrinterCopiesType write Set_PrinterCopiesType;
    property PrinterCopies: WideString read Get_PrinterCopies write Set_PrinterCopies;
    property PrinterSerializedCopiesType: BtPrinterSerializedCopiesValueType read Get_PrinterSerializedCopiesType write Set_PrinterSerializedCopiesType;
    property PrinterSerializedCopies: WideString read Get_PrinterSerializedCopies write Set_PrinterSerializedCopies;
    property PrinterBatchCopiesType: BtPrinterBatchCopiesValueType read Get_PrinterBatchCopiesType write Set_PrinterBatchCopiesType;
    property PrinterBatchCopies: WideString read Get_PrinterBatchCopies write Set_PrinterBatchCopies;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TJobProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TJob
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TJobProperties = class(TPersistent)
  private
    FServer:    TJob;
    function    GetDefaultInterface: IBtJob;
    constructor Create(AServer: TJob);
  protected
    procedure Set_FormatIdType(retval: BtFormatIdValueType);
    function Get_FormatIdType: BtFormatIdValueType;
    procedure Set_FormatId(const retval: WideString);
    function Get_FormatId: WideString;
    procedure Set_PrinterCopiesType(retval: BtPrinterCopiesValueType);
    function Get_PrinterCopiesType: BtPrinterCopiesValueType;
    procedure Set_PrinterCopies(const retval: WideString);
    function Get_PrinterCopies: WideString;
    procedure Set_PrinterSerializedCopiesType(retval: BtPrinterSerializedCopiesValueType);
    function Get_PrinterSerializedCopiesType: BtPrinterSerializedCopiesValueType;
    procedure Set_PrinterSerializedCopies(const retval: WideString);
    function Get_PrinterSerializedCopies: WideString;
    procedure Set_PrinterBatchCopiesType(retval: BtPrinterBatchCopiesValueType);
    function Get_PrinterBatchCopiesType: BtPrinterBatchCopiesValueType;
    procedure Set_PrinterBatchCopies(const retval: WideString);
    function Get_PrinterBatchCopies: WideString;
  public
    property DefaultInterface: IBtJob read GetDefaultInterface;
  published
    property FormatIdType: BtFormatIdValueType read Get_FormatIdType write Set_FormatIdType;
    property FormatId: WideString read Get_FormatId write Set_FormatId;
    property PrinterCopiesType: BtPrinterCopiesValueType read Get_PrinterCopiesType write Set_PrinterCopiesType;
    property PrinterCopies: WideString read Get_PrinterCopies write Set_PrinterCopies;
    property PrinterSerializedCopiesType: BtPrinterSerializedCopiesValueType read Get_PrinterSerializedCopiesType write Set_PrinterSerializedCopiesType;
    property PrinterSerializedCopies: WideString read Get_PrinterSerializedCopies write Set_PrinterSerializedCopies;
    property PrinterBatchCopiesType: BtPrinterBatchCopiesValueType read Get_PrinterBatchCopiesType write Set_PrinterBatchCopiesType;
    property PrinterBatchCopies: WideString read Get_PrinterBatchCopies write Set_PrinterBatchCopies;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoPrinterCodeTemplate provides a Create and CreateRemote method to          
// create instances of the default interface IBtPrinterCodeTemplate exposed by              
// the CoClass PrinterCodeTemplate. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPrinterCodeTemplate = class
    class function Create: IBtPrinterCodeTemplate;
    class function CreateRemote(const MachineName: string): IBtPrinterCodeTemplate;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TPrinterCodeTemplate
// Help String      : 
// Default Interface: IBtPrinterCodeTemplate
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TPrinterCodeTemplateProperties= class;
{$ENDIF}
  TPrinterCodeTemplate = class(TOleServer)
  private
    FIntf: IBtPrinterCodeTemplate;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TPrinterCodeTemplateProperties;
    function GetServerProperties: TPrinterCodeTemplateProperties;
{$ENDIF}
    function GetDefaultInterface: IBtPrinterCodeTemplate;
  protected
    procedure InitServerData; override;
    function Get_PrintMethod: PrintMethod;
    function Get_Performance: Performance;
    function Get_Job: Job;
    procedure Set_ExportAsVersion(retval: BtPctExportVersion);
    function Get_ExportAsVersion: BtPctExportVersion;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IBtPrinterCodeTemplate);
    procedure Disconnect; override;
    function Export(const PrintSystemName: WideString; ExportType: BtPctExportType; 
                    const FormatOrCombinedExportPath: WideString; const DataExportPath: WideString; 
                    var Messages: IDispatch): WordBool;
    property DefaultInterface: IBtPrinterCodeTemplate read GetDefaultInterface;
    property PrintMethod: PrintMethod read Get_PrintMethod;
    property Performance: Performance read Get_Performance;
    property Job: Job read Get_Job;
    property ExportAsVersion: BtPctExportVersion read Get_ExportAsVersion write Set_ExportAsVersion;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TPrinterCodeTemplateProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TPrinterCodeTemplate
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TPrinterCodeTemplateProperties = class(TPersistent)
  private
    FServer:    TPrinterCodeTemplate;
    function    GetDefaultInterface: IBtPrinterCodeTemplate;
    constructor Create(AServer: TPrinterCodeTemplate);
  protected
    function Get_PrintMethod: PrintMethod;
    function Get_Performance: Performance;
    function Get_Job: Job;
    procedure Set_ExportAsVersion(retval: BtPctExportVersion);
    function Get_ExportAsVersion: BtPctExportVersion;
  public
    property DefaultInterface: IBtPrinterCodeTemplate read GetDefaultInterface;
  published
    property ExportAsVersion: BtPctExportVersion read Get_ExportAsVersion write Set_ExportAsVersion;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoDesignObject provides a Create and CreateRemote method to          
// create instances of the default interface IBtDesignObject exposed by              
// the CoClass DesignObject. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDesignObject = class
    class function Create: IBtDesignObject;
    class function CreateRemote(const MachineName: string): IBtDesignObject;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TDesignObject
// Help String      : 
// Default Interface: IBtDesignObject
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TDesignObjectProperties= class;
{$ENDIF}
  TDesignObject = class(TOleServer)
  private
    FIntf: IBtDesignObject;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TDesignObjectProperties;
    function GetServerProperties: TDesignObjectProperties;
{$ENDIF}
    function GetDefaultInterface: IBtDesignObject;
  protected
    procedure InitServerData; override;
    function Get_Name: WideString;
    function Get_Value: WideString;
    function Get_type_: BtObjectType;
    procedure Set_X(retval: Double);
    function Get_X: Double;
    procedure Set_Y(retval: Double);
    function Get_Y: Double;
    procedure Set_RotationAngle(retval: Double);
    function Get_RotationAngle: Double;
    procedure Set_DoNotPrint(retval: WordBool);
    function Get_DoNotPrint: WordBool;
    procedure Set_Comment(const retval: WideString);
    function Get_Comment: WideString;
    procedure Set_Width(retval: Double);
    function Get_Width: Double;
    procedure Set_Height(retval: Double);
    function Get_Height: Double;
    procedure Set_Length(retval: Double);
    function Get_Length: Double;
    procedure Set_LineThickness(retval: Double);
    function Get_LineThickness: Double;
    procedure Set_LineStartX(retval: Double);
    function Get_LineStartX: Double;
    procedure Set_LineStartY(retval: Double);
    function Get_LineStartY: Double;
    procedure Set_LineEndX(retval: Double);
    function Get_LineEndX: Double;
    procedure Set_LineEndY(retval: Double);
    function Get_LineEndY: Double;
    procedure Set_CornerRadius(retval: Double);
    function Get_CornerRadius: Double;
    procedure Set_LineColor(retval: LongWord);
    function Get_LineColor: LongWord;
    procedure Set_FillColor(retval: LongWord);
    function Get_FillColor: LongWord;
    procedure Set_BarCodeColor(retval: LongWord);
    function Get_BarCodeColor: LongWord;
    procedure Set_TextColor(retval: LongWord);
    function Get_TextColor: LongWord;
    procedure Set_TextBackgroundColor(retval: LongWord);
    function Get_TextBackgroundColor: LongWord;
    procedure Set_FontName(const retval: WideString);
    function Get_FontName: WideString;
    procedure Set_FontSize(retval: Double);
    function Get_FontSize: Double;
    procedure Set_FontScale(retval: Double);
    function Get_FontScale: Double;
    procedure Set_FontWeight(retval: BtFontWeight);
    function Get_FontWeight: BtFontWeight;
    procedure Set_FontBold(retval: WordBool);
    function Get_FontBold: WordBool;
    procedure Set_FontItalic(retval: WordBool);
    function Get_FontItalic: WordBool;
    procedure Set_FontUnderline(retval: WordBool);
    function Get_FontUnderline: WordBool;
    procedure Set_FontStrikeout(retval: WordBool);
    function Get_FontStrikeout: WordBool;
    procedure Set_FontScript(retval: BtFontScript);
    function Get_FontScript: BtFontScript;
    function Get_HumanReadableValue: WideString;
    function Get_EncodedValue: WideString;
    procedure Set_MirrorHorizontal(retval: WordBool);
    function Get_MirrorHorizontal: WordBool;
    procedure Set_MirrorVertical(retval: WordBool);
    function Get_MirrorVertical: WordBool;
    procedure Set_PercentWidth(retval: Integer);
    function Get_PercentWidth: Integer;
    procedure Set_PercentHeight(retval: Integer);
    function Get_PercentHeight: Integer;
    procedure Set_PreserveAspectRatio(retval: WordBool);
    function Get_PreserveAspectRatio: WordBool;
    procedure Set_PicturePath(const retval: WideString);
    function Get_PicturePath: WideString;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IBtDesignObject);
    procedure Disconnect; override;
    procedure ExportToClipboard(Color: BtColors; Resolution: BtResolution);
    procedure ExportToFile(const FileName: WideString; const FileType: WideString; Color: BtColors; 
                           Resolution: BtResolution; SaveOption: BtSaveOptions);
    property DefaultInterface: IBtDesignObject read GetDefaultInterface;
    property Name: WideString read Get_Name;
    property Value: WideString read Get_Value;
    property type_: BtObjectType read Get_type_;
    property HumanReadableValue: WideString read Get_HumanReadableValue;
    property EncodedValue: WideString read Get_EncodedValue;
    property X: Double read Get_X write Set_X;
    property Y: Double read Get_Y write Set_Y;
    property RotationAngle: Double read Get_RotationAngle write Set_RotationAngle;
    property DoNotPrint: WordBool read Get_DoNotPrint write Set_DoNotPrint;
    property Comment: WideString read Get_Comment write Set_Comment;
    property Width: Double read Get_Width write Set_Width;
    property Height: Double read Get_Height write Set_Height;
    property Length: Double read Get_Length write Set_Length;
    property LineThickness: Double read Get_LineThickness write Set_LineThickness;
    property LineStartX: Double read Get_LineStartX write Set_LineStartX;
    property LineStartY: Double read Get_LineStartY write Set_LineStartY;
    property LineEndX: Double read Get_LineEndX write Set_LineEndX;
    property LineEndY: Double read Get_LineEndY write Set_LineEndY;
    property CornerRadius: Double read Get_CornerRadius write Set_CornerRadius;
    property LineColor: LongWord read Get_LineColor write Set_LineColor;
    property FillColor: LongWord read Get_FillColor write Set_FillColor;
    property BarCodeColor: LongWord read Get_BarCodeColor write Set_BarCodeColor;
    property TextColor: LongWord read Get_TextColor write Set_TextColor;
    property TextBackgroundColor: LongWord read Get_TextBackgroundColor write Set_TextBackgroundColor;
    property FontName: WideString read Get_FontName write Set_FontName;
    property FontSize: Double read Get_FontSize write Set_FontSize;
    property FontScale: Double read Get_FontScale write Set_FontScale;
    property FontWeight: BtFontWeight read Get_FontWeight write Set_FontWeight;
    property FontBold: WordBool read Get_FontBold write Set_FontBold;
    property FontItalic: WordBool read Get_FontItalic write Set_FontItalic;
    property FontUnderline: WordBool read Get_FontUnderline write Set_FontUnderline;
    property FontStrikeout: WordBool read Get_FontStrikeout write Set_FontStrikeout;
    property FontScript: BtFontScript read Get_FontScript write Set_FontScript;
    property MirrorHorizontal: WordBool read Get_MirrorHorizontal write Set_MirrorHorizontal;
    property MirrorVertical: WordBool read Get_MirrorVertical write Set_MirrorVertical;
    property PercentWidth: Integer read Get_PercentWidth write Set_PercentWidth;
    property PercentHeight: Integer read Get_PercentHeight write Set_PercentHeight;
    property PreserveAspectRatio: WordBool read Get_PreserveAspectRatio write Set_PreserveAspectRatio;
    property PicturePath: WideString read Get_PicturePath write Set_PicturePath;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TDesignObjectProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TDesignObject
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TDesignObjectProperties = class(TPersistent)
  private
    FServer:    TDesignObject;
    function    GetDefaultInterface: IBtDesignObject;
    constructor Create(AServer: TDesignObject);
  protected
    function Get_Name: WideString;
    function Get_Value: WideString;
    function Get_type_: BtObjectType;
    procedure Set_X(retval: Double);
    function Get_X: Double;
    procedure Set_Y(retval: Double);
    function Get_Y: Double;
    procedure Set_RotationAngle(retval: Double);
    function Get_RotationAngle: Double;
    procedure Set_DoNotPrint(retval: WordBool);
    function Get_DoNotPrint: WordBool;
    procedure Set_Comment(const retval: WideString);
    function Get_Comment: WideString;
    procedure Set_Width(retval: Double);
    function Get_Width: Double;
    procedure Set_Height(retval: Double);
    function Get_Height: Double;
    procedure Set_Length(retval: Double);
    function Get_Length: Double;
    procedure Set_LineThickness(retval: Double);
    function Get_LineThickness: Double;
    procedure Set_LineStartX(retval: Double);
    function Get_LineStartX: Double;
    procedure Set_LineStartY(retval: Double);
    function Get_LineStartY: Double;
    procedure Set_LineEndX(retval: Double);
    function Get_LineEndX: Double;
    procedure Set_LineEndY(retval: Double);
    function Get_LineEndY: Double;
    procedure Set_CornerRadius(retval: Double);
    function Get_CornerRadius: Double;
    procedure Set_LineColor(retval: LongWord);
    function Get_LineColor: LongWord;
    procedure Set_FillColor(retval: LongWord);
    function Get_FillColor: LongWord;
    procedure Set_BarCodeColor(retval: LongWord);
    function Get_BarCodeColor: LongWord;
    procedure Set_TextColor(retval: LongWord);
    function Get_TextColor: LongWord;
    procedure Set_TextBackgroundColor(retval: LongWord);
    function Get_TextBackgroundColor: LongWord;
    procedure Set_FontName(const retval: WideString);
    function Get_FontName: WideString;
    procedure Set_FontSize(retval: Double);
    function Get_FontSize: Double;
    procedure Set_FontScale(retval: Double);
    function Get_FontScale: Double;
    procedure Set_FontWeight(retval: BtFontWeight);
    function Get_FontWeight: BtFontWeight;
    procedure Set_FontBold(retval: WordBool);
    function Get_FontBold: WordBool;
    procedure Set_FontItalic(retval: WordBool);
    function Get_FontItalic: WordBool;
    procedure Set_FontUnderline(retval: WordBool);
    function Get_FontUnderline: WordBool;
    procedure Set_FontStrikeout(retval: WordBool);
    function Get_FontStrikeout: WordBool;
    procedure Set_FontScript(retval: BtFontScript);
    function Get_FontScript: BtFontScript;
    function Get_HumanReadableValue: WideString;
    function Get_EncodedValue: WideString;
    procedure Set_MirrorHorizontal(retval: WordBool);
    function Get_MirrorHorizontal: WordBool;
    procedure Set_MirrorVertical(retval: WordBool);
    function Get_MirrorVertical: WordBool;
    procedure Set_PercentWidth(retval: Integer);
    function Get_PercentWidth: Integer;
    procedure Set_PercentHeight(retval: Integer);
    function Get_PercentHeight: Integer;
    procedure Set_PreserveAspectRatio(retval: WordBool);
    function Get_PreserveAspectRatio: WordBool;
    procedure Set_PicturePath(const retval: WideString);
    function Get_PicturePath: WideString;
  public
    property DefaultInterface: IBtDesignObject read GetDefaultInterface;
  published
    property X: Double read Get_X write Set_X;
    property Y: Double read Get_Y write Set_Y;
    property RotationAngle: Double read Get_RotationAngle write Set_RotationAngle;
    property DoNotPrint: WordBool read Get_DoNotPrint write Set_DoNotPrint;
    property Comment: WideString read Get_Comment write Set_Comment;
    property Width: Double read Get_Width write Set_Width;
    property Height: Double read Get_Height write Set_Height;
    property Length: Double read Get_Length write Set_Length;
    property LineThickness: Double read Get_LineThickness write Set_LineThickness;
    property LineStartX: Double read Get_LineStartX write Set_LineStartX;
    property LineStartY: Double read Get_LineStartY write Set_LineStartY;
    property LineEndX: Double read Get_LineEndX write Set_LineEndX;
    property LineEndY: Double read Get_LineEndY write Set_LineEndY;
    property CornerRadius: Double read Get_CornerRadius write Set_CornerRadius;
    property LineColor: LongWord read Get_LineColor write Set_LineColor;
    property FillColor: LongWord read Get_FillColor write Set_FillColor;
    property BarCodeColor: LongWord read Get_BarCodeColor write Set_BarCodeColor;
    property TextColor: LongWord read Get_TextColor write Set_TextColor;
    property TextBackgroundColor: LongWord read Get_TextBackgroundColor write Set_TextBackgroundColor;
    property FontName: WideString read Get_FontName write Set_FontName;
    property FontSize: Double read Get_FontSize write Set_FontSize;
    property FontScale: Double read Get_FontScale write Set_FontScale;
    property FontWeight: BtFontWeight read Get_FontWeight write Set_FontWeight;
    property FontBold: WordBool read Get_FontBold write Set_FontBold;
    property FontItalic: WordBool read Get_FontItalic write Set_FontItalic;
    property FontUnderline: WordBool read Get_FontUnderline write Set_FontUnderline;
    property FontStrikeout: WordBool read Get_FontStrikeout write Set_FontStrikeout;
    property FontScript: BtFontScript read Get_FontScript write Set_FontScript;
    property MirrorHorizontal: WordBool read Get_MirrorHorizontal write Set_MirrorHorizontal;
    property MirrorVertical: WordBool read Get_MirrorVertical write Set_MirrorVertical;
    property PercentWidth: Integer read Get_PercentWidth write Set_PercentWidth;
    property PercentHeight: Integer read Get_PercentHeight write Set_PercentHeight;
    property PreserveAspectRatio: WordBool read Get_PreserveAspectRatio write Set_PreserveAspectRatio;
    property PicturePath: WideString read Get_PicturePath write Set_PicturePath;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoDesignObjects provides a Create and CreateRemote method to          
// create instances of the default interface IBtDesignObjects exposed by              
// the CoClass DesignObjects. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDesignObjects = class
    class function Create: IBtDesignObjects;
    class function CreateRemote(const MachineName: string): IBtDesignObjects;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TDesignObjects
// Help String      : 
// Default Interface: IBtDesignObjects
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TDesignObjectsProperties= class;
{$ENDIF}
  TDesignObjects = class(TOleServer)
  private
    FIntf: IBtDesignObjects;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TDesignObjectsProperties;
    function GetServerProperties: TDesignObjectsProperties;
{$ENDIF}
    function GetDefaultInterface: IBtDesignObjects;
  protected
    procedure InitServerData; override;
    function Get_Count: Integer;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IBtDesignObjects);
    procedure Disconnect; override;
    function Item(var Index: OleVariant): DesignObject;
    function Find(const Name: WideString): DesignObject;
    property DefaultInterface: IBtDesignObjects read GetDefaultInterface;
    property Count: Integer read Get_Count;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TDesignObjectsProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TDesignObjects
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TDesignObjectsProperties = class(TPersistent)
  private
    FServer:    TDesignObjects;
    function    GetDefaultInterface: IBtDesignObjects;
    constructor Create(AServer: TDesignObjects);
  protected
    function Get_Count: Integer;
  public
    property DefaultInterface: IBtDesignObjects read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoViewRecordNavigator provides a Create and CreateRemote method to          
// create instances of the default interface IBtViewRecordNavigator exposed by              
// the CoClass ViewRecordNavigator. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoViewRecordNavigator = class
    class function Create: IBtViewRecordNavigator;
    class function CreateRemote(const MachineName: string): IBtViewRecordNavigator;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TViewRecordNavigator
// Help String      : 
// Default Interface: IBtViewRecordNavigator
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TViewRecordNavigatorProperties= class;
{$ENDIF}
  TViewRecordNavigator = class(TOleServer)
  private
    FIntf: IBtViewRecordNavigator;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TViewRecordNavigatorProperties;
    function GetServerProperties: TViewRecordNavigatorProperties;
{$ENDIF}
    function GetDefaultInterface: IBtViewRecordNavigator;
  protected
    procedure InitServerData; override;
    procedure Set_Enabled(retval: WordBool);
    function Get_Enabled: WordBool;
    function Get_IsConnected: WordBool;
    procedure Set_CurrentRecord(retval: Integer);
    function Get_CurrentRecord: Integer;
    function Get_LastRecord: Integer;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IBtViewRecordNavigator);
    procedure Disconnect; override;
    property DefaultInterface: IBtViewRecordNavigator read GetDefaultInterface;
    property IsConnected: WordBool read Get_IsConnected;
    property LastRecord: Integer read Get_LastRecord;
    property Enabled: WordBool read Get_Enabled write Set_Enabled;
    property CurrentRecord: Integer read Get_CurrentRecord write Set_CurrentRecord;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TViewRecordNavigatorProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TViewRecordNavigator
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TViewRecordNavigatorProperties = class(TPersistent)
  private
    FServer:    TViewRecordNavigator;
    function    GetDefaultInterface: IBtViewRecordNavigator;
    constructor Create(AServer: TViewRecordNavigator);
  protected
    procedure Set_Enabled(retval: WordBool);
    function Get_Enabled: WordBool;
    function Get_IsConnected: WordBool;
    procedure Set_CurrentRecord(retval: Integer);
    function Get_CurrentRecord: Integer;
    function Get_LastRecord: Integer;
  public
    property DefaultInterface: IBtViewRecordNavigator read GetDefaultInterface;
  published
    property Enabled: WordBool read Get_Enabled write Set_Enabled;
    property CurrentRecord: Integer read Get_CurrentRecord write Set_CurrentRecord;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoFormat provides a Create and CreateRemote method to          
// create instances of the default interface IBtFormat exposed by              
// the CoClass Format. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoFormat = class
    class function Create: IBtFormat;
    class function CreateRemote(const MachineName: string): IBtFormat;
  end;

  TFormatOnNewPrintJob = procedure(ASender: TObject; const PrinterName: WideString; JobID: Integer) of object;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TFormat
// Help String      : 
// Default Interface: IBtFormat
// Def. Intf. DISP? : No
// Event   Interface: IFormatEvents
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TFormatProperties= class;
{$ENDIF}
  TFormat = class(TOleServer)
  private
    FOnNewPrintJob: TFormatOnNewPrintJob;
    FIntf: IBtFormat;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TFormatProperties;
    function GetServerProperties: TFormatProperties;
{$ENDIF}
    function GetDefaultInterface: IBtFormat;
  protected
    procedure InitServerData; override;
    procedure InvokeEvent(DispID: TDispID; var Params: TVariantArray); override;
    procedure Set_AutoPrintAgain(retval: WordBool);
    function Get_AutoPrintAgain: WordBool;
    function Get_BaseName: WideString;
    function Get_Directory: WideString;
    function Get_FileName: WideString;
    procedure Set_IdenticalCopiesOfLabel(retval: Integer);
    function Get_IdenticalCopiesOfLabel: Integer;
    function Get_InputDataFileSetup: InputDataFileSetup;
    procedure Set_NumberSerializedLabels(retval: Integer);
    function Get_NumberSerializedLabels: Integer;
    function Get_Printer: WideString;
    procedure Set_PrintToFile(retval: WordBool);
    function Get_PrintToFile: WordBool;
    function Get_Title: WideString;
    procedure Set_UseInputDataFile(retval: WordBool);
    function Get_UseInputDataFile: WordBool;
    procedure Set_SaveAsVersion(retval: BtVersion);
    function Get_SaveAsVersion: BtVersion;
    function Get_NamedSubStrings: NamedSubStrings;
    function Get_Databases: Databases;
    procedure Set_EnablePrompting(retval: WordBool);
    function Get_EnablePrompting: WordBool;
    procedure Set_RecordRange(const retval: WideString);
    function Get_RecordRange: WideString;
    procedure Set_SelectRecordsAtPrint(retval: WordBool);
    function Get_SelectRecordsAtPrint: WordBool;
    procedure Set_UseDatabase(retval: WordBool);
    function Get_UseDatabase: WordBool;
    procedure Set_Printer(const retval: WideString);
    procedure Set_PrinterFile(const retval: WideString);
    function Get_PrinterFile: WideString;
    function Get_PageSetup: PageSetup;
    function Get_PrintSetup: PrintSetup;
    function Get_PrinterCodeTemplate: PrinterCodeTemplate;
    function Get_UsedNames(FieldType: BtNameType; const delimiter: WideString): WideString;
    procedure Set_UsedNamesSampleData(FieldType: BtUsedNamesSampleDataType; const Name: WideString; 
                                      const retval: WideString);
    function Get_UsedNamesSampleData(FieldType: BtUsedNamesSampleDataType; const Name: WideString): WideString;
    procedure Set_JobName(const retval: WideString);
    function Get_JobName: WideString;
    procedure Set_PrintToFileLicense(const retval: WideString);
    function Get_PrintToFileLicense: WideString;
    procedure Set_PaperTray(const retval: WideString);
    function Get_PaperTray: WideString;
    procedure Set_Comment(const retval: WideString);
    function Get_Comment: WideString;
    procedure Set_Encryption(retval: Integer);
    function Get_Encryption: Integer;
    function Get_SupportsSetSerializedCopies: WordBool;
    function Get_SupportsSetIdenticalCopies: WordBool;
    procedure Set_MeasurementUnits(retval: BtUnits);
    function Get_MeasurementUnits: BtUnits;
    function Get_Objects: DesignObjects;
    function Get_LatestSaveNumber: Integer;
    function Get_IsModified: WordBool;
    function Get_ViewRecordNavigator: ViewRecordNavigator;
    function Get_PromptValues: WideString;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IBtFormat);
    procedure Disconnect; override;
    procedure Activate;
    procedure Close(SaveChanges: BtSaveOptions);
    function PrintOut(ShowStatusWindow: WordBool; ShowPrintDialog: WordBool): Integer;
    procedure SetNamedSubStringValue(const SubStringName: WideString; const Value: WideString);
    function GetNamedSubStringValue(const SubStringName: WideString): WideString;
    procedure Save;
    procedure SaveAs(const FileName: WideString; OverwriteIfExists: WordBool);
    procedure ExportToClipboard(Color: BtColors; Resolution: BtResolution);
    procedure ExportToFile(const FileName: WideString; const FileType: WideString; Color: BtColors; 
                           Resolution: BtResolution; SaveOption: BtSaveOptions);
    procedure SetAvailableTemplateFieldNames(const FieldnameSampleDataList: WideString; 
                                             const delimiter: WideString);
    function ExportPromptToXML(const XSLFileName: WideString): WideString;
    procedure SetPrompt(const PromptName: WideString; const PromptData: WideString);
    function Print(const PrintJobName: WideString; WaitForSpoolJobToComplete: WordBool; 
                   TimeoutMs: Integer; out Messages: Messages): BtPrintResult;
    function ExportPrintPreviewToImage(const Directory: WideString; 
                                       const FileNameTemplate: WideString; 
                                       const FileType: WideString; Colors: BtColors; dpi: SYSINT; 
                                       backgroundColor: SYSINT; SaveOpts: BtSaveOptions; 
                                       IncludeMargins: WordBool; IncludeBorder: WordBool; 
                                       out Messages: Messages): BtPrintResult;
    function SpecifyLabelFormatPassword(const Password: WideString): WordBool;
    function ExportPrintPreviewRangeToImage(const PageRange: WideString; 
                                            const Directory: WideString; 
                                            const FileNameTemplate: WideString; 
                                            const FileType: WideString; Colors: BtColors; 
                                            dpi: SYSINT; backgroundColor: SYSINT; 
                                            SaveOpts: BtSaveOptions; IncludeMargins: WordBool; 
                                            IncludeBorder: WordBool; out Messages: Messages): BtPrintResult;
    function GetPrompt(const PromptName: WideString): WideString;
    property DefaultInterface: IBtFormat read GetDefaultInterface;
    property BaseName: WideString read Get_BaseName;
    property Directory: WideString read Get_Directory;
    property FileName: WideString read Get_FileName;
    property InputDataFileSetup: InputDataFileSetup read Get_InputDataFileSetup;
    property Title: WideString read Get_Title;
    property NamedSubStrings: NamedSubStrings read Get_NamedSubStrings;
    property Databases: Databases read Get_Databases;
    property PageSetup: PageSetup read Get_PageSetup;
    property PrintSetup: PrintSetup read Get_PrintSetup;
    property PrinterCodeTemplate: PrinterCodeTemplate read Get_PrinterCodeTemplate;
    property UsedNames[FieldType: BtNameType; const delimiter: WideString]: WideString read Get_UsedNames;
    property UsedNamesSampleData[FieldType: BtUsedNamesSampleDataType; const Name: WideString]: WideString read Get_UsedNamesSampleData write Set_UsedNamesSampleData;
    property SupportsSetSerializedCopies: WordBool read Get_SupportsSetSerializedCopies;
    property SupportsSetIdenticalCopies: WordBool read Get_SupportsSetIdenticalCopies;
    property Objects: DesignObjects read Get_Objects;
    property LatestSaveNumber: Integer read Get_LatestSaveNumber;
    property IsModified: WordBool read Get_IsModified;
    property ViewRecordNavigator: ViewRecordNavigator read Get_ViewRecordNavigator;
    property PromptValues: WideString read Get_PromptValues;
    property AutoPrintAgain: WordBool read Get_AutoPrintAgain write Set_AutoPrintAgain;
    property IdenticalCopiesOfLabel: Integer read Get_IdenticalCopiesOfLabel write Set_IdenticalCopiesOfLabel;
    property NumberSerializedLabels: Integer read Get_NumberSerializedLabels write Set_NumberSerializedLabels;
    property Printer: WideString read Get_Printer write Set_Printer;
    property PrintToFile: WordBool read Get_PrintToFile write Set_PrintToFile;
    property UseInputDataFile: WordBool read Get_UseInputDataFile write Set_UseInputDataFile;
    property SaveAsVersion: BtVersion read Get_SaveAsVersion write Set_SaveAsVersion;
    property EnablePrompting: WordBool read Get_EnablePrompting write Set_EnablePrompting;
    property RecordRange: WideString read Get_RecordRange write Set_RecordRange;
    property SelectRecordsAtPrint: WordBool read Get_SelectRecordsAtPrint write Set_SelectRecordsAtPrint;
    property UseDatabase: WordBool read Get_UseDatabase write Set_UseDatabase;
    property PrinterFile: WideString read Get_PrinterFile write Set_PrinterFile;
    property JobName: WideString read Get_JobName write Set_JobName;
    property PrintToFileLicense: WideString read Get_PrintToFileLicense write Set_PrintToFileLicense;
    property PaperTray: WideString read Get_PaperTray write Set_PaperTray;
    property Comment: WideString read Get_Comment write Set_Comment;
    property Encryption: Integer read Get_Encryption write Set_Encryption;
    property MeasurementUnits: BtUnits read Get_MeasurementUnits write Set_MeasurementUnits;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TFormatProperties read GetServerProperties;
{$ENDIF}
    property OnNewPrintJob: TFormatOnNewPrintJob read FOnNewPrintJob write FOnNewPrintJob;
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TFormat
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TFormatProperties = class(TPersistent)
  private
    FServer:    TFormat;
    function    GetDefaultInterface: IBtFormat;
    constructor Create(AServer: TFormat);
  protected
    procedure Set_AutoPrintAgain(retval: WordBool);
    function Get_AutoPrintAgain: WordBool;
    function Get_BaseName: WideString;
    function Get_Directory: WideString;
    function Get_FileName: WideString;
    procedure Set_IdenticalCopiesOfLabel(retval: Integer);
    function Get_IdenticalCopiesOfLabel: Integer;
    function Get_InputDataFileSetup: InputDataFileSetup;
    procedure Set_NumberSerializedLabels(retval: Integer);
    function Get_NumberSerializedLabels: Integer;
    function Get_Printer: WideString;
    procedure Set_PrintToFile(retval: WordBool);
    function Get_PrintToFile: WordBool;
    function Get_Title: WideString;
    procedure Set_UseInputDataFile(retval: WordBool);
    function Get_UseInputDataFile: WordBool;
    procedure Set_SaveAsVersion(retval: BtVersion);
    function Get_SaveAsVersion: BtVersion;
    function Get_NamedSubStrings: NamedSubStrings;
    function Get_Databases: Databases;
    procedure Set_EnablePrompting(retval: WordBool);
    function Get_EnablePrompting: WordBool;
    procedure Set_RecordRange(const retval: WideString);
    function Get_RecordRange: WideString;
    procedure Set_SelectRecordsAtPrint(retval: WordBool);
    function Get_SelectRecordsAtPrint: WordBool;
    procedure Set_UseDatabase(retval: WordBool);
    function Get_UseDatabase: WordBool;
    procedure Set_Printer(const retval: WideString);
    procedure Set_PrinterFile(const retval: WideString);
    function Get_PrinterFile: WideString;
    function Get_PageSetup: PageSetup;
    function Get_PrintSetup: PrintSetup;
    function Get_PrinterCodeTemplate: PrinterCodeTemplate;
    function Get_UsedNames(FieldType: BtNameType; const delimiter: WideString): WideString;
    procedure Set_UsedNamesSampleData(FieldType: BtUsedNamesSampleDataType; const Name: WideString; 
                                      const retval: WideString);
    function Get_UsedNamesSampleData(FieldType: BtUsedNamesSampleDataType; const Name: WideString): WideString;
    procedure Set_JobName(const retval: WideString);
    function Get_JobName: WideString;
    procedure Set_PrintToFileLicense(const retval: WideString);
    function Get_PrintToFileLicense: WideString;
    procedure Set_PaperTray(const retval: WideString);
    function Get_PaperTray: WideString;
    procedure Set_Comment(const retval: WideString);
    function Get_Comment: WideString;
    procedure Set_Encryption(retval: Integer);
    function Get_Encryption: Integer;
    function Get_SupportsSetSerializedCopies: WordBool;
    function Get_SupportsSetIdenticalCopies: WordBool;
    procedure Set_MeasurementUnits(retval: BtUnits);
    function Get_MeasurementUnits: BtUnits;
    function Get_Objects: DesignObjects;
    function Get_LatestSaveNumber: Integer;
    function Get_IsModified: WordBool;
    function Get_ViewRecordNavigator: ViewRecordNavigator;
    function Get_PromptValues: WideString;
  public
    property DefaultInterface: IBtFormat read GetDefaultInterface;
  published
    property AutoPrintAgain: WordBool read Get_AutoPrintAgain write Set_AutoPrintAgain;
    property IdenticalCopiesOfLabel: Integer read Get_IdenticalCopiesOfLabel write Set_IdenticalCopiesOfLabel;
    property NumberSerializedLabels: Integer read Get_NumberSerializedLabels write Set_NumberSerializedLabels;
    property Printer: WideString read Get_Printer write Set_Printer;
    property PrintToFile: WordBool read Get_PrintToFile write Set_PrintToFile;
    property UseInputDataFile: WordBool read Get_UseInputDataFile write Set_UseInputDataFile;
    property SaveAsVersion: BtVersion read Get_SaveAsVersion write Set_SaveAsVersion;
    property EnablePrompting: WordBool read Get_EnablePrompting write Set_EnablePrompting;
    property RecordRange: WideString read Get_RecordRange write Set_RecordRange;
    property SelectRecordsAtPrint: WordBool read Get_SelectRecordsAtPrint write Set_SelectRecordsAtPrint;
    property UseDatabase: WordBool read Get_UseDatabase write Set_UseDatabase;
    property PrinterFile: WideString read Get_PrinterFile write Set_PrinterFile;
    property JobName: WideString read Get_JobName write Set_JobName;
    property PrintToFileLicense: WideString read Get_PrintToFileLicense write Set_PrintToFileLicense;
    property PaperTray: WideString read Get_PaperTray write Set_PaperTray;
    property Comment: WideString read Get_Comment write Set_Comment;
    property Encryption: Integer read Get_Encryption write Set_Encryption;
    property MeasurementUnits: BtUnits read Get_MeasurementUnits write Set_MeasurementUnits;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoFormats provides a Create and CreateRemote method to          
// create instances of the default interface IBtFormats exposed by              
// the CoClass Formats. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoFormats = class
    class function Create: IBtFormats;
    class function CreateRemote(const MachineName: string): IBtFormats;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TFormats
// Help String      : 
// Default Interface: IBtFormats
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TFormatsProperties= class;
{$ENDIF}
  TFormats = class(TOleServer)
  private
    FIntf: IBtFormats;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TFormatsProperties;
    function GetServerProperties: TFormatsProperties;
{$ENDIF}
    function GetDefaultInterface: IBtFormats;
  protected
    procedure InitServerData; override;
    function Get_Count: Integer;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IBtFormats);
    procedure Disconnect; override;
    function Add: Format;
    function Item(var Index: OleVariant): Format;
    function Open(const FileName: WideString; CloseOutFirstFormat: WordBool; 
                  const UsePrinter: WideString): Format;
    function GetFormat(Index: OleVariant): Format;
    property DefaultInterface: IBtFormats read GetDefaultInterface;
    property Count: Integer read Get_Count;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TFormatsProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TFormats
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TFormatsProperties = class(TPersistent)
  private
    FServer:    TFormats;
    function    GetDefaultInterface: IBtFormats;
    constructor Create(AServer: TFormats);
  protected
    function Get_Count: Integer;
  public
    property DefaultInterface: IBtFormats read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoWindow provides a Create and CreateRemote method to          
// create instances of the default interface IBtWindow exposed by              
// the CoClass Window. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoWindow = class
    class function Create: IBtWindow;
    class function CreateRemote(const MachineName: string): IBtWindow;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TWindow
// Help String      : 
// Default Interface: IBtWindow
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TWindowProperties= class;
{$ENDIF}
  TWindow = class(TOleServer)
  private
    FIntf: IBtWindow;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TWindowProperties;
    function GetServerProperties: TWindowProperties;
{$ENDIF}
    function GetDefaultInterface: IBtWindow;
  protected
    procedure InitServerData; override;
    procedure Set_Left(retval: Integer);
    function Get_Left: Integer;
    procedure Set_Top(retval: Integer);
    function Get_Top: Integer;
    procedure Set_Width(retval: Integer);
    function Get_Width: Integer;
    procedure Set_Height(retval: Integer);
    function Get_Height: Integer;
    procedure Set_WindowState(retval: BtWindowState);
    function Get_WindowState: BtWindowState;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IBtWindow);
    procedure Disconnect; override;
    property DefaultInterface: IBtWindow read GetDefaultInterface;
    property Left: Integer read Get_Left write Set_Left;
    property Top: Integer read Get_Top write Set_Top;
    property Width: Integer read Get_Width write Set_Width;
    property Height: Integer read Get_Height write Set_Height;
    property WindowState: BtWindowState read Get_WindowState write Set_WindowState;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TWindowProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TWindow
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TWindowProperties = class(TPersistent)
  private
    FServer:    TWindow;
    function    GetDefaultInterface: IBtWindow;
    constructor Create(AServer: TWindow);
  protected
    procedure Set_Left(retval: Integer);
    function Get_Left: Integer;
    procedure Set_Top(retval: Integer);
    function Get_Top: Integer;
    procedure Set_Width(retval: Integer);
    function Get_Width: Integer;
    procedure Set_Height(retval: Integer);
    function Get_Height: Integer;
    procedure Set_WindowState(retval: BtWindowState);
    function Get_WindowState: BtWindowState;
  public
    property DefaultInterface: IBtWindow read GetDefaultInterface;
  published
    property Left: Integer read Get_Left write Set_Left;
    property Top: Integer read Get_Top write Set_Top;
    property Width: Integer read Get_Width write Set_Width;
    property Height: Integer read Get_Height write Set_Height;
    property WindowState: BtWindowState read Get_WindowState write Set_WindowState;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoLicenseServer provides a Create and CreateRemote method to          
// create instances of the default interface IBtLicenseServer exposed by              
// the CoClass LicenseServer. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoLicenseServer = class
    class function Create: IBtLicenseServer;
    class function CreateRemote(const MachineName: string): IBtLicenseServer;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TLicenseServer
// Help String      : 
// Default Interface: IBtLicenseServer
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TLicenseServerProperties= class;
{$ENDIF}
  TLicenseServer = class(TOleServer)
  private
    FIntf: IBtLicenseServer;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TLicenseServerProperties;
    function GetServerProperties: TLicenseServerProperties;
{$ENDIF}
    function GetDefaultInterface: IBtLicenseServer;
  protected
    procedure InitServerData; override;
    procedure Set_Address(const retval: WideString);
    function Get_Address: WideString;
    procedure Set_Port(retval: SYSINT);
    function Get_Port: SYSINT;
    procedure Set_Timeout(retval: SYSINT);
    function Get_Timeout: SYSINT;
    function Get_IsConnected: WordBool;
    procedure Set_AlternateAddress(const retval: WideString);
    function Get_AlternateAddress: WideString;
    procedure Set_AlternatePort(retval: SYSINT);
    function Get_AlternatePort: SYSINT;
    procedure Set_AlternateTimeout(retval: SYSINT);
    function Get_AlternateTimeout: SYSINT;
    function Get_MaxAllowedPrinters: SYSINT;
    function Get_MaxAllowedUsers: SYSINT;
    procedure Set_Retries(retval: SYSINT);
    function Get_Retries: SYSINT;
    procedure Set_AlternateRetries(retval: SYSINT);
    function Get_AlternateRetries: SYSINT;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IBtLicenseServer);
    procedure Disconnect; override;
    function Connect1: WordBool;
    property DefaultInterface: IBtLicenseServer read GetDefaultInterface;
    property IsConnected: WordBool read Get_IsConnected;
    property MaxAllowedPrinters: SYSINT read Get_MaxAllowedPrinters;
    property MaxAllowedUsers: SYSINT read Get_MaxAllowedUsers;
    property Address: WideString read Get_Address write Set_Address;
    property Port: SYSINT read Get_Port write Set_Port;
    property Timeout: SYSINT read Get_Timeout write Set_Timeout;
    property AlternateAddress: WideString read Get_AlternateAddress write Set_AlternateAddress;
    property AlternatePort: SYSINT read Get_AlternatePort write Set_AlternatePort;
    property AlternateTimeout: SYSINT read Get_AlternateTimeout write Set_AlternateTimeout;
    property Retries: SYSINT read Get_Retries write Set_Retries;
    property AlternateRetries: SYSINT read Get_AlternateRetries write Set_AlternateRetries;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TLicenseServerProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TLicenseServer
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TLicenseServerProperties = class(TPersistent)
  private
    FServer:    TLicenseServer;
    function    GetDefaultInterface: IBtLicenseServer;
    constructor Create(AServer: TLicenseServer);
  protected
    procedure Set_Address(const retval: WideString);
    function Get_Address: WideString;
    procedure Set_Port(retval: SYSINT);
    function Get_Port: SYSINT;
    procedure Set_Timeout(retval: SYSINT);
    function Get_Timeout: SYSINT;
    function Get_IsConnected: WordBool;
    procedure Set_AlternateAddress(const retval: WideString);
    function Get_AlternateAddress: WideString;
    procedure Set_AlternatePort(retval: SYSINT);
    function Get_AlternatePort: SYSINT;
    procedure Set_AlternateTimeout(retval: SYSINT);
    function Get_AlternateTimeout: SYSINT;
    function Get_MaxAllowedPrinters: SYSINT;
    function Get_MaxAllowedUsers: SYSINT;
    procedure Set_Retries(retval: SYSINT);
    function Get_Retries: SYSINT;
    procedure Set_AlternateRetries(retval: SYSINT);
    function Get_AlternateRetries: SYSINT;
  public
    property DefaultInterface: IBtLicenseServer read GetDefaultInterface;
  published
    property Address: WideString read Get_Address write Set_Address;
    property Port: SYSINT read Get_Port write Set_Port;
    property Timeout: SYSINT read Get_Timeout write Set_Timeout;
    property AlternateAddress: WideString read Get_AlternateAddress write Set_AlternateAddress;
    property AlternatePort: SYSINT read Get_AlternatePort write Set_AlternatePort;
    property AlternateTimeout: SYSINT read Get_AlternateTimeout write Set_AlternateTimeout;
    property Retries: SYSINT read Get_Retries write Set_Retries;
    property AlternateRetries: SYSINT read Get_AlternateRetries write Set_AlternateRetries;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoApplication provides a Create and CreateRemote method to          
// create instances of the default interface IBtApplication exposed by              
// the CoClass Application. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoApplication = class
    class function Create: IBtApplication;
    class function CreateRemote(const MachineName: string): IBtApplication;
  end;

  TApplicationOnCommandLineCompleted = procedure(ASender: TObject; const ResponseString: WideString; 
                                                                   var Messages: Messages; 
                                                                   const CommandLine: WideString) of object;
  TApplicationOnNewPrintJob = procedure(ASender: TObject; const PrinterName: WideString; 
                                                          JobID: Integer) of object;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TBarTenderApplication
// Help String      :
// Default Interface: IBtApplication
// Def. Intf. DISP? : No
// Event   Interface: IApplicationEvents
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TApplicationProperties= class;
{$ENDIF}
  TBarTenderApplication = class(TOleServer)
  private
    FOnCommandLineCompleted: TApplicationOnCommandLineCompleted;
    FOnNewPrintJob: TApplicationOnNewPrintJob;
    FIntf: IBtApplication;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TApplicationProperties;
    function GetServerProperties: TApplicationProperties;
{$ENDIF}
    function GetDefaultInterface: IBtApplication;
  protected
    procedure InitServerData; override;
    procedure InvokeEvent(DispID: TDispID; var Params: TVariantArray); override;
    function Get_ActiveFormat: Format;
    function Get_BuildNumber: Integer;
    function Get_Formats: Formats;
    function Get_IsPrinting: WordBool;
    function Get_IsProcessingCommandLines: WordBool;
    function Get_Version: WideString;
    procedure Set_Visible(retval: WordBool);
    function Get_Visible: WordBool;
    function Get_Window: Window;
    procedure Set_SAPIDocDefinitionFile(const retval: WideString);
    function Get_SAPIDocDefinitionFile: WideString;
    function Get_LicenseServer: LicenseServer;
    function Get_Edition: WideString;
    procedure Set_VisibleWindows(retval: BtVisibleWindows);
    function Get_VisibleWindows: BtVisibleWindows;
    procedure Set_TopMost(retval: WordBool);
    function Get_TopMost: WordBool;
    procedure Set_ParentWindow(retval: SYSUINT);
    function Get_ParentWindow: SYSUINT;
    function Get_ProcessId: Integer;
    function Get_FullVersion: WideString;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IBtApplication);
    procedure Disconnect; override;
    procedure Quit(SaveChanges: BtSaveOptions);
    procedure Save(DoPrompt: WordBool);
    procedure CommandLine(const CommandLine: WideString);
    function XMLScript(const XMLScript: WideString; SourceType: BtXMLSourceType; 
                       out Messages: Messages): WideString;
    function SpecifyPrintOnlyPassword(const Password: WideString): WordBool;
    procedure AdministerMessageSetup;
    procedure AdministerAlertSetup;
    procedure AdministerLogSetup;
    function Private_SetSharedMemory(const sharedMemoryName: WideString): LongWord;
    procedure Private_QueueCommandLine(const CommandLine: WideString; cmdId: Largeuint);
    property DefaultInterface: IBtApplication read GetDefaultInterface;
    property ActiveFormat: Format read Get_ActiveFormat;
    property BuildNumber: Integer read Get_BuildNumber;
    property Formats: Formats read Get_Formats;
    property IsPrinting: WordBool read Get_IsPrinting;
    property IsProcessingCommandLines: WordBool read Get_IsProcessingCommandLines;
    property Version: WideString read Get_Version;
    property Visible: WordBool read Get_Visible write Set_Visible;
    property Window: Window read Get_Window;
    property LicenseServer: LicenseServer read Get_LicenseServer;
    property Edition: WideString read Get_Edition;
    property ProcessId: Integer read Get_ProcessId;
    property FullVersion: WideString read Get_FullVersion;
    property SAPIDocDefinitionFile: WideString read Get_SAPIDocDefinitionFile write Set_SAPIDocDefinitionFile;
    property VisibleWindows: BtVisibleWindows read Get_VisibleWindows write Set_VisibleWindows;
    property TopMost: WordBool read Get_TopMost write Set_TopMost;
    property ParentWindow: SYSUINT read Get_ParentWindow write Set_ParentWindow;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TApplicationProperties read GetServerProperties;
{$ENDIF}
    property OnCommandLineCompleted: TApplicationOnCommandLineCompleted read FOnCommandLineCompleted write FOnCommandLineCompleted;
    property OnNewPrintJob: TApplicationOnNewPrintJob read FOnNewPrintJob write FOnNewPrintJob;
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TBarTenderApplication
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TApplicationProperties = class(TPersistent)
  private
    FServer:    TBarTenderApplication;
    function    GetDefaultInterface: IBtApplication;
    constructor Create(AServer: TBarTenderApplication);
  protected
    function Get_ActiveFormat: Format;
    function Get_BuildNumber: Integer;
    function Get_Formats: Formats;
    function Get_IsPrinting: WordBool;
    function Get_IsProcessingCommandLines: WordBool;
    function Get_Version: WideString;
    procedure Set_Visible(retval: WordBool);
    function Get_Visible: WordBool;
    function Get_Window: Window;
    procedure Set_SAPIDocDefinitionFile(const retval: WideString);
    function Get_SAPIDocDefinitionFile: WideString;
    function Get_LicenseServer: LicenseServer;
    function Get_Edition: WideString;
    procedure Set_VisibleWindows(retval: BtVisibleWindows);
    function Get_VisibleWindows: BtVisibleWindows;
    procedure Set_TopMost(retval: WordBool);
    function Get_TopMost: WordBool;
    procedure Set_ParentWindow(retval: SYSUINT);
    function Get_ParentWindow: SYSUINT;
    function Get_ProcessId: Integer;
    function Get_FullVersion: WideString;
  public
    property DefaultInterface: IBtApplication read GetDefaultInterface;
  published
    property SAPIDocDefinitionFile: WideString read Get_SAPIDocDefinitionFile write Set_SAPIDocDefinitionFile;
    property VisibleWindows: BtVisibleWindows read Get_VisibleWindows write Set_VisibleWindows;
    property TopMost: WordBool read Get_TopMost write Set_TopMost;
    property ParentWindow: SYSUINT read Get_ParentWindow write Set_ParentWindow;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoScreenDataSubString provides a Create and CreateRemote method to          
// create instances of the default interface IScreenDs exposed by              
// the CoClass ScreenDataSubString. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoScreenDataSubString = class
    class function Create: IScreenDs;
    class function CreateRemote(const MachineName: string): IScreenDs;
  end;

// *********************************************************************//
// The Class CoTemplateFieldSubString provides a Create and CreateRemote method to          
// create instances of the default interface ITemplateFieldDs exposed by              
// the CoClass TemplateFieldSubString. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoTemplateFieldSubString = class
    class function Create: ITemplateFieldDs;
    class function CreateRemote(const MachineName: string): ITemplateFieldDs;
  end;

// *********************************************************************//
// The Class CoLabelObjectSubString provides a Create and CreateRemote method to          
// create instances of the default interface ILabelObjectDs exposed by              
// the CoClass LabelObjectSubString. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoLabelObjectSubString = class
    class function Create: ILabelObjectDs;
    class function CreateRemote(const MachineName: string): ILabelObjectDs;
  end;

procedure Register;

resourcestring
  dtlServerPage = 'ActiveX';

  dtlOcxPage = 'ActiveX';

implementation

uses ComObj;

class function CoVerification.Create: IBtVerification;
begin
  Result := CreateComObject(CLASS_Verification) as IBtVerification;
end;

class function CoVerification.CreateRemote(const MachineName: string): IBtVerification;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Verification) as IBtVerification;
end;

procedure TVerification.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{53B3DAFD-40C6-4BD9-8BA8-213D47BF1B08}';
    IntfIID:   '{99360435-04BF-4470-87D1-558692C111F8}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TVerification.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IBtVerification;
  end;
end;

procedure TVerification.ConnectTo(svrIntf: IBtVerification);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TVerification.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TVerification.GetDefaultInterface: IBtVerification;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TVerification.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TVerificationProperties.Create(Self);
{$ENDIF}
end;

destructor TVerification.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TVerification.GetServerProperties: TVerificationProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TVerification.Get_Object_: WideString;
begin
    Result := DefaultInterface.Object_;
end;

function TVerification.Get_Fields: WideString;
begin
    Result := DefaultInterface.Fields;
end;

function TVerification.Get_Problem: WideString;
begin
    Result := DefaultInterface.Problem;
end;

function TVerification.Get_Result: WideString;
begin
    Result := DefaultInterface.Result;
end;

function TVerification.Get_AutoFix: WideString;
begin
    Result := DefaultInterface.AutoFix;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TVerificationProperties.Create(AServer: TVerification);
begin
  inherited Create;
  FServer := AServer;
end;

function TVerificationProperties.GetDefaultInterface: IBtVerification;
begin
  Result := FServer.DefaultInterface;
end;

function TVerificationProperties.Get_Object_: WideString;
begin
    Result := DefaultInterface.Object_;
end;

function TVerificationProperties.Get_Fields: WideString;
begin
    Result := DefaultInterface.Fields;
end;

function TVerificationProperties.Get_Problem: WideString;
begin
    Result := DefaultInterface.Problem;
end;

function TVerificationProperties.Get_Result: WideString;
begin
    Result := DefaultInterface.Result;
end;

function TVerificationProperties.Get_AutoFix: WideString;
begin
    Result := DefaultInterface.AutoFix;
end;

{$ENDIF}

class function CoMessage.Create: IBtMessage;
begin
  Result := CreateComObject(CLASS_Message) as IBtMessage;
end;

class function CoMessage.CreateRemote(const MachineName: string): IBtMessage;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Message) as IBtMessage;
end;

procedure TMessage.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{B92A100D-DB6B-4631-9E85-E060A349F0CB}';
    IntfIID:   '{2BF8000D-CC13-4810-9B86-4AC64555DE20}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TMessage.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IBtMessage;
  end;
end;

procedure TMessage.ConnectTo(svrIntf: IBtMessage);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TMessage.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TMessage.GetDefaultInterface: IBtMessage;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TMessage.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TMessageProperties.Create(Self);
{$ENDIF}
end;

destructor TMessage.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TMessage.GetServerProperties: TMessageProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TMessage.Get_Number: Integer;
begin
    Result := DefaultInterface.Number;
end;

function TMessage.Get_type_: BtMsgType;
begin
    Result := DefaultInterface.type_;
end;

function TMessage.Get_Severity: BtMsgSeverity;
begin
    Result := DefaultInterface.Severity;
end;

function TMessage.Get_Message: WideString;
begin
    Result := DefaultInterface.Message;
end;

function TMessage.Get_Verification: Verification;
begin
    Result := DefaultInterface.Verification;
end;

function TMessage.Get_TypeText: WideString;
begin
    Result := DefaultInterface.TypeText;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TMessageProperties.Create(AServer: TMessage);
begin
  inherited Create;
  FServer := AServer;
end;

function TMessageProperties.GetDefaultInterface: IBtMessage;
begin
  Result := FServer.DefaultInterface;
end;

function TMessageProperties.Get_Number: Integer;
begin
    Result := DefaultInterface.Number;
end;

function TMessageProperties.Get_type_: BtMsgType;
begin
    Result := DefaultInterface.type_;
end;

function TMessageProperties.Get_Severity: BtMsgSeverity;
begin
    Result := DefaultInterface.Severity;
end;

function TMessageProperties.Get_Message: WideString;
begin
    Result := DefaultInterface.Message;
end;

function TMessageProperties.Get_Verification: Verification;
begin
    Result := DefaultInterface.Verification;
end;

function TMessageProperties.Get_TypeText: WideString;
begin
    Result := DefaultInterface.TypeText;
end;

{$ENDIF}

class function CoMessages.Create: IBtMessages;
begin
  Result := CreateComObject(CLASS_Messages) as IBtMessages;
end;

class function CoMessages.CreateRemote(const MachineName: string): IBtMessages;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Messages) as IBtMessages;
end;

procedure TMessages.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{2B52174E-AAA4-443D-945F-568F60610F55}';
    IntfIID:   '{365EE8DD-7FBD-44CC-8BCA-FF81E54FDF9B}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TMessages.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IBtMessages;
  end;
end;

procedure TMessages.ConnectTo(svrIntf: IBtMessages);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TMessages.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TMessages.GetDefaultInterface: IBtMessages;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TMessages.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TMessagesProperties.Create(Self);
{$ENDIF}
end;

destructor TMessages.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TMessages.GetServerProperties: TMessagesProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TMessages.Get_Count: Integer;
begin
    Result := DefaultInterface.Count;
end;

function TMessages.Item(var Index: OleVariant): Message;
begin
  Result := DefaultInterface.Item(Index);
end;

function TMessages.GetMessage(Index: OleVariant): Message;
begin
  Result := DefaultInterface.GetMessage(Index);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TMessagesProperties.Create(AServer: TMessages);
begin
  inherited Create;
  FServer := AServer;
end;

function TMessagesProperties.GetDefaultInterface: IBtMessages;
begin
  Result := FServer.DefaultInterface;
end;

function TMessagesProperties.Get_Count: Integer;
begin
    Result := DefaultInterface.Count;
end;

{$ENDIF}

class function CoTextFile.Create: IBtTextFile;
begin
  Result := CreateComObject(CLASS_TextFile) as IBtTextFile;
end;

class function CoTextFile.CreateRemote(const MachineName: string): IBtTextFile;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_TextFile) as IBtTextFile;
end;

procedure TTextFile.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{66E43565-4379-11D2-B7D3-00104B639F6F}';
    IntfIID:   '{66E43564-4379-11D2-B7D3-00104B639F6F}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TTextFile.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IBtTextFile;
  end;
end;

procedure TTextFile.ConnectTo(svrIntf: IBtTextFile);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TTextFile.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TTextFile.GetDefaultInterface: IBtTextFile;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TTextFile.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TTextFileProperties.Create(Self);
{$ENDIF}
end;

destructor TTextFile.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TTextFile.GetServerProperties: TTextFileProperties;
begin
  Result := FProps;
end;
{$ENDIF}

procedure TTextFile.Set_FileName(const retval: WideString);
  { Warning: The property FileName has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.FileName := retval;
end;

function TTextFile.Get_FileName: WideString;
begin
    Result := DefaultInterface.FileName;
end;

procedure TTextFile.Set_Delimitation(retval: BtTextFileDelimitation);
begin
  DefaultInterface.Set_Delimitation(retval);
end;

function TTextFile.Get_Delimitation: BtTextFileDelimitation;
begin
    Result := DefaultInterface.Delimitation;
end;

procedure TTextFile.Set_FieldDelimiter(const retval: WideString);
  { Warning: The property FieldDelimiter has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.FieldDelimiter := retval;
end;

function TTextFile.Get_FieldDelimiter: WideString;
begin
    Result := DefaultInterface.FieldDelimiter;
end;

procedure TTextFile.Set_NumberOfFields(retval: SYSINT);
begin
  DefaultInterface.Set_NumberOfFields(retval);
end;

function TTextFile.Get_NumberOfFields: SYSINT;
begin
    Result := DefaultInterface.NumberOfFields;
end;

procedure TTextFile.Set_UseFieldNamesFromFirstRecord(retval: WordBool);
begin
  DefaultInterface.Set_UseFieldNamesFromFirstRecord(retval);
end;

function TTextFile.Get_UseFieldNamesFromFirstRecord: WordBool;
begin
    Result := DefaultInterface.UseFieldNamesFromFirstRecord;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TTextFileProperties.Create(AServer: TTextFile);
begin
  inherited Create;
  FServer := AServer;
end;

function TTextFileProperties.GetDefaultInterface: IBtTextFile;
begin
  Result := FServer.DefaultInterface;
end;

procedure TTextFileProperties.Set_FileName(const retval: WideString);
  { Warning: The property FileName has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.FileName := retval;
end;

function TTextFileProperties.Get_FileName: WideString;
begin
    Result := DefaultInterface.FileName;
end;

procedure TTextFileProperties.Set_Delimitation(retval: BtTextFileDelimitation);
begin
  DefaultInterface.Set_Delimitation(retval);
end;

function TTextFileProperties.Get_Delimitation: BtTextFileDelimitation;
begin
    Result := DefaultInterface.Delimitation;
end;

procedure TTextFileProperties.Set_FieldDelimiter(const retval: WideString);
  { Warning: The property FieldDelimiter has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.FieldDelimiter := retval;
end;

function TTextFileProperties.Get_FieldDelimiter: WideString;
begin
    Result := DefaultInterface.FieldDelimiter;
end;

procedure TTextFileProperties.Set_NumberOfFields(retval: SYSINT);
begin
  DefaultInterface.Set_NumberOfFields(retval);
end;

function TTextFileProperties.Get_NumberOfFields: SYSINT;
begin
    Result := DefaultInterface.NumberOfFields;
end;

procedure TTextFileProperties.Set_UseFieldNamesFromFirstRecord(retval: WordBool);
begin
  DefaultInterface.Set_UseFieldNamesFromFirstRecord(retval);
end;

function TTextFileProperties.Get_UseFieldNamesFromFirstRecord: WordBool;
begin
    Result := DefaultInterface.UseFieldNamesFromFirstRecord;
end;

{$ENDIF}

class function CoODBC.Create: IBtODBC;
begin
  Result := CreateComObject(CLASS_ODBC) as IBtODBC;
end;

class function CoODBC.CreateRemote(const MachineName: string): IBtODBC;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ODBC) as IBtODBC;
end;

procedure TODBC.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{66E43567-4379-11D2-B7D3-00104B639F6F}';
    IntfIID:   '{66E43566-4379-11D2-B7D3-00104B639F6F}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TODBC.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IBtODBC;
  end;
end;

procedure TODBC.ConnectTo(svrIntf: IBtODBC);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TODBC.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TODBC.GetDefaultInterface: IBtODBC;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TODBC.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TODBCProperties.Create(Self);
{$ENDIF}
end;

destructor TODBC.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TODBC.GetServerProperties: TODBCProperties;
begin
  Result := FProps;
end;
{$ENDIF}

procedure TODBC.Set_Where(const retval: WideString);
  { Warning: The property Where has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Where := retval;
end;

function TODBC.Get_Where: WideString;
begin
    Result := DefaultInterface.Where;
end;

procedure TODBC.Set_Password(const retval: WideString);
  { Warning: The property Password has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Password := retval;
end;

function TODBC.Get_Password: WideString;
begin
    Result := DefaultInterface.Password;
end;

procedure TODBC.Set_UserId(const retval: WideString);
  { Warning: The property UserId has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.UserId := retval;
end;

function TODBC.Get_UserId: WideString;
begin
    Result := DefaultInterface.UserId;
end;

procedure TODBC.Set_SQLStatement(const retval: WideString);
  { Warning: The property SQLStatement has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.SQLStatement := retval;
end;

function TODBC.Get_SQLStatement: WideString;
begin
    Result := DefaultInterface.SQLStatement;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TODBCProperties.Create(AServer: TODBC);
begin
  inherited Create;
  FServer := AServer;
end;

function TODBCProperties.GetDefaultInterface: IBtODBC;
begin
  Result := FServer.DefaultInterface;
end;

procedure TODBCProperties.Set_Where(const retval: WideString);
  { Warning: The property Where has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Where := retval;
end;

function TODBCProperties.Get_Where: WideString;
begin
    Result := DefaultInterface.Where;
end;

procedure TODBCProperties.Set_Password(const retval: WideString);
  { Warning: The property Password has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Password := retval;
end;

function TODBCProperties.Get_Password: WideString;
begin
    Result := DefaultInterface.Password;
end;

procedure TODBCProperties.Set_UserId(const retval: WideString);
  { Warning: The property UserId has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.UserId := retval;
end;

function TODBCProperties.Get_UserId: WideString;
begin
    Result := DefaultInterface.UserId;
end;

procedure TODBCProperties.Set_SQLStatement(const retval: WideString);
  { Warning: The property SQLStatement has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.SQLStatement := retval;
end;

function TODBCProperties.Get_SQLStatement: WideString;
begin
    Result := DefaultInterface.SQLStatement;
end;

{$ENDIF}

class function CoOLEDB.Create: IBtOLEDB;
begin
  Result := CreateComObject(CLASS_OLEDB) as IBtOLEDB;
end;

class function CoOLEDB.CreateRemote(const MachineName: string): IBtOLEDB;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_OLEDB) as IBtOLEDB;
end;

procedure TOLEDB.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{96B21C3E-8292-4D6B-B1D1-C1243B31B40A}';
    IntfIID:   '{17E5C0F9-FDBE-4658-B0A0-A76BD4154A81}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TOLEDB.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IBtOLEDB;
  end;
end;

procedure TOLEDB.ConnectTo(svrIntf: IBtOLEDB);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TOLEDB.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TOLEDB.GetDefaultInterface: IBtOLEDB;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TOLEDB.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TOLEDBProperties.Create(Self);
{$ENDIF}
end;

destructor TOLEDB.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TOLEDB.GetServerProperties: TOLEDBProperties;
begin
  Result := FProps;
end;
{$ENDIF}

procedure TOLEDB.Set_Password(const retval: WideString);
  { Warning: The property Password has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Password := retval;
end;

function TOLEDB.Get_Password: WideString;
begin
    Result := DefaultInterface.Password;
end;

procedure TOLEDB.Set_UserId(const retval: WideString);
  { Warning: The property UserId has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.UserId := retval;
end;

function TOLEDB.Get_UserId: WideString;
begin
    Result := DefaultInterface.UserId;
end;

procedure TOLEDB.Set_SQLStatement(const retval: WideString);
  { Warning: The property SQLStatement has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.SQLStatement := retval;
end;

function TOLEDB.Get_SQLStatement: WideString;
begin
    Result := DefaultInterface.SQLStatement;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TOLEDBProperties.Create(AServer: TOLEDB);
begin
  inherited Create;
  FServer := AServer;
end;

function TOLEDBProperties.GetDefaultInterface: IBtOLEDB;
begin
  Result := FServer.DefaultInterface;
end;

procedure TOLEDBProperties.Set_Password(const retval: WideString);
  { Warning: The property Password has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Password := retval;
end;

function TOLEDBProperties.Get_Password: WideString;
begin
    Result := DefaultInterface.Password;
end;

procedure TOLEDBProperties.Set_UserId(const retval: WideString);
  { Warning: The property UserId has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.UserId := retval;
end;

function TOLEDBProperties.Get_UserId: WideString;
begin
    Result := DefaultInterface.UserId;
end;

procedure TOLEDBProperties.Set_SQLStatement(const retval: WideString);
  { Warning: The property SQLStatement has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.SQLStatement := retval;
end;

function TOLEDBProperties.Get_SQLStatement: WideString;
begin
    Result := DefaultInterface.SQLStatement;
end;

{$ENDIF}

class function CoInputDataFileSetup.Create: IBtInputDataFileSetup;
begin
  Result := CreateComObject(CLASS_InputDataFileSetup) as IBtInputDataFileSetup;
end;

class function CoInputDataFileSetup.CreateRemote(const MachineName: string): IBtInputDataFileSetup;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_InputDataFileSetup) as IBtInputDataFileSetup;
end;

procedure TInputDataFileSetup.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{66E43563-4379-11D2-B7D3-00104B639F6F}';
    IntfIID:   '{66E43562-4379-11D2-B7D3-00104B639F6F}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TInputDataFileSetup.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IBtInputDataFileSetup;
  end;
end;

procedure TInputDataFileSetup.ConnectTo(svrIntf: IBtInputDataFileSetup);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TInputDataFileSetup.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TInputDataFileSetup.GetDefaultInterface: IBtInputDataFileSetup;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TInputDataFileSetup.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TInputDataFileSetupProperties.Create(Self);
{$ENDIF}
end;

destructor TInputDataFileSetup.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TInputDataFileSetup.GetServerProperties: TInputDataFileSetupProperties;
begin
  Result := FProps;
end;
{$ENDIF}

procedure TInputDataFileSetup.Set_AutoViewSelectedRecordsBeforePrint(retval: WordBool);
begin
  DefaultInterface.Set_AutoViewSelectedRecordsBeforePrint(retval);
end;

function TInputDataFileSetup.Get_AutoViewSelectedRecordsBeforePrint: WordBool;
begin
    Result := DefaultInterface.AutoViewSelectedRecordsBeforePrint;
end;

function TInputDataFileSetup.Get_TextFile: TextFile;
begin
    Result := DefaultInterface.TextFile;
end;

procedure TInputDataFileSetup.Set_type_(retval: BtInputDataFile);
begin
  DefaultInterface.Set_type_(retval);
end;

function TInputDataFileSetup.Get_type_: BtInputDataFile;
begin
    Result := DefaultInterface.type_;
end;

function TInputDataFileSetup.Get_ODBC: ODBC;
begin
    Result := DefaultInterface.ODBC;
end;

function TInputDataFileSetup.Get_OLEDB: OLEDB;
begin
    Result := DefaultInterface.OLEDB;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TInputDataFileSetupProperties.Create(AServer: TInputDataFileSetup);
begin
  inherited Create;
  FServer := AServer;
end;

function TInputDataFileSetupProperties.GetDefaultInterface: IBtInputDataFileSetup;
begin
  Result := FServer.DefaultInterface;
end;

procedure TInputDataFileSetupProperties.Set_AutoViewSelectedRecordsBeforePrint(retval: WordBool);
begin
  DefaultInterface.Set_AutoViewSelectedRecordsBeforePrint(retval);
end;

function TInputDataFileSetupProperties.Get_AutoViewSelectedRecordsBeforePrint: WordBool;
begin
    Result := DefaultInterface.AutoViewSelectedRecordsBeforePrint;
end;

function TInputDataFileSetupProperties.Get_TextFile: TextFile;
begin
    Result := DefaultInterface.TextFile;
end;

procedure TInputDataFileSetupProperties.Set_type_(retval: BtInputDataFile);
begin
  DefaultInterface.Set_type_(retval);
end;

function TInputDataFileSetupProperties.Get_type_: BtInputDataFile;
begin
    Result := DefaultInterface.type_;
end;

function TInputDataFileSetupProperties.Get_ODBC: ODBC;
begin
    Result := DefaultInterface.ODBC;
end;

function TInputDataFileSetupProperties.Get_OLEDB: OLEDB;
begin
    Result := DefaultInterface.OLEDB;
end;

{$ENDIF}

class function CoSubString.Create: IBtSubString;
begin
  Result := CreateComObject(CLASS_SubString) as IBtSubString;
end;

class function CoSubString.CreateRemote(const MachineName: string): IBtSubString;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SubString) as IBtSubString;
end;

procedure TSubString.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{6B6C8EEA-6CEA-11D3-A885-005004A506ED}';
    IntfIID:   '{6B6C8EE4-6CEA-11D3-A885-005004A506ED}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TSubString.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IBtSubString;
  end;
end;

procedure TSubString.ConnectTo(svrIntf: IBtSubString);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TSubString.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TSubString.GetDefaultInterface: IBtSubString;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TSubString.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TSubStringProperties.Create(Self);
{$ENDIF}
end;

destructor TSubString.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TSubString.GetServerProperties: TSubStringProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TSubString.Get_Name: WideString;
begin
    Result := DefaultInterface.Name;
end;

function TSubString.Get_Value: WideString;
begin
    Result := DefaultInterface.Value;
end;

procedure TSubString.Set_Value(const retval: WideString);
  { Warning: The property Value has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Value := retval;
end;

function TSubString.Get_type_: BtSubStringType;
begin
    Result := DefaultInterface.type_;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TSubStringProperties.Create(AServer: TSubString);
begin
  inherited Create;
  FServer := AServer;
end;

function TSubStringProperties.GetDefaultInterface: IBtSubString;
begin
  Result := FServer.DefaultInterface;
end;

function TSubStringProperties.Get_Name: WideString;
begin
    Result := DefaultInterface.Name;
end;

function TSubStringProperties.Get_Value: WideString;
begin
    Result := DefaultInterface.Value;
end;

procedure TSubStringProperties.Set_Value(const retval: WideString);
  { Warning: The property Value has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Value := retval;
end;

function TSubStringProperties.Get_type_: BtSubStringType;
begin
    Result := DefaultInterface.type_;
end;

{$ENDIF}

class function CoNamedSubStrings.Create: IBtNamedSubStrings;
begin
  Result := CreateComObject(CLASS_NamedSubStrings) as IBtNamedSubStrings;
end;

class function CoNamedSubStrings.CreateRemote(const MachineName: string): IBtNamedSubStrings;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NamedSubStrings) as IBtNamedSubStrings;
end;

procedure TNamedSubStrings.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{994E4DE6-6CE6-11D3-A885-005004A506ED}';
    IntfIID:   '{66E43568-4379-11D2-B7D3-00104B639F6F}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TNamedSubStrings.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IBtNamedSubStrings;
  end;
end;

procedure TNamedSubStrings.ConnectTo(svrIntf: IBtNamedSubStrings);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TNamedSubStrings.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TNamedSubStrings.GetDefaultInterface: IBtNamedSubStrings;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TNamedSubStrings.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TNamedSubStringsProperties.Create(Self);
{$ENDIF}
end;

destructor TNamedSubStrings.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TNamedSubStrings.GetServerProperties: TNamedSubStringsProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TNamedSubStrings.Get_Count: Integer;
begin
    Result := DefaultInterface.Count;
end;

function TNamedSubStrings.Item(var Index: OleVariant): SubString;
begin
  Result := DefaultInterface.Item(Index);
end;

function TNamedSubStrings.GetAll(const nameValueDelimiter: WideString; 
                                 const recordDelimter: WideString): WideString;
begin
  Result := DefaultInterface.GetAll(nameValueDelimiter, recordDelimter);
end;

procedure TNamedSubStrings.SetAll(const setStr: WideString; const delimter: WideString);
begin
  DefaultInterface.SetAll(setStr, delimter);
end;

function TNamedSubStrings.GetSubString(Index: OleVariant): SubString;
begin
  Result := DefaultInterface.GetSubString(Index);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TNamedSubStringsProperties.Create(AServer: TNamedSubStrings);
begin
  inherited Create;
  FServer := AServer;
end;

function TNamedSubStringsProperties.GetDefaultInterface: IBtNamedSubStrings;
begin
  Result := FServer.DefaultInterface;
end;

function TNamedSubStringsProperties.Get_Count: Integer;
begin
    Result := DefaultInterface.Count;
end;

{$ENDIF}

class function CoQueryPrompt.Create: IBtQueryPrompt;
begin
  Result := CreateComObject(CLASS_QueryPrompt) as IBtQueryPrompt;
end;

class function CoQueryPrompt.CreateRemote(const MachineName: string): IBtQueryPrompt;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_QueryPrompt) as IBtQueryPrompt;
end;

procedure TQueryPrompt.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{46ECE469-6C20-11D3-9CA5-00104B9C1746}';
    IntfIID:   '{46ECE468-6C20-11D3-9CA5-00104B9C1746}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TQueryPrompt.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IBtQueryPrompt;
  end;
end;

procedure TQueryPrompt.ConnectTo(svrIntf: IBtQueryPrompt);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TQueryPrompt.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TQueryPrompt.GetDefaultInterface: IBtQueryPrompt;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TQueryPrompt.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TQueryPromptProperties.Create(Self);
{$ENDIF}
end;

destructor TQueryPrompt.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TQueryPrompt.GetServerProperties: TQueryPromptProperties;
begin
  Result := FProps;
end;
{$ENDIF}

procedure TQueryPrompt.Set_DefaultReply(const retval: WideString);
  { Warning: The property DefaultReply has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DefaultReply := retval;
end;

function TQueryPrompt.Get_DefaultReply: WideString;
begin
    Result := DefaultInterface.DefaultReply;
end;

function TQueryPrompt.Get_Name: WideString;
begin
    Result := DefaultInterface.Name;
end;

procedure TQueryPrompt.Set_UserPrompt(const retval: WideString);
  { Warning: The property UserPrompt has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.UserPrompt := retval;
end;

function TQueryPrompt.Get_UserPrompt: WideString;
begin
    Result := DefaultInterface.UserPrompt;
end;

procedure TQueryPrompt.Set_Value(const retval: WideString);
  { Warning: The property Value has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Value := retval;
end;

function TQueryPrompt.Get_Value: WideString;
begin
    Result := DefaultInterface.Value;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TQueryPromptProperties.Create(AServer: TQueryPrompt);
begin
  inherited Create;
  FServer := AServer;
end;

function TQueryPromptProperties.GetDefaultInterface: IBtQueryPrompt;
begin
  Result := FServer.DefaultInterface;
end;

procedure TQueryPromptProperties.Set_DefaultReply(const retval: WideString);
  { Warning: The property DefaultReply has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DefaultReply := retval;
end;

function TQueryPromptProperties.Get_DefaultReply: WideString;
begin
    Result := DefaultInterface.DefaultReply;
end;

function TQueryPromptProperties.Get_Name: WideString;
begin
    Result := DefaultInterface.Name;
end;

procedure TQueryPromptProperties.Set_UserPrompt(const retval: WideString);
  { Warning: The property UserPrompt has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.UserPrompt := retval;
end;

function TQueryPromptProperties.Get_UserPrompt: WideString;
begin
    Result := DefaultInterface.UserPrompt;
end;

procedure TQueryPromptProperties.Set_Value(const retval: WideString);
  { Warning: The property Value has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Value := retval;
end;

function TQueryPromptProperties.Get_Value: WideString;
begin
    Result := DefaultInterface.Value;
end;

{$ENDIF}

class function CoQueryPrompts.Create: IBtQueryPrompts;
begin
  Result := CreateComObject(CLASS_QueryPrompts) as IBtQueryPrompts;
end;

class function CoQueryPrompts.CreateRemote(const MachineName: string): IBtQueryPrompts;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_QueryPrompts) as IBtQueryPrompts;
end;

procedure TQueryPrompts.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{46ECE46C-6C20-11D3-9CA5-00104B9C1746}';
    IntfIID:   '{46ECE46B-6C20-11D3-9CA5-00104B9C1746}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TQueryPrompts.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IBtQueryPrompts;
  end;
end;

procedure TQueryPrompts.ConnectTo(svrIntf: IBtQueryPrompts);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TQueryPrompts.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TQueryPrompts.GetDefaultInterface: IBtQueryPrompts;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TQueryPrompts.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TQueryPromptsProperties.Create(Self);
{$ENDIF}
end;

destructor TQueryPrompts.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TQueryPrompts.GetServerProperties: TQueryPromptsProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TQueryPrompts.Get_Count: Integer;
begin
    Result := DefaultInterface.Count;
end;

function TQueryPrompts.Item(var Index: OleVariant): QueryPrompt;
begin
  Result := DefaultInterface.Item(Index);
end;

function TQueryPrompts.GetQueryPrompt(Index: OleVariant): QueryPrompt;
begin
  Result := DefaultInterface.GetQueryPrompt(Index);
end;

function TQueryPrompts.ExportToXML: WideString;
begin
  Result := DefaultInterface.ExportToXML;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TQueryPromptsProperties.Create(AServer: TQueryPrompts);
begin
  inherited Create;
  FServer := AServer;
end;

function TQueryPromptsProperties.GetDefaultInterface: IBtQueryPrompts;
begin
  Result := FServer.DefaultInterface;
end;

function TQueryPromptsProperties.Get_Count: Integer;
begin
    Result := DefaultInterface.Count;
end;

{$ENDIF}

class function CoSAPIDoc.Create: IBtSAPIDoc;
begin
  Result := CreateComObject(CLASS_SAPIDoc) as IBtSAPIDoc;
end;

class function CoSAPIDoc.CreateRemote(const MachineName: string): IBtSAPIDoc;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SAPIDoc) as IBtSAPIDoc;
end;

procedure TSAPIDoc.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{EF739128-7EEF-4A81-A605-9AEB394447E5}';
    IntfIID:   '{C79DBC2D-F4D6-4D55-9BE3-3E1A662F770B}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TSAPIDoc.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IBtSAPIDoc;
  end;
end;

procedure TSAPIDoc.ConnectTo(svrIntf: IBtSAPIDoc);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TSAPIDoc.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TSAPIDoc.GetDefaultInterface: IBtSAPIDoc;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TSAPIDoc.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TSAPIDocProperties.Create(Self);
{$ENDIF}
end;

destructor TSAPIDoc.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TSAPIDoc.GetServerProperties: TSAPIDocProperties;
begin
  Result := FProps;
end;
{$ENDIF}

procedure TSAPIDoc.Set_IDocFileName(const retval: WideString);
  { Warning: The property IDocFileName has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.IDocFileName := retval;
end;

function TSAPIDoc.Get_IDocFileName: WideString;
begin
    Result := DefaultInterface.IDocFileName;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TSAPIDocProperties.Create(AServer: TSAPIDoc);
begin
  inherited Create;
  FServer := AServer;
end;

function TSAPIDocProperties.GetDefaultInterface: IBtSAPIDoc;
begin
  Result := FServer.DefaultInterface;
end;

procedure TSAPIDocProperties.Set_IDocFileName(const retval: WideString);
  { Warning: The property IDocFileName has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.IDocFileName := retval;
end;

function TSAPIDocProperties.Get_IDocFileName: WideString;
begin
    Result := DefaultInterface.IDocFileName;
end;

{$ENDIF}

class function CoDatabase.Create: IBtDatabase;
begin
  Result := CreateComObject(CLASS_Database) as IBtDatabase;
end;

class function CoDatabase.CreateRemote(const MachineName: string): IBtDatabase;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Database) as IBtDatabase;
end;

procedure TDatabase.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{46ECE463-6C20-11D3-9CA5-00104B9C1746}';
    IntfIID:   '{46ECE462-6C20-11D3-9CA5-00104B9C1746}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TDatabase.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IBtDatabase;
  end;
end;

procedure TDatabase.ConnectTo(svrIntf: IBtDatabase);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TDatabase.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TDatabase.GetDefaultInterface: IBtDatabase;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TDatabase.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TDatabaseProperties.Create(Self);
{$ENDIF}
end;

destructor TDatabase.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TDatabase.GetServerProperties: TDatabaseProperties;
begin
  Result := FProps;
end;
{$ENDIF}

procedure TDatabase.Set_Name(const retval: WideString);
  { Warning: The property Name has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Name := retval;
end;

function TDatabase.Get_Name: WideString;
begin
    Result := DefaultInterface.Name;
end;

function TDatabase.Get_ODBC: ODBC;
begin
    Result := DefaultInterface.ODBC;
end;

function TDatabase.Get_TextFile: TextFile;
begin
    Result := DefaultInterface.TextFile;
end;

function TDatabase.Get_type_: BtInputDataFile;
begin
    Result := DefaultInterface.type_;
end;

function TDatabase.Get_SAPIDoc: SAPIDoc;
begin
    Result := DefaultInterface.SAPIDoc;
end;

function TDatabase.Get_OLEDB: OLEDB;
begin
    Result := DefaultInterface.OLEDB;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TDatabaseProperties.Create(AServer: TDatabase);
begin
  inherited Create;
  FServer := AServer;
end;

function TDatabaseProperties.GetDefaultInterface: IBtDatabase;
begin
  Result := FServer.DefaultInterface;
end;

procedure TDatabaseProperties.Set_Name(const retval: WideString);
  { Warning: The property Name has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Name := retval;
end;

function TDatabaseProperties.Get_Name: WideString;
begin
    Result := DefaultInterface.Name;
end;

function TDatabaseProperties.Get_ODBC: ODBC;
begin
    Result := DefaultInterface.ODBC;
end;

function TDatabaseProperties.Get_TextFile: TextFile;
begin
    Result := DefaultInterface.TextFile;
end;

function TDatabaseProperties.Get_type_: BtInputDataFile;
begin
    Result := DefaultInterface.type_;
end;

function TDatabaseProperties.Get_SAPIDoc: SAPIDoc;
begin
    Result := DefaultInterface.SAPIDoc;
end;

function TDatabaseProperties.Get_OLEDB: OLEDB;
begin
    Result := DefaultInterface.OLEDB;
end;

{$ENDIF}

class function CoDatabases.Create: IBtDatabases;
begin
  Result := CreateComObject(CLASS_Databases) as IBtDatabases;
end;

class function CoDatabases.CreateRemote(const MachineName: string): IBtDatabases;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Databases) as IBtDatabases;
end;

procedure TDatabases.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{46ECE466-6C20-11D3-9CA5-00104B9C1746}';
    IntfIID:   '{46ECE465-6C20-11D3-9CA5-00104B9C1746}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TDatabases.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IBtDatabases;
  end;
end;

procedure TDatabases.ConnectTo(svrIntf: IBtDatabases);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TDatabases.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TDatabases.GetDefaultInterface: IBtDatabases;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TDatabases.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TDatabasesProperties.Create(Self);
{$ENDIF}
end;

destructor TDatabases.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TDatabases.GetServerProperties: TDatabasesProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TDatabases.Get_Count: SYSINT;
begin
    Result := DefaultInterface.Count;
end;

function TDatabases.Get_QueryPrompts: QueryPrompts;
begin
    Result := DefaultInterface.QueryPrompts;
end;

function TDatabases.Item(var Index: OleVariant): Database;
begin
  Result := DefaultInterface.Item(Index);
end;

function TDatabases.GetDatabase(Index: OleVariant): Database;
begin
  Result := DefaultInterface.GetDatabase(Index);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TDatabasesProperties.Create(AServer: TDatabases);
begin
  inherited Create;
  FServer := AServer;
end;

function TDatabasesProperties.GetDefaultInterface: IBtDatabases;
begin
  Result := FServer.DefaultInterface;
end;

function TDatabasesProperties.Get_Count: SYSINT;
begin
    Result := DefaultInterface.Count;
end;

function TDatabasesProperties.Get_QueryPrompts: QueryPrompts;
begin
    Result := DefaultInterface.QueryPrompts;
end;

{$ENDIF}

class function CoMediaHandling.Create: IBtMediaHandling;
begin
  Result := CreateComObject(CLASS_MediaHandling) as IBtMediaHandling;
end;

class function CoMediaHandling.CreateRemote(const MachineName: string): IBtMediaHandling;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MediaHandling) as IBtMediaHandling;
end;

procedure TMediaHandling.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{60FDF864-690D-4A9C-AA1F-2E425D443A20}';
    IntfIID:   '{D21AED41-7F63-4572-9976-EC506FCEBC19}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TMediaHandling.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IBtMediaHandling;
  end;
end;

procedure TMediaHandling.ConnectTo(svrIntf: IBtMediaHandling);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TMediaHandling.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TMediaHandling.GetDefaultInterface: IBtMediaHandling;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TMediaHandling.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TMediaHandlingProperties.Create(Self);
{$ENDIF}
end;

destructor TMediaHandling.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TMediaHandling.GetServerProperties: TMediaHandlingProperties;
begin
  Result := FProps;
end;
{$ENDIF}

procedure TMediaHandling.Set_Action(retval: BtMediaHandlingAction);
begin
  DefaultInterface.Set_Action(retval);
end;

function TMediaHandling.Get_Action: BtMediaHandlingAction;
begin
    Result := DefaultInterface.Action;
end;

procedure TMediaHandling.Set_Occurrence(retval: BtMediaHandlingOccurrence);
begin
  DefaultInterface.Set_Occurrence(retval);
end;

function TMediaHandling.Get_Occurrence: BtMediaHandlingOccurrence;
begin
    Result := DefaultInterface.Occurrence;
end;

procedure TMediaHandling.Set_DataItemType(retval: BtMediaHandlingDataItemType);
begin
  DefaultInterface.Set_DataItemType(retval);
end;

function TMediaHandling.Get_DataItemType: BtMediaHandlingDataItemType;
begin
    Result := DefaultInterface.DataItemType;
end;

procedure TMediaHandling.Set_DataItemName(const retval: WideString);
  { Warning: The property DataItemName has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DataItemName := retval;
end;

function TMediaHandling.Get_DataItemName: WideString;
begin
    Result := DefaultInterface.DataItemName;
end;

procedure TMediaHandling.Set_NumberOfLabels(retval: Integer);
begin
  DefaultInterface.Set_NumberOfLabels(retval);
end;

function TMediaHandling.Get_NumberOfLabels: Integer;
begin
    Result := DefaultInterface.NumberOfLabels;
end;

procedure TMediaHandling.Set_IgnoreCase(retval: WordBool);
begin
  DefaultInterface.Set_IgnoreCase(retval);
end;

function TMediaHandling.Get_IgnoreCase: WordBool;
begin
    Result := DefaultInterface.IgnoreCase;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TMediaHandlingProperties.Create(AServer: TMediaHandling);
begin
  inherited Create;
  FServer := AServer;
end;

function TMediaHandlingProperties.GetDefaultInterface: IBtMediaHandling;
begin
  Result := FServer.DefaultInterface;
end;

procedure TMediaHandlingProperties.Set_Action(retval: BtMediaHandlingAction);
begin
  DefaultInterface.Set_Action(retval);
end;

function TMediaHandlingProperties.Get_Action: BtMediaHandlingAction;
begin
    Result := DefaultInterface.Action;
end;

procedure TMediaHandlingProperties.Set_Occurrence(retval: BtMediaHandlingOccurrence);
begin
  DefaultInterface.Set_Occurrence(retval);
end;

function TMediaHandlingProperties.Get_Occurrence: BtMediaHandlingOccurrence;
begin
    Result := DefaultInterface.Occurrence;
end;

procedure TMediaHandlingProperties.Set_DataItemType(retval: BtMediaHandlingDataItemType);
begin
  DefaultInterface.Set_DataItemType(retval);
end;

function TMediaHandlingProperties.Get_DataItemType: BtMediaHandlingDataItemType;
begin
    Result := DefaultInterface.DataItemType;
end;

procedure TMediaHandlingProperties.Set_DataItemName(const retval: WideString);
  { Warning: The property DataItemName has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DataItemName := retval;
end;

function TMediaHandlingProperties.Get_DataItemName: WideString;
begin
    Result := DefaultInterface.DataItemName;
end;

procedure TMediaHandlingProperties.Set_NumberOfLabels(retval: Integer);
begin
  DefaultInterface.Set_NumberOfLabels(retval);
end;

function TMediaHandlingProperties.Get_NumberOfLabels: Integer;
begin
    Result := DefaultInterface.NumberOfLabels;
end;

procedure TMediaHandlingProperties.Set_IgnoreCase(retval: WordBool);
begin
  DefaultInterface.Set_IgnoreCase(retval);
end;

function TMediaHandlingProperties.Get_IgnoreCase: WordBool;
begin
    Result := DefaultInterface.IgnoreCase;
end;

{$ENDIF}

class function CoPageSetup.Create: IBtPageSetup;
begin
  Result := CreateComObject(CLASS_PageSetup) as IBtPageSetup;
end;

class function CoPageSetup.CreateRemote(const MachineName: string): IBtPageSetup;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_PageSetup) as IBtPageSetup;
end;

procedure TPageSetup.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{E14DA2FD-FE02-4F97-8FAB-CA13A843BBC7}';
    IntfIID:   '{6BF825B8-825A-4986-B4D4-F134112C1F97}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TPageSetup.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IBtPageSetup;
  end;
end;

procedure TPageSetup.ConnectTo(svrIntf: IBtPageSetup);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TPageSetup.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TPageSetup.GetDefaultInterface: IBtPageSetup;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TPageSetup.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TPageSetupProperties.Create(Self);
{$ENDIF}
end;

destructor TPageSetup.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TPageSetup.GetServerProperties: TPageSetupProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TPageSetup.Get_StockCategory: WideString;
begin
    Result := DefaultInterface.StockCategory;
end;

function TPageSetup.Get_StockType: WideString;
begin
    Result := DefaultInterface.StockType;
end;

procedure TPageSetup.Set_PaperName(const retval: WideString);
  { Warning: The property PaperName has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.PaperName := retval;
end;

function TPageSetup.Get_PaperName: WideString;
begin
    Result := DefaultInterface.PaperName;
end;

procedure TPageSetup.Set_PaperID(retval: Integer);
begin
  DefaultInterface.Set_PaperID(retval);
end;

function TPageSetup.Get_PaperID: Integer;
begin
    Result := DefaultInterface.PaperID;
end;

procedure TPageSetup.Set_Orientation(retval: BtOrientation);
begin
  DefaultInterface.Set_Orientation(retval);
end;

function TPageSetup.Get_Orientation: BtOrientation;
begin
    Result := DefaultInterface.Orientation;
end;

procedure TPageSetup.Set_LabelColumns(retval: Integer);
begin
  DefaultInterface.Set_LabelColumns(retval);
end;

function TPageSetup.Get_LabelColumns: Integer;
begin
    Result := DefaultInterface.LabelColumns;
end;

procedure TPageSetup.Set_LabelRows(retval: Integer);
begin
  DefaultInterface.Set_LabelRows(retval);
end;

function TPageSetup.Get_LabelRows: Integer;
begin
    Result := DefaultInterface.LabelRows;
end;

procedure TPageSetup.Set_LabelSizeManual(retval: WordBool);
begin
  DefaultInterface.Set_LabelSizeManual(retval);
end;

function TPageSetup.Get_LabelSizeManual: WordBool;
begin
    Result := DefaultInterface.LabelSizeManual;
end;

procedure TPageSetup.Set_LabelShape(retval: BtShape);
begin
  DefaultInterface.Set_LabelShape(retval);
end;

function TPageSetup.Get_LabelShape: BtShape;
begin
    Result := DefaultInterface.LabelShape;
end;

procedure TPageSetup.Set_LabelCorners(retval: BtShape);
begin
  DefaultInterface.Set_LabelCorners(retval);
end;

function TPageSetup.Get_LabelCorners: BtShape;
begin
    Result := DefaultInterface.LabelCorners;
end;

procedure TPageSetup.Set_LabelHole(retval: WordBool);
begin
  DefaultInterface.Set_LabelHole(retval);
end;

function TPageSetup.Get_LabelHole: WordBool;
begin
    Result := DefaultInterface.LabelHole;
end;

procedure TPageSetup.Set_PaperWidth(units: BtUnits; retval: Single);
begin
  DefaultInterface.PaperWidth[units] := retval;
end;

function TPageSetup.Get_PaperWidth(units: BtUnits): Single;
begin
    Result := DefaultInterface.PaperWidth[units];
end;

procedure TPageSetup.Set_PaperHeight(units: BtUnits; retval: Single);
begin
  DefaultInterface.PaperHeight[units] := retval;
end;

function TPageSetup.Get_PaperHeight(units: BtUnits): Single;
begin
    Result := DefaultInterface.PaperHeight[units];
end;

procedure TPageSetup.Set_MarginLeft(units: BtUnits; retval: Single);
begin
  DefaultInterface.MarginLeft[units] := retval;
end;

function TPageSetup.Get_MarginLeft(units: BtUnits): Single;
begin
    Result := DefaultInterface.MarginLeft[units];
end;

procedure TPageSetup.Set_MarginRight(units: BtUnits; retval: Single);
begin
  DefaultInterface.MarginRight[units] := retval;
end;

function TPageSetup.Get_MarginRight(units: BtUnits): Single;
begin
    Result := DefaultInterface.MarginRight[units];
end;

procedure TPageSetup.Set_MarginTop(units: BtUnits; retval: Single);
begin
  DefaultInterface.MarginTop[units] := retval;
end;

function TPageSetup.Get_MarginTop(units: BtUnits): Single;
begin
    Result := DefaultInterface.MarginTop[units];
end;

procedure TPageSetup.Set_MarginBottom(units: BtUnits; retval: Single);
begin
  DefaultInterface.MarginBottom[units] := retval;
end;

function TPageSetup.Get_MarginBottom(units: BtUnits): Single;
begin
    Result := DefaultInterface.MarginBottom[units];
end;

procedure TPageSetup.Set_LabelWidth(units: BtUnits; retval: Single);
begin
  DefaultInterface.LabelWidth[units] := retval;
end;

function TPageSetup.Get_LabelWidth(units: BtUnits): Single;
begin
    Result := DefaultInterface.LabelWidth[units];
end;

procedure TPageSetup.Set_LabelHeight(units: BtUnits; retval: Single);
begin
  DefaultInterface.LabelHeight[units] := retval;
end;

function TPageSetup.Get_LabelHeight(units: BtUnits): Single;
begin
    Result := DefaultInterface.LabelHeight[units];
end;

procedure TPageSetup.Set_LabelHoleDiameter(units: BtUnits; retval: Single);
begin
  DefaultInterface.LabelHoleDiameter[units] := retval;
end;

function TPageSetup.Get_LabelHoleDiameter(units: BtUnits): Single;
begin
    Result := DefaultInterface.LabelHoleDiameter[units];
end;

function TPageSetup.Get_Valid: WordBool;
begin
    Result := DefaultInterface.Valid;
end;

procedure TPageSetup.Set_LabelGapManual(retval: WordBool);
begin
  DefaultInterface.Set_LabelGapManual(retval);
end;

function TPageSetup.Get_LabelGapManual: WordBool;
begin
    Result := DefaultInterface.LabelGapManual;
end;

procedure TPageSetup.Set_LabelGapHorizontal(units: BtUnits; retval: Single);
begin
  DefaultInterface.LabelGapHorizontal[units] := retval;
end;

function TPageSetup.Get_LabelGapHorizontal(units: BtUnits): Single;
begin
    Result := DefaultInterface.LabelGapHorizontal[units];
end;

procedure TPageSetup.Set_LabelGapVertical(units: BtUnits; retval: Single);
begin
  DefaultInterface.LabelGapVertical[units] := retval;
end;

function TPageSetup.Get_LabelGapVertical(units: BtUnits): Single;
begin
    Result := DefaultInterface.LabelGapVertical[units];
end;

procedure TPageSetup.Set_Mirror(retval: WordBool);
begin
  DefaultInterface.Set_Mirror(retval);
end;

function TPageSetup.Get_Mirror: WordBool;
begin
    Result := DefaultInterface.Mirror;
end;

procedure TPageSetup.Set_Inverse(retval: WordBool);
begin
  DefaultInterface.Set_Inverse(retval);
end;

function TPageSetup.Get_Inverse: WordBool;
begin
    Result := DefaultInterface.Inverse;
end;

function TPageSetup.Get_Tray: WideString;
begin
    Result := DefaultInterface.Tray;
end;

procedure TPageSetup.Set_Tray(const retval: WideString);
  { Warning: The property Tray has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Tray := retval;
end;

function TPageSetup.Get_MediaHandling: MediaHandling;
begin
    Result := DefaultInterface.MediaHandling;
end;

procedure TPageSetup.SetStock(const StockCategory: WideString; const StockType: WideString);
begin
  DefaultInterface.SetStock(StockCategory, StockType);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TPageSetupProperties.Create(AServer: TPageSetup);
begin
  inherited Create;
  FServer := AServer;
end;

function TPageSetupProperties.GetDefaultInterface: IBtPageSetup;
begin
  Result := FServer.DefaultInterface;
end;

function TPageSetupProperties.Get_StockCategory: WideString;
begin
    Result := DefaultInterface.StockCategory;
end;

function TPageSetupProperties.Get_StockType: WideString;
begin
    Result := DefaultInterface.StockType;
end;

procedure TPageSetupProperties.Set_PaperName(const retval: WideString);
  { Warning: The property PaperName has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.PaperName := retval;
end;

function TPageSetupProperties.Get_PaperName: WideString;
begin
    Result := DefaultInterface.PaperName;
end;

procedure TPageSetupProperties.Set_PaperID(retval: Integer);
begin
  DefaultInterface.Set_PaperID(retval);
end;

function TPageSetupProperties.Get_PaperID: Integer;
begin
    Result := DefaultInterface.PaperID;
end;

procedure TPageSetupProperties.Set_Orientation(retval: BtOrientation);
begin
  DefaultInterface.Set_Orientation(retval);
end;

function TPageSetupProperties.Get_Orientation: BtOrientation;
begin
    Result := DefaultInterface.Orientation;
end;

procedure TPageSetupProperties.Set_LabelColumns(retval: Integer);
begin
  DefaultInterface.Set_LabelColumns(retval);
end;

function TPageSetupProperties.Get_LabelColumns: Integer;
begin
    Result := DefaultInterface.LabelColumns;
end;

procedure TPageSetupProperties.Set_LabelRows(retval: Integer);
begin
  DefaultInterface.Set_LabelRows(retval);
end;

function TPageSetupProperties.Get_LabelRows: Integer;
begin
    Result := DefaultInterface.LabelRows;
end;

procedure TPageSetupProperties.Set_LabelSizeManual(retval: WordBool);
begin
  DefaultInterface.Set_LabelSizeManual(retval);
end;

function TPageSetupProperties.Get_LabelSizeManual: WordBool;
begin
    Result := DefaultInterface.LabelSizeManual;
end;

procedure TPageSetupProperties.Set_LabelShape(retval: BtShape);
begin
  DefaultInterface.Set_LabelShape(retval);
end;

function TPageSetupProperties.Get_LabelShape: BtShape;
begin
    Result := DefaultInterface.LabelShape;
end;

procedure TPageSetupProperties.Set_LabelCorners(retval: BtShape);
begin
  DefaultInterface.Set_LabelCorners(retval);
end;

function TPageSetupProperties.Get_LabelCorners: BtShape;
begin
    Result := DefaultInterface.LabelCorners;
end;

procedure TPageSetupProperties.Set_LabelHole(retval: WordBool);
begin
  DefaultInterface.Set_LabelHole(retval);
end;

function TPageSetupProperties.Get_LabelHole: WordBool;
begin
    Result := DefaultInterface.LabelHole;
end;

procedure TPageSetupProperties.Set_PaperWidth(units: BtUnits; retval: Single);
begin
  DefaultInterface.PaperWidth[units] := retval;
end;

function TPageSetupProperties.Get_PaperWidth(units: BtUnits): Single;
begin
    Result := DefaultInterface.PaperWidth[units];
end;

procedure TPageSetupProperties.Set_PaperHeight(units: BtUnits; retval: Single);
begin
  DefaultInterface.PaperHeight[units] := retval;
end;

function TPageSetupProperties.Get_PaperHeight(units: BtUnits): Single;
begin
    Result := DefaultInterface.PaperHeight[units];
end;

procedure TPageSetupProperties.Set_MarginLeft(units: BtUnits; retval: Single);
begin
  DefaultInterface.MarginLeft[units] := retval;
end;

function TPageSetupProperties.Get_MarginLeft(units: BtUnits): Single;
begin
    Result := DefaultInterface.MarginLeft[units];
end;

procedure TPageSetupProperties.Set_MarginRight(units: BtUnits; retval: Single);
begin
  DefaultInterface.MarginRight[units] := retval;
end;

function TPageSetupProperties.Get_MarginRight(units: BtUnits): Single;
begin
    Result := DefaultInterface.MarginRight[units];
end;

procedure TPageSetupProperties.Set_MarginTop(units: BtUnits; retval: Single);
begin
  DefaultInterface.MarginTop[units] := retval;
end;

function TPageSetupProperties.Get_MarginTop(units: BtUnits): Single;
begin
    Result := DefaultInterface.MarginTop[units];
end;

procedure TPageSetupProperties.Set_MarginBottom(units: BtUnits; retval: Single);
begin
  DefaultInterface.MarginBottom[units] := retval;
end;

function TPageSetupProperties.Get_MarginBottom(units: BtUnits): Single;
begin
    Result := DefaultInterface.MarginBottom[units];
end;

procedure TPageSetupProperties.Set_LabelWidth(units: BtUnits; retval: Single);
begin
  DefaultInterface.LabelWidth[units] := retval;
end;

function TPageSetupProperties.Get_LabelWidth(units: BtUnits): Single;
begin
    Result := DefaultInterface.LabelWidth[units];
end;

procedure TPageSetupProperties.Set_LabelHeight(units: BtUnits; retval: Single);
begin
  DefaultInterface.LabelHeight[units] := retval;
end;

function TPageSetupProperties.Get_LabelHeight(units: BtUnits): Single;
begin
    Result := DefaultInterface.LabelHeight[units];
end;

procedure TPageSetupProperties.Set_LabelHoleDiameter(units: BtUnits; retval: Single);
begin
  DefaultInterface.LabelHoleDiameter[units] := retval;
end;

function TPageSetupProperties.Get_LabelHoleDiameter(units: BtUnits): Single;
begin
    Result := DefaultInterface.LabelHoleDiameter[units];
end;

function TPageSetupProperties.Get_Valid: WordBool;
begin
    Result := DefaultInterface.Valid;
end;

procedure TPageSetupProperties.Set_LabelGapManual(retval: WordBool);
begin
  DefaultInterface.Set_LabelGapManual(retval);
end;

function TPageSetupProperties.Get_LabelGapManual: WordBool;
begin
    Result := DefaultInterface.LabelGapManual;
end;

procedure TPageSetupProperties.Set_LabelGapHorizontal(units: BtUnits; retval: Single);
begin
  DefaultInterface.LabelGapHorizontal[units] := retval;
end;

function TPageSetupProperties.Get_LabelGapHorizontal(units: BtUnits): Single;
begin
    Result := DefaultInterface.LabelGapHorizontal[units];
end;

procedure TPageSetupProperties.Set_LabelGapVertical(units: BtUnits; retval: Single);
begin
  DefaultInterface.LabelGapVertical[units] := retval;
end;

function TPageSetupProperties.Get_LabelGapVertical(units: BtUnits): Single;
begin
    Result := DefaultInterface.LabelGapVertical[units];
end;

procedure TPageSetupProperties.Set_Mirror(retval: WordBool);
begin
  DefaultInterface.Set_Mirror(retval);
end;

function TPageSetupProperties.Get_Mirror: WordBool;
begin
    Result := DefaultInterface.Mirror;
end;

procedure TPageSetupProperties.Set_Inverse(retval: WordBool);
begin
  DefaultInterface.Set_Inverse(retval);
end;

function TPageSetupProperties.Get_Inverse: WordBool;
begin
    Result := DefaultInterface.Inverse;
end;

function TPageSetupProperties.Get_Tray: WideString;
begin
    Result := DefaultInterface.Tray;
end;

procedure TPageSetupProperties.Set_Tray(const retval: WideString);
  { Warning: The property Tray has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Tray := retval;
end;

function TPageSetupProperties.Get_MediaHandling: MediaHandling;
begin
    Result := DefaultInterface.MediaHandling;
end;

{$ENDIF}

class function CoPerformance.Create: IBtPerformance;
begin
  Result := CreateComObject(CLASS_Performance) as IBtPerformance;
end;

class function CoPerformance.CreateRemote(const MachineName: string): IBtPerformance;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Performance) as IBtPerformance;
end;

procedure TPerformance.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{12901A36-3FC4-47EF-AFD1-DFA28B3D682F}';
    IntfIID:   '{F3FE3E31-4D1C-4F8E-94DC-FF6255AFB087}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TPerformance.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IBtPerformance;
  end;
end;

procedure TPerformance.ConnectTo(svrIntf: IBtPerformance);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TPerformance.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TPerformance.GetDefaultInterface: IBtPerformance;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TPerformance.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TPerformanceProperties.Create(Self);
{$ENDIF}
end;

destructor TPerformance.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TPerformance.GetServerProperties: TPerformanceProperties;
begin
  Result := FProps;
end;
{$ENDIF}

procedure TPerformance.Set_AllowStaticGraphics(retval: WordBool);
begin
  DefaultInterface.Set_AllowStaticGraphics(retval);
end;

function TPerformance.Get_AllowStaticGraphics: WordBool;
begin
    Result := DefaultInterface.AllowStaticGraphics;
end;

procedure TPerformance.Set_AllowStaticObjects(retval: WordBool);
begin
  DefaultInterface.Set_AllowStaticObjects(retval);
end;

function TPerformance.Get_AllowStaticObjects: WordBool;
begin
    Result := DefaultInterface.AllowStaticObjects;
end;

procedure TPerformance.Set_AllowSerialization(retval: WordBool);
begin
  DefaultInterface.Set_AllowSerialization(retval);
end;

function TPerformance.Get_AllowSerialization: WordBool;
begin
    Result := DefaultInterface.AllowSerialization;
end;

procedure TPerformance.Set_AllowVariableDataOptimization(retval: WordBool);
begin
  DefaultInterface.Set_AllowVariableDataOptimization(retval);
end;

function TPerformance.Get_AllowVariableDataOptimization: WordBool;
begin
    Result := DefaultInterface.AllowVariableDataOptimization;
end;

procedure TPerformance.Set_AllowGraphicsCaching(retval: WordBool);
begin
  DefaultInterface.Set_AllowGraphicsCaching(retval);
end;

function TPerformance.Get_AllowGraphicsCaching: WordBool;
begin
    Result := DefaultInterface.AllowGraphicsCaching;
end;

procedure TPerformance.Set_AllowFormatCaching(retval: WordBool);
begin
  DefaultInterface.Set_AllowFormatCaching(retval);
end;

function TPerformance.Get_AllowFormatCaching: WordBool;
begin
    Result := DefaultInterface.AllowFormatCaching;
end;

procedure TPerformance.Set_WarnWhenUsingTrueTypeFonts(retval: WordBool);
begin
  DefaultInterface.Set_WarnWhenUsingTrueTypeFonts(retval);
end;

function TPerformance.Get_WarnWhenUsingTrueTypeFonts: WordBool;
begin
    Result := DefaultInterface.WarnWhenUsingTrueTypeFonts;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TPerformanceProperties.Create(AServer: TPerformance);
begin
  inherited Create;
  FServer := AServer;
end;

function TPerformanceProperties.GetDefaultInterface: IBtPerformance;
begin
  Result := FServer.DefaultInterface;
end;

procedure TPerformanceProperties.Set_AllowStaticGraphics(retval: WordBool);
begin
  DefaultInterface.Set_AllowStaticGraphics(retval);
end;

function TPerformanceProperties.Get_AllowStaticGraphics: WordBool;
begin
    Result := DefaultInterface.AllowStaticGraphics;
end;

procedure TPerformanceProperties.Set_AllowStaticObjects(retval: WordBool);
begin
  DefaultInterface.Set_AllowStaticObjects(retval);
end;

function TPerformanceProperties.Get_AllowStaticObjects: WordBool;
begin
    Result := DefaultInterface.AllowStaticObjects;
end;

procedure TPerformanceProperties.Set_AllowSerialization(retval: WordBool);
begin
  DefaultInterface.Set_AllowSerialization(retval);
end;

function TPerformanceProperties.Get_AllowSerialization: WordBool;
begin
    Result := DefaultInterface.AllowSerialization;
end;

procedure TPerformanceProperties.Set_AllowVariableDataOptimization(retval: WordBool);
begin
  DefaultInterface.Set_AllowVariableDataOptimization(retval);
end;

function TPerformanceProperties.Get_AllowVariableDataOptimization: WordBool;
begin
    Result := DefaultInterface.AllowVariableDataOptimization;
end;

procedure TPerformanceProperties.Set_AllowGraphicsCaching(retval: WordBool);
begin
  DefaultInterface.Set_AllowGraphicsCaching(retval);
end;

function TPerformanceProperties.Get_AllowGraphicsCaching: WordBool;
begin
    Result := DefaultInterface.AllowGraphicsCaching;
end;

procedure TPerformanceProperties.Set_AllowFormatCaching(retval: WordBool);
begin
  DefaultInterface.Set_AllowFormatCaching(retval);
end;

function TPerformanceProperties.Get_AllowFormatCaching: WordBool;
begin
    Result := DefaultInterface.AllowFormatCaching;
end;

procedure TPerformanceProperties.Set_WarnWhenUsingTrueTypeFonts(retval: WordBool);
begin
  DefaultInterface.Set_WarnWhenUsingTrueTypeFonts(retval);
end;

function TPerformanceProperties.Get_WarnWhenUsingTrueTypeFonts: WordBool;
begin
    Result := DefaultInterface.WarnWhenUsingTrueTypeFonts;
end;

{$ENDIF}

class function CoCache.Create: IBtCache;
begin
  Result := CreateComObject(CLASS_Cache) as IBtCache;
end;

class function CoCache.CreateRemote(const MachineName: string): IBtCache;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Cache) as IBtCache;
end;

procedure TCache.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{719965FA-B641-451D-9993-6444347143F0}';
    IntfIID:   '{60F959CD-13EB-4C72-8BD2-787EA11A0435}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TCache.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IBtCache;
  end;
end;

procedure TCache.ConnectTo(svrIntf: IBtCache);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TCache.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TCache.GetDefaultInterface: IBtCache;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TCache.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TCacheProperties.Create(Self);
{$ENDIF}
end;

destructor TCache.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TCache.GetServerProperties: TCacheProperties;
begin
  Result := FProps;
end;
{$ENDIF}

procedure TCache.Set_FlushInterval(retval: BtCacheFlushInterval);
begin
  DefaultInterface.Set_FlushInterval(retval);
end;

function TCache.Get_FlushInterval: BtCacheFlushInterval;
begin
    Result := DefaultInterface.FlushInterval;
end;

procedure TCache.Flush;
begin
  DefaultInterface.Flush;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TCacheProperties.Create(AServer: TCache);
begin
  inherited Create;
  FServer := AServer;
end;

function TCacheProperties.GetDefaultInterface: IBtCache;
begin
  Result := FServer.DefaultInterface;
end;

procedure TCacheProperties.Set_FlushInterval(retval: BtCacheFlushInterval);
begin
  DefaultInterface.Set_FlushInterval(retval);
end;

function TCacheProperties.Get_FlushInterval: BtCacheFlushInterval;
begin
    Result := DefaultInterface.FlushInterval;
end;

{$ENDIF}

class function CoPrintMethod.Create: IBtPrintMethod;
begin
  Result := CreateComObject(CLASS_PrintMethod) as IBtPrintMethod;
end;

class function CoPrintMethod.CreateRemote(const MachineName: string): IBtPrintMethod;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_PrintMethod) as IBtPrintMethod;
end;

procedure TPrintMethod.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{91272843-3F28-40F0-AF76-EAF978A88C1F}';
    IntfIID:   '{234D7F41-F5CF-47F9-A7F1-4DCAD70E105A}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TPrintMethod.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IBtPrintMethod;
  end;
end;

procedure TPrintMethod.ConnectTo(svrIntf: IBtPrintMethod);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TPrintMethod.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TPrintMethod.GetDefaultInterface: IBtPrintMethod;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TPrintMethod.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TPrintMethodProperties.Create(Self);
{$ENDIF}
end;

destructor TPrintMethod.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TPrintMethod.GetServerProperties: TPrintMethodProperties;
begin
  Result := FProps;
end;
{$ENDIF}

procedure TPrintMethod.Set_TrueTypeText(retval: BtTextPrintMethod);
begin
  DefaultInterface.Set_TrueTypeText(retval);
end;

function TPrintMethod.Get_TrueTypeText: BtTextPrintMethod;
begin
    Result := DefaultInterface.TrueTypeText;
end;

procedure TPrintMethod.Set_Unsupported1DBarCodes(retval: BtBarCodePrintMethod);
begin
  DefaultInterface.Set_Unsupported1DBarCodes(retval);
end;

function TPrintMethod.Get_Unsupported1DBarCodes: BtBarCodePrintMethod;
begin
    Result := DefaultInterface.Unsupported1DBarCodes;
end;

procedure TPrintMethod.Set_Unsupported2DBarCodes(retval: BtBarCodePrintMethod);
begin
  DefaultInterface.Set_Unsupported2DBarCodes(retval);
end;

function TPrintMethod.Get_Unsupported2DBarCodes: BtBarCodePrintMethod;
begin
    Result := DefaultInterface.Unsupported2DBarCodes;
end;

procedure TPrintMethod.Set_Lines(retval: BtLinePrintMethod);
begin
  DefaultInterface.Set_Lines(retval);
end;

function TPrintMethod.Get_Lines: BtLinePrintMethod;
begin
    Result := DefaultInterface.Lines;
end;

procedure TPrintMethod.Set_Boxes(retval: BtBoxPrintMethod);
begin
  DefaultInterface.Set_Boxes(retval);
end;

function TPrintMethod.Get_Boxes: BtBoxPrintMethod;
begin
    Result := DefaultInterface.Boxes;
end;

procedure TPrintMethod.Set_Ellipses(retval: BtEllipsePrintMethod);
begin
  DefaultInterface.Set_Ellipses(retval);
end;

function TPrintMethod.Get_Ellipses: BtEllipsePrintMethod;
begin
    Result := DefaultInterface.Ellipses;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TPrintMethodProperties.Create(AServer: TPrintMethod);
begin
  inherited Create;
  FServer := AServer;
end;

function TPrintMethodProperties.GetDefaultInterface: IBtPrintMethod;
begin
  Result := FServer.DefaultInterface;
end;

procedure TPrintMethodProperties.Set_TrueTypeText(retval: BtTextPrintMethod);
begin
  DefaultInterface.Set_TrueTypeText(retval);
end;

function TPrintMethodProperties.Get_TrueTypeText: BtTextPrintMethod;
begin
    Result := DefaultInterface.TrueTypeText;
end;

procedure TPrintMethodProperties.Set_Unsupported1DBarCodes(retval: BtBarCodePrintMethod);
begin
  DefaultInterface.Set_Unsupported1DBarCodes(retval);
end;

function TPrintMethodProperties.Get_Unsupported1DBarCodes: BtBarCodePrintMethod;
begin
    Result := DefaultInterface.Unsupported1DBarCodes;
end;

procedure TPrintMethodProperties.Set_Unsupported2DBarCodes(retval: BtBarCodePrintMethod);
begin
  DefaultInterface.Set_Unsupported2DBarCodes(retval);
end;

function TPrintMethodProperties.Get_Unsupported2DBarCodes: BtBarCodePrintMethod;
begin
    Result := DefaultInterface.Unsupported2DBarCodes;
end;

procedure TPrintMethodProperties.Set_Lines(retval: BtLinePrintMethod);
begin
  DefaultInterface.Set_Lines(retval);
end;

function TPrintMethodProperties.Get_Lines: BtLinePrintMethod;
begin
    Result := DefaultInterface.Lines;
end;

procedure TPrintMethodProperties.Set_Boxes(retval: BtBoxPrintMethod);
begin
  DefaultInterface.Set_Boxes(retval);
end;

function TPrintMethodProperties.Get_Boxes: BtBoxPrintMethod;
begin
    Result := DefaultInterface.Boxes;
end;

procedure TPrintMethodProperties.Set_Ellipses(retval: BtEllipsePrintMethod);
begin
  DefaultInterface.Set_Ellipses(retval);
end;

function TPrintMethodProperties.Get_Ellipses: BtEllipsePrintMethod;
begin
    Result := DefaultInterface.Ellipses;
end;

{$ENDIF}

class function CoPrintSetup.Create: IBtPrintSetup;
begin
  Result := CreateComObject(CLASS_PrintSetup) as IBtPrintSetup;
end;

class function CoPrintSetup.CreateRemote(const MachineName: string): IBtPrintSetup;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_PrintSetup) as IBtPrintSetup;
end;

procedure TPrintSetup.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{08D6D766-E4D3-44C1-ADFC-06625ED82171}';
    IntfIID:   '{C35295CA-7A00-4FDC-8A24-D9C680E82CF0}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TPrintSetup.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IBtPrintSetup;
  end;
end;

procedure TPrintSetup.ConnectTo(svrIntf: IBtPrintSetup);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TPrintSetup.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TPrintSetup.GetDefaultInterface: IBtPrintSetup;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TPrintSetup.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TPrintSetupProperties.Create(Self);
{$ENDIF}
end;

destructor TPrintSetup.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TPrintSetup.GetServerProperties: TPrintSetupProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TPrintSetup.Get_Performance: Performance;
begin
    Result := DefaultInterface.Performance;
end;

function TPrintSetup.Get_Cache: Cache;
begin
    Result := DefaultInterface.Cache;
end;

function TPrintSetup.Get_PrintMethod: PrintMethod;
begin
    Result := DefaultInterface.PrintMethod;
end;

procedure TPrintSetup.Set_AutoPrintAgain(retval: WordBool);
begin
  DefaultInterface.Set_AutoPrintAgain(retval);
end;

function TPrintSetup.Get_AutoPrintAgain: WordBool;
begin
    Result := DefaultInterface.AutoPrintAgain;
end;

procedure TPrintSetup.Set_IdenticalCopiesOfLabel(retval: SYSINT);
begin
  DefaultInterface.Set_IdenticalCopiesOfLabel(retval);
end;

function TPrintSetup.Get_IdenticalCopiesOfLabel: SYSINT;
begin
    Result := DefaultInterface.IdenticalCopiesOfLabel;
end;

procedure TPrintSetup.Set_NumberSerializedLabels(retval: SYSINT);
begin
  DefaultInterface.Set_NumberSerializedLabels(retval);
end;

function TPrintSetup.Get_NumberSerializedLabels: SYSINT;
begin
    Result := DefaultInterface.NumberSerializedLabels;
end;

procedure TPrintSetup.Set_RefreshDatabases(retval: WordBool);
begin
  DefaultInterface.Set_RefreshDatabases(retval);
end;

function TPrintSetup.Get_RefreshDatabases: WordBool;
begin
    Result := DefaultInterface.RefreshDatabases;
end;

procedure TPrintSetup.Set_LogPrintJob(retval: WordBool);
begin
  DefaultInterface.Set_LogPrintJob(retval);
end;

function TPrintSetup.Get_LogPrintJob: WordBool;
begin
    Result := DefaultInterface.LogPrintJob;
end;

function TPrintSetup.Get_Printer: WideString;
begin
    Result := DefaultInterface.Printer;
end;

procedure TPrintSetup.Set_PrintToFile(retval: WordBool);
begin
  DefaultInterface.Set_PrintToFile(retval);
end;

function TPrintSetup.Get_PrintToFile: WordBool;
begin
    Result := DefaultInterface.PrintToFile;
end;

procedure TPrintSetup.Set_UseDatabase(retval: WordBool);
begin
  DefaultInterface.Set_UseDatabase(retval);
end;

function TPrintSetup.Get_UseDatabase: WordBool;
begin
    Result := DefaultInterface.UseDatabase;
end;

procedure TPrintSetup.Set_Printer(const retval: WideString);
  { Warning: The property Printer has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Printer := retval;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TPrintSetupProperties.Create(AServer: TPrintSetup);
begin
  inherited Create;
  FServer := AServer;
end;

function TPrintSetupProperties.GetDefaultInterface: IBtPrintSetup;
begin
  Result := FServer.DefaultInterface;
end;

function TPrintSetupProperties.Get_Performance: Performance;
begin
    Result := DefaultInterface.Performance;
end;

function TPrintSetupProperties.Get_Cache: Cache;
begin
    Result := DefaultInterface.Cache;
end;

function TPrintSetupProperties.Get_PrintMethod: PrintMethod;
begin
    Result := DefaultInterface.PrintMethod;
end;

procedure TPrintSetupProperties.Set_AutoPrintAgain(retval: WordBool);
begin
  DefaultInterface.Set_AutoPrintAgain(retval);
end;

function TPrintSetupProperties.Get_AutoPrintAgain: WordBool;
begin
    Result := DefaultInterface.AutoPrintAgain;
end;

procedure TPrintSetupProperties.Set_IdenticalCopiesOfLabel(retval: SYSINT);
begin
  DefaultInterface.Set_IdenticalCopiesOfLabel(retval);
end;

function TPrintSetupProperties.Get_IdenticalCopiesOfLabel: SYSINT;
begin
    Result := DefaultInterface.IdenticalCopiesOfLabel;
end;

procedure TPrintSetupProperties.Set_NumberSerializedLabels(retval: SYSINT);
begin
  DefaultInterface.Set_NumberSerializedLabels(retval);
end;

function TPrintSetupProperties.Get_NumberSerializedLabels: SYSINT;
begin
    Result := DefaultInterface.NumberSerializedLabels;
end;

procedure TPrintSetupProperties.Set_RefreshDatabases(retval: WordBool);
begin
  DefaultInterface.Set_RefreshDatabases(retval);
end;

function TPrintSetupProperties.Get_RefreshDatabases: WordBool;
begin
    Result := DefaultInterface.RefreshDatabases;
end;

procedure TPrintSetupProperties.Set_LogPrintJob(retval: WordBool);
begin
  DefaultInterface.Set_LogPrintJob(retval);
end;

function TPrintSetupProperties.Get_LogPrintJob: WordBool;
begin
    Result := DefaultInterface.LogPrintJob;
end;

function TPrintSetupProperties.Get_Printer: WideString;
begin
    Result := DefaultInterface.Printer;
end;

procedure TPrintSetupProperties.Set_PrintToFile(retval: WordBool);
begin
  DefaultInterface.Set_PrintToFile(retval);
end;

function TPrintSetupProperties.Get_PrintToFile: WordBool;
begin
    Result := DefaultInterface.PrintToFile;
end;

procedure TPrintSetupProperties.Set_UseDatabase(retval: WordBool);
begin
  DefaultInterface.Set_UseDatabase(retval);
end;

function TPrintSetupProperties.Get_UseDatabase: WordBool;
begin
    Result := DefaultInterface.UseDatabase;
end;

procedure TPrintSetupProperties.Set_Printer(const retval: WideString);
  { Warning: The property Printer has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Printer := retval;
end;

{$ENDIF}

class function CoJob.Create: IBtJob;
begin
  Result := CreateComObject(CLASS_Job) as IBtJob;
end;

class function CoJob.CreateRemote(const MachineName: string): IBtJob;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Job) as IBtJob;
end;

procedure TJob.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{EFBC649C-ACC4-4AD4-A874-D1E5A4317E5B}';
    IntfIID:   '{3E062404-47D8-41BC-86D8-664471F63602}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TJob.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IBtJob;
  end;
end;

procedure TJob.ConnectTo(svrIntf: IBtJob);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TJob.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TJob.GetDefaultInterface: IBtJob;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TJob.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TJobProperties.Create(Self);
{$ENDIF}
end;

destructor TJob.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TJob.GetServerProperties: TJobProperties;
begin
  Result := FProps;
end;
{$ENDIF}

procedure TJob.Set_FormatIdType(retval: BtFormatIdValueType);
begin
  DefaultInterface.Set_FormatIdType(retval);
end;

function TJob.Get_FormatIdType: BtFormatIdValueType;
begin
    Result := DefaultInterface.FormatIdType;
end;

procedure TJob.Set_FormatId(const retval: WideString);
  { Warning: The property FormatId has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.FormatId := retval;
end;

function TJob.Get_FormatId: WideString;
begin
    Result := DefaultInterface.FormatId;
end;

procedure TJob.Set_PrinterCopiesType(retval: BtPrinterCopiesValueType);
begin
  DefaultInterface.Set_PrinterCopiesType(retval);
end;

function TJob.Get_PrinterCopiesType: BtPrinterCopiesValueType;
begin
    Result := DefaultInterface.PrinterCopiesType;
end;

procedure TJob.Set_PrinterCopies(const retval: WideString);
  { Warning: The property PrinterCopies has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.PrinterCopies := retval;
end;

function TJob.Get_PrinterCopies: WideString;
begin
    Result := DefaultInterface.PrinterCopies;
end;

procedure TJob.Set_PrinterSerializedCopiesType(retval: BtPrinterSerializedCopiesValueType);
begin
  DefaultInterface.Set_PrinterSerializedCopiesType(retval);
end;

function TJob.Get_PrinterSerializedCopiesType: BtPrinterSerializedCopiesValueType;
begin
    Result := DefaultInterface.PrinterSerializedCopiesType;
end;

procedure TJob.Set_PrinterSerializedCopies(const retval: WideString);
  { Warning: The property PrinterSerializedCopies has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.PrinterSerializedCopies := retval;
end;

function TJob.Get_PrinterSerializedCopies: WideString;
begin
    Result := DefaultInterface.PrinterSerializedCopies;
end;

procedure TJob.Set_PrinterBatchCopiesType(retval: BtPrinterBatchCopiesValueType);
begin
  DefaultInterface.Set_PrinterBatchCopiesType(retval);
end;

function TJob.Get_PrinterBatchCopiesType: BtPrinterBatchCopiesValueType;
begin
    Result := DefaultInterface.PrinterBatchCopiesType;
end;

procedure TJob.Set_PrinterBatchCopies(const retval: WideString);
  { Warning: The property PrinterBatchCopies has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.PrinterBatchCopies := retval;
end;

function TJob.Get_PrinterBatchCopies: WideString;
begin
    Result := DefaultInterface.PrinterBatchCopies;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TJobProperties.Create(AServer: TJob);
begin
  inherited Create;
  FServer := AServer;
end;

function TJobProperties.GetDefaultInterface: IBtJob;
begin
  Result := FServer.DefaultInterface;
end;

procedure TJobProperties.Set_FormatIdType(retval: BtFormatIdValueType);
begin
  DefaultInterface.Set_FormatIdType(retval);
end;

function TJobProperties.Get_FormatIdType: BtFormatIdValueType;
begin
    Result := DefaultInterface.FormatIdType;
end;

procedure TJobProperties.Set_FormatId(const retval: WideString);
  { Warning: The property FormatId has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.FormatId := retval;
end;

function TJobProperties.Get_FormatId: WideString;
begin
    Result := DefaultInterface.FormatId;
end;

procedure TJobProperties.Set_PrinterCopiesType(retval: BtPrinterCopiesValueType);
begin
  DefaultInterface.Set_PrinterCopiesType(retval);
end;

function TJobProperties.Get_PrinterCopiesType: BtPrinterCopiesValueType;
begin
    Result := DefaultInterface.PrinterCopiesType;
end;

procedure TJobProperties.Set_PrinterCopies(const retval: WideString);
  { Warning: The property PrinterCopies has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.PrinterCopies := retval;
end;

function TJobProperties.Get_PrinterCopies: WideString;
begin
    Result := DefaultInterface.PrinterCopies;
end;

procedure TJobProperties.Set_PrinterSerializedCopiesType(retval: BtPrinterSerializedCopiesValueType);
begin
  DefaultInterface.Set_PrinterSerializedCopiesType(retval);
end;

function TJobProperties.Get_PrinterSerializedCopiesType: BtPrinterSerializedCopiesValueType;
begin
    Result := DefaultInterface.PrinterSerializedCopiesType;
end;

procedure TJobProperties.Set_PrinterSerializedCopies(const retval: WideString);
  { Warning: The property PrinterSerializedCopies has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.PrinterSerializedCopies := retval;
end;

function TJobProperties.Get_PrinterSerializedCopies: WideString;
begin
    Result := DefaultInterface.PrinterSerializedCopies;
end;

procedure TJobProperties.Set_PrinterBatchCopiesType(retval: BtPrinterBatchCopiesValueType);
begin
  DefaultInterface.Set_PrinterBatchCopiesType(retval);
end;

function TJobProperties.Get_PrinterBatchCopiesType: BtPrinterBatchCopiesValueType;
begin
    Result := DefaultInterface.PrinterBatchCopiesType;
end;

procedure TJobProperties.Set_PrinterBatchCopies(const retval: WideString);
  { Warning: The property PrinterBatchCopies has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.PrinterBatchCopies := retval;
end;

function TJobProperties.Get_PrinterBatchCopies: WideString;
begin
    Result := DefaultInterface.PrinterBatchCopies;
end;

{$ENDIF}

class function CoPrinterCodeTemplate.Create: IBtPrinterCodeTemplate;
begin
  Result := CreateComObject(CLASS_PrinterCodeTemplate) as IBtPrinterCodeTemplate;
end;

class function CoPrinterCodeTemplate.CreateRemote(const MachineName: string): IBtPrinterCodeTemplate;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_PrinterCodeTemplate) as IBtPrinterCodeTemplate;
end;

procedure TPrinterCodeTemplate.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{60E6ADEE-2610-4630-BB2F-D15DA06824E0}';
    IntfIID:   '{022288E5-B441-4002-A531-F102F2999505}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TPrinterCodeTemplate.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IBtPrinterCodeTemplate;
  end;
end;

procedure TPrinterCodeTemplate.ConnectTo(svrIntf: IBtPrinterCodeTemplate);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TPrinterCodeTemplate.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TPrinterCodeTemplate.GetDefaultInterface: IBtPrinterCodeTemplate;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TPrinterCodeTemplate.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TPrinterCodeTemplateProperties.Create(Self);
{$ENDIF}
end;

destructor TPrinterCodeTemplate.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TPrinterCodeTemplate.GetServerProperties: TPrinterCodeTemplateProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TPrinterCodeTemplate.Get_PrintMethod: PrintMethod;
begin
    Result := DefaultInterface.PrintMethod;
end;

function TPrinterCodeTemplate.Get_Performance: Performance;
begin
    Result := DefaultInterface.Performance;
end;

function TPrinterCodeTemplate.Get_Job: Job;
begin
    Result := DefaultInterface.Job;
end;

procedure TPrinterCodeTemplate.Set_ExportAsVersion(retval: BtPctExportVersion);
begin
  DefaultInterface.Set_ExportAsVersion(retval);
end;

function TPrinterCodeTemplate.Get_ExportAsVersion: BtPctExportVersion;
begin
    Result := DefaultInterface.ExportAsVersion;
end;

function TPrinterCodeTemplate.Export(const PrintSystemName: WideString; 
                                     ExportType: BtPctExportType; 
                                     const FormatOrCombinedExportPath: WideString; 
                                     const DataExportPath: WideString; var Messages: IDispatch): WordBool;
begin
  Result := DefaultInterface.Export(PrintSystemName, ExportType, FormatOrCombinedExportPath, 
                                    DataExportPath, Messages);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TPrinterCodeTemplateProperties.Create(AServer: TPrinterCodeTemplate);
begin
  inherited Create;
  FServer := AServer;
end;

function TPrinterCodeTemplateProperties.GetDefaultInterface: IBtPrinterCodeTemplate;
begin
  Result := FServer.DefaultInterface;
end;

function TPrinterCodeTemplateProperties.Get_PrintMethod: PrintMethod;
begin
    Result := DefaultInterface.PrintMethod;
end;

function TPrinterCodeTemplateProperties.Get_Performance: Performance;
begin
    Result := DefaultInterface.Performance;
end;

function TPrinterCodeTemplateProperties.Get_Job: Job;
begin
    Result := DefaultInterface.Job;
end;

procedure TPrinterCodeTemplateProperties.Set_ExportAsVersion(retval: BtPctExportVersion);
begin
  DefaultInterface.Set_ExportAsVersion(retval);
end;

function TPrinterCodeTemplateProperties.Get_ExportAsVersion: BtPctExportVersion;
begin
    Result := DefaultInterface.ExportAsVersion;
end;

{$ENDIF}

class function CoDesignObject.Create: IBtDesignObject;
begin
  Result := CreateComObject(CLASS_DesignObject) as IBtDesignObject;
end;

class function CoDesignObject.CreateRemote(const MachineName: string): IBtDesignObject;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DesignObject) as IBtDesignObject;
end;

procedure TDesignObject.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{4E1FBDB7-107F-4920-83D7-5CA8C967B807}';
    IntfIID:   '{8FC5B386-0AFC-469D-AAA5-3F0E3BC26367}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TDesignObject.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IBtDesignObject;
  end;
end;

procedure TDesignObject.ConnectTo(svrIntf: IBtDesignObject);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TDesignObject.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TDesignObject.GetDefaultInterface: IBtDesignObject;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TDesignObject.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TDesignObjectProperties.Create(Self);
{$ENDIF}
end;

destructor TDesignObject.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TDesignObject.GetServerProperties: TDesignObjectProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TDesignObject.Get_Name: WideString;
begin
    Result := DefaultInterface.Name;
end;

function TDesignObject.Get_Value: WideString;
begin
    Result := DefaultInterface.Value;
end;

function TDesignObject.Get_type_: BtObjectType;
begin
    Result := DefaultInterface.type_;
end;

procedure TDesignObject.Set_X(retval: Double);
begin
  DefaultInterface.Set_X(retval);
end;

function TDesignObject.Get_X: Double;
begin
    Result := DefaultInterface.X;
end;

procedure TDesignObject.Set_Y(retval: Double);
begin
  DefaultInterface.Set_Y(retval);
end;

function TDesignObject.Get_Y: Double;
begin
    Result := DefaultInterface.Y;
end;

procedure TDesignObject.Set_RotationAngle(retval: Double);
begin
  DefaultInterface.Set_RotationAngle(retval);
end;

function TDesignObject.Get_RotationAngle: Double;
begin
    Result := DefaultInterface.RotationAngle;
end;

procedure TDesignObject.Set_DoNotPrint(retval: WordBool);
begin
  DefaultInterface.Set_DoNotPrint(retval);
end;

function TDesignObject.Get_DoNotPrint: WordBool;
begin
    Result := DefaultInterface.DoNotPrint;
end;

procedure TDesignObject.Set_Comment(const retval: WideString);
  { Warning: The property Comment has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Comment := retval;
end;

function TDesignObject.Get_Comment: WideString;
begin
    Result := DefaultInterface.Comment;
end;

procedure TDesignObject.Set_Width(retval: Double);
begin
  DefaultInterface.Set_Width(retval);
end;

function TDesignObject.Get_Width: Double;
begin
    Result := DefaultInterface.Width;
end;

procedure TDesignObject.Set_Height(retval: Double);
begin
  DefaultInterface.Set_Height(retval);
end;

function TDesignObject.Get_Height: Double;
begin
    Result := DefaultInterface.Height;
end;

procedure TDesignObject.Set_Length(retval: Double);
begin
  DefaultInterface.Set_Length(retval);
end;

function TDesignObject.Get_Length: Double;
begin
    Result := DefaultInterface.Length;
end;

procedure TDesignObject.Set_LineThickness(retval: Double);
begin
  DefaultInterface.Set_LineThickness(retval);
end;

function TDesignObject.Get_LineThickness: Double;
begin
    Result := DefaultInterface.LineThickness;
end;

procedure TDesignObject.Set_LineStartX(retval: Double);
begin
  DefaultInterface.Set_LineStartX(retval);
end;

function TDesignObject.Get_LineStartX: Double;
begin
    Result := DefaultInterface.LineStartX;
end;

procedure TDesignObject.Set_LineStartY(retval: Double);
begin
  DefaultInterface.Set_LineStartY(retval);
end;

function TDesignObject.Get_LineStartY: Double;
begin
    Result := DefaultInterface.LineStartY;
end;

procedure TDesignObject.Set_LineEndX(retval: Double);
begin
  DefaultInterface.Set_LineEndX(retval);
end;

function TDesignObject.Get_LineEndX: Double;
begin
    Result := DefaultInterface.LineEndX;
end;

procedure TDesignObject.Set_LineEndY(retval: Double);
begin
  DefaultInterface.Set_LineEndY(retval);
end;

function TDesignObject.Get_LineEndY: Double;
begin
    Result := DefaultInterface.LineEndY;
end;

procedure TDesignObject.Set_CornerRadius(retval: Double);
begin
  DefaultInterface.Set_CornerRadius(retval);
end;

function TDesignObject.Get_CornerRadius: Double;
begin
    Result := DefaultInterface.CornerRadius;
end;

procedure TDesignObject.Set_LineColor(retval: LongWord);
begin
  DefaultInterface.Set_LineColor(retval);
end;

function TDesignObject.Get_LineColor: LongWord;
begin
    Result := DefaultInterface.LineColor;
end;

procedure TDesignObject.Set_FillColor(retval: LongWord);
begin
  DefaultInterface.Set_FillColor(retval);
end;

function TDesignObject.Get_FillColor: LongWord;
begin
    Result := DefaultInterface.FillColor;
end;

procedure TDesignObject.Set_BarCodeColor(retval: LongWord);
begin
  DefaultInterface.Set_BarCodeColor(retval);
end;

function TDesignObject.Get_BarCodeColor: LongWord;
begin
    Result := DefaultInterface.BarCodeColor;
end;

procedure TDesignObject.Set_TextColor(retval: LongWord);
begin
  DefaultInterface.Set_TextColor(retval);
end;

function TDesignObject.Get_TextColor: LongWord;
begin
    Result := DefaultInterface.TextColor;
end;

procedure TDesignObject.Set_TextBackgroundColor(retval: LongWord);
begin
  DefaultInterface.Set_TextBackgroundColor(retval);
end;

function TDesignObject.Get_TextBackgroundColor: LongWord;
begin
    Result := DefaultInterface.TextBackgroundColor;
end;

procedure TDesignObject.Set_FontName(const retval: WideString);
  { Warning: The property FontName has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.FontName := retval;
end;

function TDesignObject.Get_FontName: WideString;
begin
    Result := DefaultInterface.FontName;
end;

procedure TDesignObject.Set_FontSize(retval: Double);
begin
  DefaultInterface.Set_FontSize(retval);
end;

function TDesignObject.Get_FontSize: Double;
begin
    Result := DefaultInterface.FontSize;
end;

procedure TDesignObject.Set_FontScale(retval: Double);
begin
  DefaultInterface.Set_FontScale(retval);
end;

function TDesignObject.Get_FontScale: Double;
begin
    Result := DefaultInterface.FontScale;
end;

procedure TDesignObject.Set_FontWeight(retval: BtFontWeight);
begin
  DefaultInterface.Set_FontWeight(retval);
end;

function TDesignObject.Get_FontWeight: BtFontWeight;
begin
    Result := DefaultInterface.FontWeight;
end;

procedure TDesignObject.Set_FontBold(retval: WordBool);
begin
  DefaultInterface.Set_FontBold(retval);
end;

function TDesignObject.Get_FontBold: WordBool;
begin
    Result := DefaultInterface.FontBold;
end;

procedure TDesignObject.Set_FontItalic(retval: WordBool);
begin
  DefaultInterface.Set_FontItalic(retval);
end;

function TDesignObject.Get_FontItalic: WordBool;
begin
    Result := DefaultInterface.FontItalic;
end;

procedure TDesignObject.Set_FontUnderline(retval: WordBool);
begin
  DefaultInterface.Set_FontUnderline(retval);
end;

function TDesignObject.Get_FontUnderline: WordBool;
begin
    Result := DefaultInterface.FontUnderline;
end;

procedure TDesignObject.Set_FontStrikeout(retval: WordBool);
begin
  DefaultInterface.Set_FontStrikeout(retval);
end;

function TDesignObject.Get_FontStrikeout: WordBool;
begin
    Result := DefaultInterface.FontStrikeout;
end;

procedure TDesignObject.Set_FontScript(retval: BtFontScript);
begin
  DefaultInterface.Set_FontScript(retval);
end;

function TDesignObject.Get_FontScript: BtFontScript;
begin
    Result := DefaultInterface.FontScript;
end;

function TDesignObject.Get_HumanReadableValue: WideString;
begin
    Result := DefaultInterface.HumanReadableValue;
end;

function TDesignObject.Get_EncodedValue: WideString;
begin
    Result := DefaultInterface.EncodedValue;
end;

procedure TDesignObject.Set_MirrorHorizontal(retval: WordBool);
begin
  DefaultInterface.Set_MirrorHorizontal(retval);
end;

function TDesignObject.Get_MirrorHorizontal: WordBool;
begin
    Result := DefaultInterface.MirrorHorizontal;
end;

procedure TDesignObject.Set_MirrorVertical(retval: WordBool);
begin
  DefaultInterface.Set_MirrorVertical(retval);
end;

function TDesignObject.Get_MirrorVertical: WordBool;
begin
    Result := DefaultInterface.MirrorVertical;
end;

procedure TDesignObject.Set_PercentWidth(retval: Integer);
begin
  DefaultInterface.Set_PercentWidth(retval);
end;

function TDesignObject.Get_PercentWidth: Integer;
begin
    Result := DefaultInterface.PercentWidth;
end;

procedure TDesignObject.Set_PercentHeight(retval: Integer);
begin
  DefaultInterface.Set_PercentHeight(retval);
end;

function TDesignObject.Get_PercentHeight: Integer;
begin
    Result := DefaultInterface.PercentHeight;
end;

procedure TDesignObject.Set_PreserveAspectRatio(retval: WordBool);
begin
  DefaultInterface.Set_PreserveAspectRatio(retval);
end;

function TDesignObject.Get_PreserveAspectRatio: WordBool;
begin
    Result := DefaultInterface.PreserveAspectRatio;
end;

procedure TDesignObject.Set_PicturePath(const retval: WideString);
  { Warning: The property PicturePath has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.PicturePath := retval;
end;

function TDesignObject.Get_PicturePath: WideString;
begin
    Result := DefaultInterface.PicturePath;
end;

procedure TDesignObject.ExportToClipboard(Color: BtColors; Resolution: BtResolution);
begin
  DefaultInterface.ExportToClipboard(Color, Resolution);
end;

procedure TDesignObject.ExportToFile(const FileName: WideString; const FileType: WideString; 
                                     Color: BtColors; Resolution: BtResolution; 
                                     SaveOption: BtSaveOptions);
begin
  DefaultInterface.ExportToFile(FileName, FileType, Color, Resolution, SaveOption);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TDesignObjectProperties.Create(AServer: TDesignObject);
begin
  inherited Create;
  FServer := AServer;
end;

function TDesignObjectProperties.GetDefaultInterface: IBtDesignObject;
begin
  Result := FServer.DefaultInterface;
end;

function TDesignObjectProperties.Get_Name: WideString;
begin
    Result := DefaultInterface.Name;
end;

function TDesignObjectProperties.Get_Value: WideString;
begin
    Result := DefaultInterface.Value;
end;

function TDesignObjectProperties.Get_type_: BtObjectType;
begin
    Result := DefaultInterface.type_;
end;

procedure TDesignObjectProperties.Set_X(retval: Double);
begin
  DefaultInterface.Set_X(retval);
end;

function TDesignObjectProperties.Get_X: Double;
begin
    Result := DefaultInterface.X;
end;

procedure TDesignObjectProperties.Set_Y(retval: Double);
begin
  DefaultInterface.Set_Y(retval);
end;

function TDesignObjectProperties.Get_Y: Double;
begin
    Result := DefaultInterface.Y;
end;

procedure TDesignObjectProperties.Set_RotationAngle(retval: Double);
begin
  DefaultInterface.Set_RotationAngle(retval);
end;

function TDesignObjectProperties.Get_RotationAngle: Double;
begin
    Result := DefaultInterface.RotationAngle;
end;

procedure TDesignObjectProperties.Set_DoNotPrint(retval: WordBool);
begin
  DefaultInterface.Set_DoNotPrint(retval);
end;

function TDesignObjectProperties.Get_DoNotPrint: WordBool;
begin
    Result := DefaultInterface.DoNotPrint;
end;

procedure TDesignObjectProperties.Set_Comment(const retval: WideString);
  { Warning: The property Comment has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Comment := retval;
end;

function TDesignObjectProperties.Get_Comment: WideString;
begin
    Result := DefaultInterface.Comment;
end;

procedure TDesignObjectProperties.Set_Width(retval: Double);
begin
  DefaultInterface.Set_Width(retval);
end;

function TDesignObjectProperties.Get_Width: Double;
begin
    Result := DefaultInterface.Width;
end;

procedure TDesignObjectProperties.Set_Height(retval: Double);
begin
  DefaultInterface.Set_Height(retval);
end;

function TDesignObjectProperties.Get_Height: Double;
begin
    Result := DefaultInterface.Height;
end;

procedure TDesignObjectProperties.Set_Length(retval: Double);
begin
  DefaultInterface.Set_Length(retval);
end;

function TDesignObjectProperties.Get_Length: Double;
begin
    Result := DefaultInterface.Length;
end;

procedure TDesignObjectProperties.Set_LineThickness(retval: Double);
begin
  DefaultInterface.Set_LineThickness(retval);
end;

function TDesignObjectProperties.Get_LineThickness: Double;
begin
    Result := DefaultInterface.LineThickness;
end;

procedure TDesignObjectProperties.Set_LineStartX(retval: Double);
begin
  DefaultInterface.Set_LineStartX(retval);
end;

function TDesignObjectProperties.Get_LineStartX: Double;
begin
    Result := DefaultInterface.LineStartX;
end;

procedure TDesignObjectProperties.Set_LineStartY(retval: Double);
begin
  DefaultInterface.Set_LineStartY(retval);
end;

function TDesignObjectProperties.Get_LineStartY: Double;
begin
    Result := DefaultInterface.LineStartY;
end;

procedure TDesignObjectProperties.Set_LineEndX(retval: Double);
begin
  DefaultInterface.Set_LineEndX(retval);
end;

function TDesignObjectProperties.Get_LineEndX: Double;
begin
    Result := DefaultInterface.LineEndX;
end;

procedure TDesignObjectProperties.Set_LineEndY(retval: Double);
begin
  DefaultInterface.Set_LineEndY(retval);
end;

function TDesignObjectProperties.Get_LineEndY: Double;
begin
    Result := DefaultInterface.LineEndY;
end;

procedure TDesignObjectProperties.Set_CornerRadius(retval: Double);
begin
  DefaultInterface.Set_CornerRadius(retval);
end;

function TDesignObjectProperties.Get_CornerRadius: Double;
begin
    Result := DefaultInterface.CornerRadius;
end;

procedure TDesignObjectProperties.Set_LineColor(retval: LongWord);
begin
  DefaultInterface.Set_LineColor(retval);
end;

function TDesignObjectProperties.Get_LineColor: LongWord;
begin
    Result := DefaultInterface.LineColor;
end;

procedure TDesignObjectProperties.Set_FillColor(retval: LongWord);
begin
  DefaultInterface.Set_FillColor(retval);
end;

function TDesignObjectProperties.Get_FillColor: LongWord;
begin
    Result := DefaultInterface.FillColor;
end;

procedure TDesignObjectProperties.Set_BarCodeColor(retval: LongWord);
begin
  DefaultInterface.Set_BarCodeColor(retval);
end;

function TDesignObjectProperties.Get_BarCodeColor: LongWord;
begin
    Result := DefaultInterface.BarCodeColor;
end;

procedure TDesignObjectProperties.Set_TextColor(retval: LongWord);
begin
  DefaultInterface.Set_TextColor(retval);
end;

function TDesignObjectProperties.Get_TextColor: LongWord;
begin
    Result := DefaultInterface.TextColor;
end;

procedure TDesignObjectProperties.Set_TextBackgroundColor(retval: LongWord);
begin
  DefaultInterface.Set_TextBackgroundColor(retval);
end;

function TDesignObjectProperties.Get_TextBackgroundColor: LongWord;
begin
    Result := DefaultInterface.TextBackgroundColor;
end;

procedure TDesignObjectProperties.Set_FontName(const retval: WideString);
  { Warning: The property FontName has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.FontName := retval;
end;

function TDesignObjectProperties.Get_FontName: WideString;
begin
    Result := DefaultInterface.FontName;
end;

procedure TDesignObjectProperties.Set_FontSize(retval: Double);
begin
  DefaultInterface.Set_FontSize(retval);
end;

function TDesignObjectProperties.Get_FontSize: Double;
begin
    Result := DefaultInterface.FontSize;
end;

procedure TDesignObjectProperties.Set_FontScale(retval: Double);
begin
  DefaultInterface.Set_FontScale(retval);
end;

function TDesignObjectProperties.Get_FontScale: Double;
begin
    Result := DefaultInterface.FontScale;
end;

procedure TDesignObjectProperties.Set_FontWeight(retval: BtFontWeight);
begin
  DefaultInterface.Set_FontWeight(retval);
end;

function TDesignObjectProperties.Get_FontWeight: BtFontWeight;
begin
    Result := DefaultInterface.FontWeight;
end;

procedure TDesignObjectProperties.Set_FontBold(retval: WordBool);
begin
  DefaultInterface.Set_FontBold(retval);
end;

function TDesignObjectProperties.Get_FontBold: WordBool;
begin
    Result := DefaultInterface.FontBold;
end;

procedure TDesignObjectProperties.Set_FontItalic(retval: WordBool);
begin
  DefaultInterface.Set_FontItalic(retval);
end;

function TDesignObjectProperties.Get_FontItalic: WordBool;
begin
    Result := DefaultInterface.FontItalic;
end;

procedure TDesignObjectProperties.Set_FontUnderline(retval: WordBool);
begin
  DefaultInterface.Set_FontUnderline(retval);
end;

function TDesignObjectProperties.Get_FontUnderline: WordBool;
begin
    Result := DefaultInterface.FontUnderline;
end;

procedure TDesignObjectProperties.Set_FontStrikeout(retval: WordBool);
begin
  DefaultInterface.Set_FontStrikeout(retval);
end;

function TDesignObjectProperties.Get_FontStrikeout: WordBool;
begin
    Result := DefaultInterface.FontStrikeout;
end;

procedure TDesignObjectProperties.Set_FontScript(retval: BtFontScript);
begin
  DefaultInterface.Set_FontScript(retval);
end;

function TDesignObjectProperties.Get_FontScript: BtFontScript;
begin
    Result := DefaultInterface.FontScript;
end;

function TDesignObjectProperties.Get_HumanReadableValue: WideString;
begin
    Result := DefaultInterface.HumanReadableValue;
end;

function TDesignObjectProperties.Get_EncodedValue: WideString;
begin
    Result := DefaultInterface.EncodedValue;
end;

procedure TDesignObjectProperties.Set_MirrorHorizontal(retval: WordBool);
begin
  DefaultInterface.Set_MirrorHorizontal(retval);
end;

function TDesignObjectProperties.Get_MirrorHorizontal: WordBool;
begin
    Result := DefaultInterface.MirrorHorizontal;
end;

procedure TDesignObjectProperties.Set_MirrorVertical(retval: WordBool);
begin
  DefaultInterface.Set_MirrorVertical(retval);
end;

function TDesignObjectProperties.Get_MirrorVertical: WordBool;
begin
    Result := DefaultInterface.MirrorVertical;
end;

procedure TDesignObjectProperties.Set_PercentWidth(retval: Integer);
begin
  DefaultInterface.Set_PercentWidth(retval);
end;

function TDesignObjectProperties.Get_PercentWidth: Integer;
begin
    Result := DefaultInterface.PercentWidth;
end;

procedure TDesignObjectProperties.Set_PercentHeight(retval: Integer);
begin
  DefaultInterface.Set_PercentHeight(retval);
end;

function TDesignObjectProperties.Get_PercentHeight: Integer;
begin
    Result := DefaultInterface.PercentHeight;
end;

procedure TDesignObjectProperties.Set_PreserveAspectRatio(retval: WordBool);
begin
  DefaultInterface.Set_PreserveAspectRatio(retval);
end;

function TDesignObjectProperties.Get_PreserveAspectRatio: WordBool;
begin
    Result := DefaultInterface.PreserveAspectRatio;
end;

procedure TDesignObjectProperties.Set_PicturePath(const retval: WideString);
  { Warning: The property PicturePath has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.PicturePath := retval;
end;

function TDesignObjectProperties.Get_PicturePath: WideString;
begin
    Result := DefaultInterface.PicturePath;
end;

{$ENDIF}

class function CoDesignObjects.Create: IBtDesignObjects;
begin
  Result := CreateComObject(CLASS_DesignObjects) as IBtDesignObjects;
end;

class function CoDesignObjects.CreateRemote(const MachineName: string): IBtDesignObjects;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DesignObjects) as IBtDesignObjects;
end;

procedure TDesignObjects.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{E28376ED-DD3D-42A8-997A-1D2CC034C48E}';
    IntfIID:   '{8C28D1E8-6056-4EC8-8AE6-4265D198A5A5}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TDesignObjects.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IBtDesignObjects;
  end;
end;

procedure TDesignObjects.ConnectTo(svrIntf: IBtDesignObjects);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TDesignObjects.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TDesignObjects.GetDefaultInterface: IBtDesignObjects;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TDesignObjects.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TDesignObjectsProperties.Create(Self);
{$ENDIF}
end;

destructor TDesignObjects.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TDesignObjects.GetServerProperties: TDesignObjectsProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TDesignObjects.Get_Count: Integer;
begin
    Result := DefaultInterface.Count;
end;

function TDesignObjects.Item(var Index: OleVariant): DesignObject;
begin
  Result := DefaultInterface.Item(Index);
end;

function TDesignObjects.Find(const Name: WideString): DesignObject;
begin
  Result := DefaultInterface.Find(Name);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TDesignObjectsProperties.Create(AServer: TDesignObjects);
begin
  inherited Create;
  FServer := AServer;
end;

function TDesignObjectsProperties.GetDefaultInterface: IBtDesignObjects;
begin
  Result := FServer.DefaultInterface;
end;

function TDesignObjectsProperties.Get_Count: Integer;
begin
    Result := DefaultInterface.Count;
end;

{$ENDIF}

class function CoViewRecordNavigator.Create: IBtViewRecordNavigator;
begin
  Result := CreateComObject(CLASS_ViewRecordNavigator) as IBtViewRecordNavigator;
end;

class function CoViewRecordNavigator.CreateRemote(const MachineName: string): IBtViewRecordNavigator;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ViewRecordNavigator) as IBtViewRecordNavigator;
end;

procedure TViewRecordNavigator.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{8ECBBFA0-171E-4E09-ADAB-6B4AD9DDB517}';
    IntfIID:   '{30B7D99D-A6D0-4D57-BBF4-593E5C613E8C}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TViewRecordNavigator.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IBtViewRecordNavigator;
  end;
end;

procedure TViewRecordNavigator.ConnectTo(svrIntf: IBtViewRecordNavigator);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TViewRecordNavigator.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TViewRecordNavigator.GetDefaultInterface: IBtViewRecordNavigator;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TViewRecordNavigator.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TViewRecordNavigatorProperties.Create(Self);
{$ENDIF}
end;

destructor TViewRecordNavigator.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TViewRecordNavigator.GetServerProperties: TViewRecordNavigatorProperties;
begin
  Result := FProps;
end;
{$ENDIF}

procedure TViewRecordNavigator.Set_Enabled(retval: WordBool);
begin
  DefaultInterface.Set_Enabled(retval);
end;

function TViewRecordNavigator.Get_Enabled: WordBool;
begin
    Result := DefaultInterface.Enabled;
end;

function TViewRecordNavigator.Get_IsConnected: WordBool;
begin
    Result := DefaultInterface.IsConnected;
end;

procedure TViewRecordNavigator.Set_CurrentRecord(retval: Integer);
begin
  DefaultInterface.Set_CurrentRecord(retval);
end;

function TViewRecordNavigator.Get_CurrentRecord: Integer;
begin
    Result := DefaultInterface.CurrentRecord;
end;

function TViewRecordNavigator.Get_LastRecord: Integer;
begin
    Result := DefaultInterface.LastRecord;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TViewRecordNavigatorProperties.Create(AServer: TViewRecordNavigator);
begin
  inherited Create;
  FServer := AServer;
end;

function TViewRecordNavigatorProperties.GetDefaultInterface: IBtViewRecordNavigator;
begin
  Result := FServer.DefaultInterface;
end;

procedure TViewRecordNavigatorProperties.Set_Enabled(retval: WordBool);
begin
  DefaultInterface.Set_Enabled(retval);
end;

function TViewRecordNavigatorProperties.Get_Enabled: WordBool;
begin
    Result := DefaultInterface.Enabled;
end;

function TViewRecordNavigatorProperties.Get_IsConnected: WordBool;
begin
    Result := DefaultInterface.IsConnected;
end;

procedure TViewRecordNavigatorProperties.Set_CurrentRecord(retval: Integer);
begin
  DefaultInterface.Set_CurrentRecord(retval);
end;

function TViewRecordNavigatorProperties.Get_CurrentRecord: Integer;
begin
    Result := DefaultInterface.CurrentRecord;
end;

function TViewRecordNavigatorProperties.Get_LastRecord: Integer;
begin
    Result := DefaultInterface.LastRecord;
end;

{$ENDIF}

class function CoFormat.Create: IBtFormat;
begin
  Result := CreateComObject(CLASS_Format) as IBtFormat;
end;

class function CoFormat.CreateRemote(const MachineName: string): IBtFormat;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Format) as IBtFormat;
end;

procedure TFormat.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{8786AEA4-17EC-11D1-8AD8-006097D76312}';
    IntfIID:   '{A27F12A1-4305-11D2-BE48-004005A04EDF}';
    EventIID:  '{2A91A78A-AE85-11DC-A4C8-B30156D89593}';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TFormat.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    ConnectEvents(punk);
    Fintf:= punk as IBtFormat;
  end;
end;

procedure TFormat.ConnectTo(svrIntf: IBtFormat);
begin
  Disconnect;
  FIntf := svrIntf;
  ConnectEvents(FIntf);
end;

procedure TFormat.DisConnect;
begin
  if Fintf <> nil then
  begin
    DisconnectEvents(FIntf);
    FIntf := nil;
  end;
end;

function TFormat.GetDefaultInterface: IBtFormat;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TFormat.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TFormatProperties.Create(Self);
{$ENDIF}
end;

destructor TFormat.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TFormat.GetServerProperties: TFormatProperties;
begin
  Result := FProps;
end;
{$ENDIF}

procedure TFormat.InvokeEvent(DispID: TDispID; var Params: TVariantArray);
begin
  case DispID of
    -1: Exit;  // DISPID_UNKNOWN
    52: if Assigned(FOnNewPrintJob) then
         FOnNewPrintJob(Self,
                        Params[0] {const WideString},
                        Params[1] {Integer});
  end; {case DispID}
end;

procedure TFormat.Set_AutoPrintAgain(retval: WordBool);
begin
  DefaultInterface.Set_AutoPrintAgain(retval);
end;

function TFormat.Get_AutoPrintAgain: WordBool;
begin
    Result := DefaultInterface.AutoPrintAgain;
end;

function TFormat.Get_BaseName: WideString;
begin
    Result := DefaultInterface.BaseName;
end;

function TFormat.Get_Directory: WideString;
begin
    Result := DefaultInterface.Directory;
end;

function TFormat.Get_FileName: WideString;
begin
    Result := DefaultInterface.FileName;
end;

procedure TFormat.Set_IdenticalCopiesOfLabel(retval: Integer);
begin
  DefaultInterface.Set_IdenticalCopiesOfLabel(retval);
end;

function TFormat.Get_IdenticalCopiesOfLabel: Integer;
begin
    Result := DefaultInterface.IdenticalCopiesOfLabel;
end;

function TFormat.Get_InputDataFileSetup: InputDataFileSetup;
begin
    Result := DefaultInterface.InputDataFileSetup;
end;

procedure TFormat.Set_NumberSerializedLabels(retval: Integer);
begin
  DefaultInterface.Set_NumberSerializedLabels(retval);
end;

function TFormat.Get_NumberSerializedLabels: Integer;
begin
    Result := DefaultInterface.NumberSerializedLabels;
end;

function TFormat.Get_Printer: WideString;
begin
    Result := DefaultInterface.Printer;
end;

procedure TFormat.Set_PrintToFile(retval: WordBool);
begin
  DefaultInterface.Set_PrintToFile(retval);
end;

function TFormat.Get_PrintToFile: WordBool;
begin
    Result := DefaultInterface.PrintToFile;
end;

function TFormat.Get_Title: WideString;
begin
    Result := DefaultInterface.Title;
end;

procedure TFormat.Set_UseInputDataFile(retval: WordBool);
begin
  DefaultInterface.Set_UseInputDataFile(retval);
end;

function TFormat.Get_UseInputDataFile: WordBool;
begin
    Result := DefaultInterface.UseInputDataFile;
end;

procedure TFormat.Set_SaveAsVersion(retval: BtVersion);
begin
  DefaultInterface.Set_SaveAsVersion(retval);
end;

function TFormat.Get_SaveAsVersion: BtVersion;
begin
    Result := DefaultInterface.SaveAsVersion;
end;

function TFormat.Get_NamedSubStrings: NamedSubStrings;
begin
    Result := DefaultInterface.NamedSubStrings;
end;

function TFormat.Get_Databases: Databases;
begin
    Result := DefaultInterface.Databases;
end;

procedure TFormat.Set_EnablePrompting(retval: WordBool);
begin
  DefaultInterface.Set_EnablePrompting(retval);
end;

function TFormat.Get_EnablePrompting: WordBool;
begin
    Result := DefaultInterface.EnablePrompting;
end;

procedure TFormat.Set_RecordRange(const retval: WideString);
  { Warning: The property RecordRange has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.RecordRange := retval;
end;

function TFormat.Get_RecordRange: WideString;
begin
    Result := DefaultInterface.RecordRange;
end;

procedure TFormat.Set_SelectRecordsAtPrint(retval: WordBool);
begin
  DefaultInterface.Set_SelectRecordsAtPrint(retval);
end;

function TFormat.Get_SelectRecordsAtPrint: WordBool;
begin
    Result := DefaultInterface.SelectRecordsAtPrint;
end;

procedure TFormat.Set_UseDatabase(retval: WordBool);
begin
  DefaultInterface.Set_UseDatabase(retval);
end;

function TFormat.Get_UseDatabase: WordBool;
begin
    Result := DefaultInterface.UseDatabase;
end;

procedure TFormat.Set_Printer(const retval: WideString);
  { Warning: The property Printer has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Printer := retval;
end;

procedure TFormat.Set_PrinterFile(const retval: WideString);
  { Warning: The property PrinterFile has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.PrinterFile := retval;
end;

function TFormat.Get_PrinterFile: WideString;
begin
    Result := DefaultInterface.PrinterFile;
end;

function TFormat.Get_PageSetup: PageSetup;
begin
    Result := DefaultInterface.PageSetup;
end;

function TFormat.Get_PrintSetup: PrintSetup;
begin
    Result := DefaultInterface.PrintSetup;
end;

function TFormat.Get_PrinterCodeTemplate: PrinterCodeTemplate;
begin
    Result := DefaultInterface.PrinterCodeTemplate;
end;

function TFormat.Get_UsedNames(FieldType: BtNameType; const delimiter: WideString): WideString;
begin
    Result := DefaultInterface.UsedNames[FieldType, delimiter];
end;

procedure TFormat.Set_UsedNamesSampleData(FieldType: BtUsedNamesSampleDataType; 
                                          const Name: WideString; const retval: WideString);
  { Warning: The property UsedNamesSampleData has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.UsedNamesSampleData := retval;
end;

function TFormat.Get_UsedNamesSampleData(FieldType: BtUsedNamesSampleDataType; 
                                         const Name: WideString): WideString;
begin
    Result := DefaultInterface.UsedNamesSampleData[FieldType, Name];
end;

procedure TFormat.Set_JobName(const retval: WideString);
  { Warning: The property JobName has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.JobName := retval;
end;

function TFormat.Get_JobName: WideString;
begin
    Result := DefaultInterface.JobName;
end;

procedure TFormat.Set_PrintToFileLicense(const retval: WideString);
  { Warning: The property PrintToFileLicense has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.PrintToFileLicense := retval;
end;

function TFormat.Get_PrintToFileLicense: WideString;
begin
    Result := DefaultInterface.PrintToFileLicense;
end;

procedure TFormat.Set_PaperTray(const retval: WideString);
  { Warning: The property PaperTray has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.PaperTray := retval;
end;

function TFormat.Get_PaperTray: WideString;
begin
    Result := DefaultInterface.PaperTray;
end;

procedure TFormat.Set_Comment(const retval: WideString);
  { Warning: The property Comment has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Comment := retval;
end;

function TFormat.Get_Comment: WideString;
begin
    Result := DefaultInterface.Comment;
end;

procedure TFormat.Set_Encryption(retval: Integer);
begin
  DefaultInterface.Set_Encryption(retval);
end;

function TFormat.Get_Encryption: Integer;
begin
    Result := DefaultInterface.Encryption;
end;

function TFormat.Get_SupportsSetSerializedCopies: WordBool;
begin
    Result := DefaultInterface.SupportsSetSerializedCopies;
end;

function TFormat.Get_SupportsSetIdenticalCopies: WordBool;
begin
    Result := DefaultInterface.SupportsSetIdenticalCopies;
end;

procedure TFormat.Set_MeasurementUnits(retval: BtUnits);
begin
  DefaultInterface.Set_MeasurementUnits(retval);
end;

function TFormat.Get_MeasurementUnits: BtUnits;
begin
    Result := DefaultInterface.MeasurementUnits;
end;

function TFormat.Get_Objects: DesignObjects;
begin
    Result := DefaultInterface.Objects;
end;

function TFormat.Get_LatestSaveNumber: Integer;
begin
    Result := DefaultInterface.LatestSaveNumber;
end;

function TFormat.Get_IsModified: WordBool;
begin
    Result := DefaultInterface.IsModified;
end;

function TFormat.Get_ViewRecordNavigator: ViewRecordNavigator;
begin
    Result := DefaultInterface.ViewRecordNavigator;
end;

function TFormat.Get_PromptValues: WideString;
begin
    Result := DefaultInterface.PromptValues;
end;

procedure TFormat.Activate;
begin
  DefaultInterface.Activate;
end;

procedure TFormat.Close(SaveChanges: BtSaveOptions);
begin
  DefaultInterface.Close(SaveChanges);
end;

function TFormat.PrintOut(ShowStatusWindow: WordBool; ShowPrintDialog: WordBool): Integer;
begin
  Result := DefaultInterface.PrintOut(ShowStatusWindow, ShowPrintDialog);
end;

procedure TFormat.SetNamedSubStringValue(const SubStringName: WideString; const Value: WideString);
begin
  DefaultInterface.SetNamedSubStringValue(SubStringName, Value);
end;

function TFormat.GetNamedSubStringValue(const SubStringName: WideString): WideString;
begin
  Result := DefaultInterface.GetNamedSubStringValue(SubStringName);
end;

procedure TFormat.Save;
begin
  DefaultInterface.Save;
end;

procedure TFormat.SaveAs(const FileName: WideString; OverwriteIfExists: WordBool);
begin
  DefaultInterface.SaveAs(FileName, OverwriteIfExists);
end;

procedure TFormat.ExportToClipboard(Color: BtColors; Resolution: BtResolution);
begin
  DefaultInterface.ExportToClipboard(Color, Resolution);
end;

procedure TFormat.ExportToFile(const FileName: WideString; const FileType: WideString; 
                               Color: BtColors; Resolution: BtResolution; SaveOption: BtSaveOptions);
begin
  DefaultInterface.ExportToFile(FileName, FileType, Color, Resolution, SaveOption);
end;

procedure TFormat.SetAvailableTemplateFieldNames(const FieldnameSampleDataList: WideString; 
                                                 const delimiter: WideString);
begin
  DefaultInterface.SetAvailableTemplateFieldNames(FieldnameSampleDataList, delimiter);
end;

function TFormat.ExportPromptToXML(const XSLFileName: WideString): WideString;
begin
  Result := DefaultInterface.ExportPromptToXML(XSLFileName);
end;

procedure TFormat.SetPrompt(const PromptName: WideString; const PromptData: WideString);
begin
  DefaultInterface.SetPrompt(PromptName, PromptData);
end;

function TFormat.Print(const PrintJobName: WideString; WaitForSpoolJobToComplete: WordBool; 
                       TimeoutMs: Integer; out Messages: Messages): BtPrintResult;
begin
  Result := DefaultInterface.Print(PrintJobName, WaitForSpoolJobToComplete, TimeoutMs, Messages);
end;

function TFormat.ExportPrintPreviewToImage(const Directory: WideString; 
                                           const FileNameTemplate: WideString; 
                                           const FileType: WideString; Colors: BtColors; 
                                           dpi: SYSINT; backgroundColor: SYSINT; 
                                           SaveOpts: BtSaveOptions; IncludeMargins: WordBool; 
                                           IncludeBorder: WordBool; out Messages: Messages): BtPrintResult;
begin
  Result := DefaultInterface.ExportPrintPreviewToImage(Directory, FileNameTemplate, FileType, 
                                                       Colors, dpi, backgroundColor, SaveOpts, 
                                                       IncludeMargins, IncludeBorder, Messages);
end;

function TFormat.SpecifyLabelFormatPassword(const Password: WideString): WordBool;
begin
  Result := DefaultInterface.SpecifyLabelFormatPassword(Password);
end;

function TFormat.ExportPrintPreviewRangeToImage(const PageRange: WideString; 
                                                const Directory: WideString; 
                                                const FileNameTemplate: WideString; 
                                                const FileType: WideString; Colors: BtColors; 
                                                dpi: SYSINT; backgroundColor: SYSINT; 
                                                SaveOpts: BtSaveOptions; IncludeMargins: WordBool; 
                                                IncludeBorder: WordBool; out Messages: Messages): BtPrintResult;
begin
  Result := DefaultInterface.ExportPrintPreviewRangeToImage(PageRange, Directory, FileNameTemplate, 
                                                            FileType, Colors, dpi, backgroundColor, 
                                                            SaveOpts, IncludeMargins, 
                                                            IncludeBorder, Messages);
end;

function TFormat.GetPrompt(const PromptName: WideString): WideString;
begin
  Result := DefaultInterface.GetPrompt(PromptName);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TFormatProperties.Create(AServer: TFormat);
begin
  inherited Create;
  FServer := AServer;
end;

function TFormatProperties.GetDefaultInterface: IBtFormat;
begin
  Result := FServer.DefaultInterface;
end;

procedure TFormatProperties.Set_AutoPrintAgain(retval: WordBool);
begin
  DefaultInterface.Set_AutoPrintAgain(retval);
end;

function TFormatProperties.Get_AutoPrintAgain: WordBool;
begin
    Result := DefaultInterface.AutoPrintAgain;
end;

function TFormatProperties.Get_BaseName: WideString;
begin
    Result := DefaultInterface.BaseName;
end;

function TFormatProperties.Get_Directory: WideString;
begin
    Result := DefaultInterface.Directory;
end;

function TFormatProperties.Get_FileName: WideString;
begin
    Result := DefaultInterface.FileName;
end;

procedure TFormatProperties.Set_IdenticalCopiesOfLabel(retval: Integer);
begin
  DefaultInterface.Set_IdenticalCopiesOfLabel(retval);
end;

function TFormatProperties.Get_IdenticalCopiesOfLabel: Integer;
begin
    Result := DefaultInterface.IdenticalCopiesOfLabel;
end;

function TFormatProperties.Get_InputDataFileSetup: InputDataFileSetup;
begin
    Result := DefaultInterface.InputDataFileSetup;
end;

procedure TFormatProperties.Set_NumberSerializedLabels(retval: Integer);
begin
  DefaultInterface.Set_NumberSerializedLabels(retval);
end;

function TFormatProperties.Get_NumberSerializedLabels: Integer;
begin
    Result := DefaultInterface.NumberSerializedLabels;
end;

function TFormatProperties.Get_Printer: WideString;
begin
    Result := DefaultInterface.Printer;
end;

procedure TFormatProperties.Set_PrintToFile(retval: WordBool);
begin
  DefaultInterface.Set_PrintToFile(retval);
end;

function TFormatProperties.Get_PrintToFile: WordBool;
begin
    Result := DefaultInterface.PrintToFile;
end;

function TFormatProperties.Get_Title: WideString;
begin
    Result := DefaultInterface.Title;
end;

procedure TFormatProperties.Set_UseInputDataFile(retval: WordBool);
begin
  DefaultInterface.Set_UseInputDataFile(retval);
end;

function TFormatProperties.Get_UseInputDataFile: WordBool;
begin
    Result := DefaultInterface.UseInputDataFile;
end;

procedure TFormatProperties.Set_SaveAsVersion(retval: BtVersion);
begin
  DefaultInterface.Set_SaveAsVersion(retval);
end;

function TFormatProperties.Get_SaveAsVersion: BtVersion;
begin
    Result := DefaultInterface.SaveAsVersion;
end;

function TFormatProperties.Get_NamedSubStrings: NamedSubStrings;
begin
    Result := DefaultInterface.NamedSubStrings;
end;

function TFormatProperties.Get_Databases: Databases;
begin
    Result := DefaultInterface.Databases;
end;

procedure TFormatProperties.Set_EnablePrompting(retval: WordBool);
begin
  DefaultInterface.Set_EnablePrompting(retval);
end;

function TFormatProperties.Get_EnablePrompting: WordBool;
begin
    Result := DefaultInterface.EnablePrompting;
end;

procedure TFormatProperties.Set_RecordRange(const retval: WideString);
  { Warning: The property RecordRange has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.RecordRange := retval;
end;

function TFormatProperties.Get_RecordRange: WideString;
begin
    Result := DefaultInterface.RecordRange;
end;

procedure TFormatProperties.Set_SelectRecordsAtPrint(retval: WordBool);
begin
  DefaultInterface.Set_SelectRecordsAtPrint(retval);
end;

function TFormatProperties.Get_SelectRecordsAtPrint: WordBool;
begin
    Result := DefaultInterface.SelectRecordsAtPrint;
end;

procedure TFormatProperties.Set_UseDatabase(retval: WordBool);
begin
  DefaultInterface.Set_UseDatabase(retval);
end;

function TFormatProperties.Get_UseDatabase: WordBool;
begin
    Result := DefaultInterface.UseDatabase;
end;

procedure TFormatProperties.Set_Printer(const retval: WideString);
  { Warning: The property Printer has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Printer := retval;
end;

procedure TFormatProperties.Set_PrinterFile(const retval: WideString);
  { Warning: The property PrinterFile has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.PrinterFile := retval;
end;

function TFormatProperties.Get_PrinterFile: WideString;
begin
    Result := DefaultInterface.PrinterFile;
end;

function TFormatProperties.Get_PageSetup: PageSetup;
begin
    Result := DefaultInterface.PageSetup;
end;

function TFormatProperties.Get_PrintSetup: PrintSetup;
begin
    Result := DefaultInterface.PrintSetup;
end;

function TFormatProperties.Get_PrinterCodeTemplate: PrinterCodeTemplate;
begin
    Result := DefaultInterface.PrinterCodeTemplate;
end;

function TFormatProperties.Get_UsedNames(FieldType: BtNameType; const delimiter: WideString): WideString;
begin
    Result := DefaultInterface.UsedNames[FieldType, delimiter];
end;

procedure TFormatProperties.Set_UsedNamesSampleData(FieldType: BtUsedNamesSampleDataType; 
                                                    const Name: WideString; const retval: WideString);
  { Warning: The property UsedNamesSampleData has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.UsedNamesSampleData := retval;
end;

function TFormatProperties.Get_UsedNamesSampleData(FieldType: BtUsedNamesSampleDataType; 
                                                   const Name: WideString): WideString;
begin
    Result := DefaultInterface.UsedNamesSampleData[FieldType, Name];
end;

procedure TFormatProperties.Set_JobName(const retval: WideString);
  { Warning: The property JobName has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.JobName := retval;
end;

function TFormatProperties.Get_JobName: WideString;
begin
    Result := DefaultInterface.JobName;
end;

procedure TFormatProperties.Set_PrintToFileLicense(const retval: WideString);
  { Warning: The property PrintToFileLicense has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.PrintToFileLicense := retval;
end;

function TFormatProperties.Get_PrintToFileLicense: WideString;
begin
    Result := DefaultInterface.PrintToFileLicense;
end;

procedure TFormatProperties.Set_PaperTray(const retval: WideString);
  { Warning: The property PaperTray has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.PaperTray := retval;
end;

function TFormatProperties.Get_PaperTray: WideString;
begin
    Result := DefaultInterface.PaperTray;
end;

procedure TFormatProperties.Set_Comment(const retval: WideString);
  { Warning: The property Comment has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Comment := retval;
end;

function TFormatProperties.Get_Comment: WideString;
begin
    Result := DefaultInterface.Comment;
end;

procedure TFormatProperties.Set_Encryption(retval: Integer);
begin
  DefaultInterface.Set_Encryption(retval);
end;

function TFormatProperties.Get_Encryption: Integer;
begin
    Result := DefaultInterface.Encryption;
end;

function TFormatProperties.Get_SupportsSetSerializedCopies: WordBool;
begin
    Result := DefaultInterface.SupportsSetSerializedCopies;
end;

function TFormatProperties.Get_SupportsSetIdenticalCopies: WordBool;
begin
    Result := DefaultInterface.SupportsSetIdenticalCopies;
end;

procedure TFormatProperties.Set_MeasurementUnits(retval: BtUnits);
begin
  DefaultInterface.Set_MeasurementUnits(retval);
end;

function TFormatProperties.Get_MeasurementUnits: BtUnits;
begin
    Result := DefaultInterface.MeasurementUnits;
end;

function TFormatProperties.Get_Objects: DesignObjects;
begin
    Result := DefaultInterface.Objects;
end;

function TFormatProperties.Get_LatestSaveNumber: Integer;
begin
    Result := DefaultInterface.LatestSaveNumber;
end;

function TFormatProperties.Get_IsModified: WordBool;
begin
    Result := DefaultInterface.IsModified;
end;

function TFormatProperties.Get_ViewRecordNavigator: ViewRecordNavigator;
begin
    Result := DefaultInterface.ViewRecordNavigator;
end;

function TFormatProperties.Get_PromptValues: WideString;
begin
    Result := DefaultInterface.PromptValues;
end;

{$ENDIF}

class function CoFormats.Create: IBtFormats;
begin
  Result := CreateComObject(CLASS_Formats) as IBtFormats;
end;

class function CoFormats.CreateRemote(const MachineName: string): IBtFormats;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Formats) as IBtFormats;
end;

procedure TFormats.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{EF2F3EA3-4147-11D2-BE48-004005A04EDF}';
    IntfIID:   '{66E43561-4379-11D2-B7D3-00104B639F6F}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TFormats.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IBtFormats;
  end;
end;

procedure TFormats.ConnectTo(svrIntf: IBtFormats);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TFormats.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TFormats.GetDefaultInterface: IBtFormats;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TFormats.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TFormatsProperties.Create(Self);
{$ENDIF}
end;

destructor TFormats.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TFormats.GetServerProperties: TFormatsProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TFormats.Get_Count: Integer;
begin
    Result := DefaultInterface.Count;
end;

function TFormats.Add: Format;
begin
  Result := DefaultInterface.Add;
end;

function TFormats.Item(var Index: OleVariant): Format;
begin
  Result := DefaultInterface.Item(Index);
end;

function TFormats.Open(const FileName: WideString; CloseOutFirstFormat: WordBool; 
                       const UsePrinter: WideString): Format;
begin
  Result := DefaultInterface.Open(FileName, CloseOutFirstFormat, UsePrinter);
end;

function TFormats.GetFormat(Index: OleVariant): Format;
begin
  Result := DefaultInterface.GetFormat(Index);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TFormatsProperties.Create(AServer: TFormats);
begin
  inherited Create;
  FServer := AServer;
end;

function TFormatsProperties.GetDefaultInterface: IBtFormats;
begin
  Result := FServer.DefaultInterface;
end;

function TFormatsProperties.Get_Count: Integer;
begin
    Result := DefaultInterface.Count;
end;

{$ENDIF}

class function CoWindow.Create: IBtWindow;
begin
  Result := CreateComObject(CLASS_Window) as IBtWindow;
end;

class function CoWindow.CreateRemote(const MachineName: string): IBtWindow;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Window) as IBtWindow;
end;

procedure TWindow.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{66E4356C-4379-11D2-B7D3-00104B639F6F}';
    IntfIID:   '{66E4356B-4379-11D2-B7D3-00104B639F6F}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TWindow.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IBtWindow;
  end;
end;

procedure TWindow.ConnectTo(svrIntf: IBtWindow);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TWindow.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TWindow.GetDefaultInterface: IBtWindow;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TWindow.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TWindowProperties.Create(Self);
{$ENDIF}
end;

destructor TWindow.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TWindow.GetServerProperties: TWindowProperties;
begin
  Result := FProps;
end;
{$ENDIF}

procedure TWindow.Set_Left(retval: Integer);
begin
  DefaultInterface.Set_Left(retval);
end;

function TWindow.Get_Left: Integer;
begin
    Result := DefaultInterface.Left;
end;

procedure TWindow.Set_Top(retval: Integer);
begin
  DefaultInterface.Set_Top(retval);
end;

function TWindow.Get_Top: Integer;
begin
    Result := DefaultInterface.Top;
end;

procedure TWindow.Set_Width(retval: Integer);
begin
  DefaultInterface.Set_Width(retval);
end;

function TWindow.Get_Width: Integer;
begin
    Result := DefaultInterface.Width;
end;

procedure TWindow.Set_Height(retval: Integer);
begin
  DefaultInterface.Set_Height(retval);
end;

function TWindow.Get_Height: Integer;
begin
    Result := DefaultInterface.Height;
end;

procedure TWindow.Set_WindowState(retval: BtWindowState);
begin
  DefaultInterface.Set_WindowState(retval);
end;

function TWindow.Get_WindowState: BtWindowState;
begin
    Result := DefaultInterface.WindowState;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TWindowProperties.Create(AServer: TWindow);
begin
  inherited Create;
  FServer := AServer;
end;

function TWindowProperties.GetDefaultInterface: IBtWindow;
begin
  Result := FServer.DefaultInterface;
end;

procedure TWindowProperties.Set_Left(retval: Integer);
begin
  DefaultInterface.Set_Left(retval);
end;

function TWindowProperties.Get_Left: Integer;
begin
    Result := DefaultInterface.Left;
end;

procedure TWindowProperties.Set_Top(retval: Integer);
begin
  DefaultInterface.Set_Top(retval);
end;

function TWindowProperties.Get_Top: Integer;
begin
    Result := DefaultInterface.Top;
end;

procedure TWindowProperties.Set_Width(retval: Integer);
begin
  DefaultInterface.Set_Width(retval);
end;

function TWindowProperties.Get_Width: Integer;
begin
    Result := DefaultInterface.Width;
end;

procedure TWindowProperties.Set_Height(retval: Integer);
begin
  DefaultInterface.Set_Height(retval);
end;

function TWindowProperties.Get_Height: Integer;
begin
    Result := DefaultInterface.Height;
end;

procedure TWindowProperties.Set_WindowState(retval: BtWindowState);
begin
  DefaultInterface.Set_WindowState(retval);
end;

function TWindowProperties.Get_WindowState: BtWindowState;
begin
    Result := DefaultInterface.WindowState;
end;

{$ENDIF}

class function CoLicenseServer.Create: IBtLicenseServer;
begin
  Result := CreateComObject(CLASS_LicenseServer) as IBtLicenseServer;
end;

class function CoLicenseServer.CreateRemote(const MachineName: string): IBtLicenseServer;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_LicenseServer) as IBtLicenseServer;
end;

procedure TLicenseServer.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{D095F6A7-EA20-457F-A353-5DBAF9CA3892}';
    IntfIID:   '{AC955B42-36D1-4AE9-894E-FE1C693CF07C}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TLicenseServer.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IBtLicenseServer;
  end;
end;

procedure TLicenseServer.ConnectTo(svrIntf: IBtLicenseServer);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TLicenseServer.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TLicenseServer.GetDefaultInterface: IBtLicenseServer;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TLicenseServer.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TLicenseServerProperties.Create(Self);
{$ENDIF}
end;

destructor TLicenseServer.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TLicenseServer.GetServerProperties: TLicenseServerProperties;
begin
  Result := FProps;
end;
{$ENDIF}

procedure TLicenseServer.Set_Address(const retval: WideString);
  { Warning: The property Address has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Address := retval;
end;

function TLicenseServer.Get_Address: WideString;
begin
    Result := DefaultInterface.Address;
end;

procedure TLicenseServer.Set_Port(retval: SYSINT);
begin
  DefaultInterface.Set_Port(retval);
end;

function TLicenseServer.Get_Port: SYSINT;
begin
    Result := DefaultInterface.Port;
end;

procedure TLicenseServer.Set_Timeout(retval: SYSINT);
begin
  DefaultInterface.Set_Timeout(retval);
end;

function TLicenseServer.Get_Timeout: SYSINT;
begin
    Result := DefaultInterface.Timeout;
end;

function TLicenseServer.Get_IsConnected: WordBool;
begin
    Result := DefaultInterface.IsConnected;
end;

procedure TLicenseServer.Set_AlternateAddress(const retval: WideString);
  { Warning: The property AlternateAddress has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.AlternateAddress := retval;
end;

function TLicenseServer.Get_AlternateAddress: WideString;
begin
    Result := DefaultInterface.AlternateAddress;
end;

procedure TLicenseServer.Set_AlternatePort(retval: SYSINT);
begin
  DefaultInterface.Set_AlternatePort(retval);
end;

function TLicenseServer.Get_AlternatePort: SYSINT;
begin
    Result := DefaultInterface.AlternatePort;
end;

procedure TLicenseServer.Set_AlternateTimeout(retval: SYSINT);
begin
  DefaultInterface.Set_AlternateTimeout(retval);
end;

function TLicenseServer.Get_AlternateTimeout: SYSINT;
begin
    Result := DefaultInterface.AlternateTimeout;
end;

function TLicenseServer.Get_MaxAllowedPrinters: SYSINT;
begin
    Result := DefaultInterface.MaxAllowedPrinters;
end;

function TLicenseServer.Get_MaxAllowedUsers: SYSINT;
begin
    Result := DefaultInterface.MaxAllowedUsers;
end;

procedure TLicenseServer.Set_Retries(retval: SYSINT);
begin
  DefaultInterface.Set_Retries(retval);
end;

function TLicenseServer.Get_Retries: SYSINT;
begin
    Result := DefaultInterface.Retries;
end;

procedure TLicenseServer.Set_AlternateRetries(retval: SYSINT);
begin
  DefaultInterface.Set_AlternateRetries(retval);
end;

function TLicenseServer.Get_AlternateRetries: SYSINT;
begin
    Result := DefaultInterface.AlternateRetries;
end;

function TLicenseServer.Connect1: WordBool;
begin
  Result := DefaultInterface.Connect;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TLicenseServerProperties.Create(AServer: TLicenseServer);
begin
  inherited Create;
  FServer := AServer;
end;

function TLicenseServerProperties.GetDefaultInterface: IBtLicenseServer;
begin
  Result := FServer.DefaultInterface;
end;

procedure TLicenseServerProperties.Set_Address(const retval: WideString);
  { Warning: The property Address has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Address := retval;
end;

function TLicenseServerProperties.Get_Address: WideString;
begin
    Result := DefaultInterface.Address;
end;

procedure TLicenseServerProperties.Set_Port(retval: SYSINT);
begin
  DefaultInterface.Set_Port(retval);
end;

function TLicenseServerProperties.Get_Port: SYSINT;
begin
    Result := DefaultInterface.Port;
end;

procedure TLicenseServerProperties.Set_Timeout(retval: SYSINT);
begin
  DefaultInterface.Set_Timeout(retval);
end;

function TLicenseServerProperties.Get_Timeout: SYSINT;
begin
    Result := DefaultInterface.Timeout;
end;

function TLicenseServerProperties.Get_IsConnected: WordBool;
begin
    Result := DefaultInterface.IsConnected;
end;

procedure TLicenseServerProperties.Set_AlternateAddress(const retval: WideString);
  { Warning: The property AlternateAddress has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.AlternateAddress := retval;
end;

function TLicenseServerProperties.Get_AlternateAddress: WideString;
begin
    Result := DefaultInterface.AlternateAddress;
end;

procedure TLicenseServerProperties.Set_AlternatePort(retval: SYSINT);
begin
  DefaultInterface.Set_AlternatePort(retval);
end;

function TLicenseServerProperties.Get_AlternatePort: SYSINT;
begin
    Result := DefaultInterface.AlternatePort;
end;

procedure TLicenseServerProperties.Set_AlternateTimeout(retval: SYSINT);
begin
  DefaultInterface.Set_AlternateTimeout(retval);
end;

function TLicenseServerProperties.Get_AlternateTimeout: SYSINT;
begin
    Result := DefaultInterface.AlternateTimeout;
end;

function TLicenseServerProperties.Get_MaxAllowedPrinters: SYSINT;
begin
    Result := DefaultInterface.MaxAllowedPrinters;
end;

function TLicenseServerProperties.Get_MaxAllowedUsers: SYSINT;
begin
    Result := DefaultInterface.MaxAllowedUsers;
end;

procedure TLicenseServerProperties.Set_Retries(retval: SYSINT);
begin
  DefaultInterface.Set_Retries(retval);
end;

function TLicenseServerProperties.Get_Retries: SYSINT;
begin
    Result := DefaultInterface.Retries;
end;

procedure TLicenseServerProperties.Set_AlternateRetries(retval: SYSINT);
begin
  DefaultInterface.Set_AlternateRetries(retval);
end;

function TLicenseServerProperties.Get_AlternateRetries: SYSINT;
begin
    Result := DefaultInterface.AlternateRetries;
end;

{$ENDIF}

class function CoApplication.Create: IBtApplication;
begin
  Result := CreateComObject(CLASS_Application) as IBtApplication;
end;

class function CoApplication.CreateRemote(const MachineName: string): IBtApplication;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Application) as IBtApplication;
end;

procedure TBarTenderApplication.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{B9425246-4131-11D2-BE48-004005A04EDF}';
    IntfIID:   '{75248841-42D0-11D2-B7D3-00104B639F6F}';
    EventIID:  '{F057BB82-74E7-4174-9ECE-DCBDA33CCD2C}';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TBarTenderApplication.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    ConnectEvents(punk);
    Fintf:= punk as IBtApplication;
  end;
end;

procedure TBarTenderApplication.ConnectTo(svrIntf: IBtApplication);
begin
  Disconnect;
  FIntf := svrIntf;
  ConnectEvents(FIntf);
end;

procedure TBarTenderApplication.DisConnect;
begin
  if Fintf <> nil then
  begin
    DisconnectEvents(FIntf);
    FIntf := nil;
  end;
end;

function TBarTenderApplication.GetDefaultInterface: IBtApplication;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TBarTenderApplication.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TApplicationProperties.Create(Self);
{$ENDIF}
end;

destructor TBarTenderApplication.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TBarTenderApplication.GetServerProperties: TApplicationProperties;
begin
  Result := FProps;
end;
{$ENDIF}

procedure TBarTenderApplication.InvokeEvent(DispID: TDispID; var Params: TVariantArray);
begin
  case DispID of
    -1: Exit;  // DISPID_UNKNOWN
    19: if Assigned(FOnCommandLineCompleted) then
         FOnCommandLineCompleted(Self,
                                 Params[0] {const WideString},
                                 Messages((TVarData(Params[1]).VPointer)^) {var Messages},
                                 Params[2] {const WideString});
    21: if Assigned(FOnNewPrintJob) then
         FOnNewPrintJob(Self,
                        Params[0] {const WideString},
                        Params[1] {Integer});
  end; {case DispID}
end;

function TBarTenderApplication.Get_ActiveFormat: Format;
begin
    Result := DefaultInterface.ActiveFormat;
end;

function TBarTenderApplication.Get_BuildNumber: Integer;
begin
    Result := DefaultInterface.BuildNumber;
end;

function TBarTenderApplication.Get_Formats: Formats;
begin
    Result := DefaultInterface.Formats;
end;

function TBarTenderApplication.Get_IsPrinting: WordBool;
begin
    Result := DefaultInterface.IsPrinting;
end;

function TBarTenderApplication.Get_IsProcessingCommandLines: WordBool;
begin
    Result := DefaultInterface.IsProcessingCommandLines;
end;

function TBarTenderApplication.Get_Version: WideString;
begin
    Result := DefaultInterface.Version;
end;

procedure TBarTenderApplication.Set_Visible(retval: WordBool);
begin
  DefaultInterface.Set_Visible(retval);
end;

function TBarTenderApplication.Get_Visible: WordBool;
begin
    Result := DefaultInterface.Visible;
end;

function TBarTenderApplication.Get_Window: Window;
begin
    Result := DefaultInterface.Window;
end;

procedure TBarTenderApplication.Set_SAPIDocDefinitionFile(const retval: WideString);
  { Warning: The property SAPIDocDefinitionFile has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.SAPIDocDefinitionFile := retval;
end;

function TBarTenderApplication.Get_SAPIDocDefinitionFile: WideString;
begin
    Result := DefaultInterface.SAPIDocDefinitionFile;
end;

function TBarTenderApplication.Get_LicenseServer: LicenseServer;
begin
    Result := DefaultInterface.LicenseServer;
end;

function TBarTenderApplication.Get_Edition: WideString;
begin
    Result := DefaultInterface.Edition;
end;

procedure TBarTenderApplication.Set_VisibleWindows(retval: BtVisibleWindows);
begin
  DefaultInterface.Set_VisibleWindows(retval);
end;

function TBarTenderApplication.Get_VisibleWindows: BtVisibleWindows;
begin
    Result := DefaultInterface.VisibleWindows;
end;

procedure TBarTenderApplication.Set_TopMost(retval: WordBool);
begin
  DefaultInterface.Set_TopMost(retval);
end;

function TBarTenderApplication.Get_TopMost: WordBool;
begin
    Result := DefaultInterface.TopMost;
end;

procedure TBarTenderApplication.Set_ParentWindow(retval: SYSUINT);
begin
  DefaultInterface.Set_ParentWindow(retval);
end;

function TBarTenderApplication.Get_ParentWindow: SYSUINT;
begin
    Result := DefaultInterface.ParentWindow;
end;

function TBarTenderApplication.Get_ProcessId: Integer;
begin
    Result := DefaultInterface.ProcessId;
end;

function TBarTenderApplication.Get_FullVersion: WideString;
begin
    Result := DefaultInterface.FullVersion;
end;

procedure TBarTenderApplication.Quit(SaveChanges: BtSaveOptions);
begin
  DefaultInterface.Quit(SaveChanges);
end;

procedure TBarTenderApplication.Save(DoPrompt: WordBool);
begin
  DefaultInterface.Save(DoPrompt);
end;

procedure TBarTenderApplication.CommandLine(const CommandLine: WideString);
begin
  DefaultInterface.CommandLine(CommandLine);
end;

function TBarTenderApplication.XMLScript(const XMLScript: WideString; SourceType: BtXMLSourceType; 
                                out Messages: Messages): WideString;
begin
  Result := DefaultInterface.XMLScript(XMLScript, SourceType, Messages);
end;

function TBarTenderApplication.SpecifyPrintOnlyPassword(const Password: WideString): WordBool;
begin
  Result := DefaultInterface.SpecifyPrintOnlyPassword(Password);
end;

procedure TBarTenderApplication.AdministerMessageSetup;
begin
  DefaultInterface.AdministerMessageSetup;
end;

procedure TBarTenderApplication.AdministerAlertSetup;
begin
  DefaultInterface.AdministerAlertSetup;
end;

procedure TBarTenderApplication.AdministerLogSetup;
begin
  DefaultInterface.AdministerLogSetup;
end;

function TBarTenderApplication.Private_SetSharedMemory(const sharedMemoryName: WideString): LongWord;
begin
  Result := DefaultInterface.Private_SetSharedMemory(sharedMemoryName);
end;

procedure TBarTenderApplication.Private_QueueCommandLine(const CommandLine: WideString; cmdId: Largeuint);
begin
  DefaultInterface.Private_QueueCommandLine(CommandLine, cmdId);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TApplicationProperties.Create(AServer: TBarTenderApplication);
begin
  inherited Create;
  FServer := AServer;
end;

function TApplicationProperties.GetDefaultInterface: IBtApplication;
begin
  Result := FServer.DefaultInterface;
end;

function TApplicationProperties.Get_ActiveFormat: Format;
begin
    Result := DefaultInterface.ActiveFormat;
end;

function TApplicationProperties.Get_BuildNumber: Integer;
begin
    Result := DefaultInterface.BuildNumber;
end;

function TApplicationProperties.Get_Formats: Formats;
begin
    Result := DefaultInterface.Formats;
end;

function TApplicationProperties.Get_IsPrinting: WordBool;
begin
    Result := DefaultInterface.IsPrinting;
end;

function TApplicationProperties.Get_IsProcessingCommandLines: WordBool;
begin
    Result := DefaultInterface.IsProcessingCommandLines;
end;

function TApplicationProperties.Get_Version: WideString;
begin
    Result := DefaultInterface.Version;
end;

procedure TApplicationProperties.Set_Visible(retval: WordBool);
begin
  DefaultInterface.Set_Visible(retval);
end;

function TApplicationProperties.Get_Visible: WordBool;
begin
    Result := DefaultInterface.Visible;
end;

function TApplicationProperties.Get_Window: Window;
begin
    Result := DefaultInterface.Window;
end;

procedure TApplicationProperties.Set_SAPIDocDefinitionFile(const retval: WideString);
  { Warning: The property SAPIDocDefinitionFile has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.SAPIDocDefinitionFile := retval;
end;

function TApplicationProperties.Get_SAPIDocDefinitionFile: WideString;
begin
    Result := DefaultInterface.SAPIDocDefinitionFile;
end;

function TApplicationProperties.Get_LicenseServer: LicenseServer;
begin
    Result := DefaultInterface.LicenseServer;
end;

function TApplicationProperties.Get_Edition: WideString;
begin
    Result := DefaultInterface.Edition;
end;

procedure TApplicationProperties.Set_VisibleWindows(retval: BtVisibleWindows);
begin
  DefaultInterface.Set_VisibleWindows(retval);
end;

function TApplicationProperties.Get_VisibleWindows: BtVisibleWindows;
begin
    Result := DefaultInterface.VisibleWindows;
end;

procedure TApplicationProperties.Set_TopMost(retval: WordBool);
begin
  DefaultInterface.Set_TopMost(retval);
end;

function TApplicationProperties.Get_TopMost: WordBool;
begin
    Result := DefaultInterface.TopMost;
end;

procedure TApplicationProperties.Set_ParentWindow(retval: SYSUINT);
begin
  DefaultInterface.Set_ParentWindow(retval);
end;

function TApplicationProperties.Get_ParentWindow: SYSUINT;
begin
    Result := DefaultInterface.ParentWindow;
end;

function TApplicationProperties.Get_ProcessId: Integer;
begin
    Result := DefaultInterface.ProcessId;
end;

function TApplicationProperties.Get_FullVersion: WideString;
begin
    Result := DefaultInterface.FullVersion;
end;

{$ENDIF}

class function CoScreenDataSubString.Create: IScreenDs;
begin
  Result := CreateComObject(CLASS_ScreenDataSubString) as IScreenDs;
end;

class function CoScreenDataSubString.CreateRemote(const MachineName: string): IScreenDs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ScreenDataSubString) as IScreenDs;
end;

class function CoTemplateFieldSubString.Create: ITemplateFieldDs;
begin
  Result := CreateComObject(CLASS_TemplateFieldSubString) as ITemplateFieldDs;
end;

class function CoTemplateFieldSubString.CreateRemote(const MachineName: string): ITemplateFieldDs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_TemplateFieldSubString) as ITemplateFieldDs;
end;

class function CoLabelObjectSubString.Create: ILabelObjectDs;
begin
  Result := CreateComObject(CLASS_LabelObjectSubString) as ILabelObjectDs;
end;

class function CoLabelObjectSubString.CreateRemote(const MachineName: string): ILabelObjectDs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_LabelObjectSubString) as ILabelObjectDs;
end;

procedure Register;
begin
  RegisterComponents(dtlServerPage, [TVerification, TMessage, TMessages, TTextFile, 
    TODBC, TOLEDB, TInputDataFileSetup, TSubString, TNamedSubStrings, 
    TQueryPrompt, TQueryPrompts, TSAPIDoc, TDatabase, TDatabases, 
    TMediaHandling, TPageSetup, TPerformance, TCache, TPrintMethod, 
    TPrintSetup, TJob, TPrinterCodeTemplate, TDesignObject, TDesignObjects, 
    TViewRecordNavigator, TFormat, TFormats, TWindow, TLicenseServer, 
    TBarTenderApplication]);
end;

end.
