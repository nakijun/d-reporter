program PrintReportTester;

uses
  Forms,
  MidasLib,
  uFormMain in 'Forms\uFormMain.pas' {FormMain},
  uFormProgressConsole in 'Forms\uFormProgressConsole.pas' {FormProgressConsole},
  StdInterface in '..\Service\StdInterface.pas',
  uDBIntf in '..\Service\uDBIntf.pas',
  uIBarTenderData in '..\Service\uIBarTenderData.pas',
  uIControlLayout in '..\Service\uIControlLayout.pas',
  uIFileAccess in '..\Service\uIFileAccess.pas',
  uIReporter in '..\Service\uIReporter.pas',
  uIUIReporter in '..\Service\uIUIReporter.pas',
  uLocalFileAccess in '..\Service\uLocalFileAccess.pas',
  uReportConsoleLibWrapper in '..\Service\uReportConsoleLibWrapper.pas',
  uIObjectList in '..\Utils\uIObjectList.pas',
  uJSonTools in '..\Utils\uJSonTools.pas',
  uKeyStreamCoder in '..\Utils\uKeyStreamCoder.pas',
  uKeyStreamTools in '..\Utils\uKeyStreamTools.pas',
  uLastErrorTools in '..\Utils\uLastErrorTools.pas',
  uMsgTools in '..\Utils\uMsgTools.pas',
  uSNTools in '..\Utils\uSNTools.pas',
  uStreamCoder in '..\Utils\uStreamCoder.pas',
  FileLogger in '..\Utils\FileLogger.pas',
  KeyStream in '..\Utils\KeyStream.pas',
  ObjectGC in '..\Utils\ObjectGC.pas',
  ObjList in '..\Utils\ObjList.pas',
  SOWrapper in '..\Utils\SOWrapper.pas',
  superobject in '..\Utils\superobject.pas',
  uCdsTools in '..\Utils\uCdsTools.pas',
  uCore in '..\Utils\uCore.pas',
  uCRCTools in '..\Utils\uCRCTools.pas',
  uDataSetTools in '..\Utils\uDataSetTools.pas',
  uFieldCreator in '..\Utils\uFieldCreator.pas',
  uFileTools in '..\Utils\uFileTools.pas',
  uIIntfList in '..\Utils\uIIntfList.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
