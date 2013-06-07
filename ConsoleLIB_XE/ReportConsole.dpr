library ReportConsole;

{ Important note about DLL memory management: ShareMem must be the
  first unit in your library's USES clause AND your project's (select
  Project-View Source) USES clause if your DLL exports any procedures or
  functions that pass strings as parameters or function results. This
  applies to all strings passed to and from your DLL--even those that
  are nested in records and classes. ShareMem is the interface unit to
  the BORLNDMM.DLL shared memory manager, which must be deployed along
  with your DLL. To avoid using BORLNDMM.DLL, pass string information
  using PChar or ShortString parameters. }

uses
  MidasLib,
  SysUtils,
  Classes,
  PrintReportFactory in '..\ConsoleLIB\PrintReportFactory.pas',
  ufrmReportEditor in '..\ConsoleLIB\ufrmReportEditor.pas' {frmReportEditor},
  ufrmReportList in '..\ConsoleLIB\ufrmReportList.pas' {frmReportList},
  uIReporter in '..\Service\uIReporter.pas',
  uReportConsoleLibWrapper in '..\Service\uReportConsoleLibWrapper.pas',
  ReporterLoader in '..\ConsoleLIB\ReporterLoader.pas',
  uReporterDefaultOperator in '..\ConsoleLIB\uReporterDefaultOperator.pas',
  StdInterface in '..\Service\StdInterface.pas',
  uIFileAccess in '..\Service\uIFileAccess.pas',
  uFileTools in '..\Utils\uFileTools.pas',
  uMsgTools in '..\Utils\uMsgTools.pas',
  ObjList in '..\Utils\ObjList.pas',
  uIObjectList in '..\Utils\uIObjectList.pas',
  uCore in '..\Utils\uCore.pas',
  FileLogger in '..\Utils\FileLogger.pas',
  uLastErrorTools in '..\Utils\uLastErrorTools.pas',
  superobject in '..\Utils\superobject.pas',
  uJSonTools in '..\Utils\uJSonTools.pas',
  KeyStream in '..\Utils\KeyStream.pas',
  uStreamCoder in '..\Utils\uStreamCoder.pas',
  uKeyStreamCoder in '..\Utils\uKeyStreamCoder.pas',
  uDataSetTools in '..\Utils\uDataSetTools.pas',
  uSNTools in '..\Utils\uSNTools.pas',
  SOWrapper in '..\Utils\SOWrapper.pas',
  ObjectGC in '..\Utils\ObjectGC.pas',
  uKeyStreamTools in '..\Utils\uKeyStreamTools.pas',
  uFieldCreator in '..\Utils\uFieldCreator.pas',
  uIIntfList in '..\Utils\uIIntfList.pas',
  uCdsTools in '..\Utils\uCdsTools.pas';

{$R *.res}

function createReportConsole(pvApplicationHandle: THandle): IReportConsole;
    stdcall;
begin
  Result := TfrmReportList.Create(nil);      //TReportConsoleObject.Create;//
end;


function createReporterIM(pvApplicationHandle: THandle): IReporterIM;
    stdcall;
begin
  Result := TfrmReportList.Create(pvApplicationHandle);
end;

function createReporterDefaultOperator(const pvUserID: PAnsiChar; pvFileAccess:
    IFileAccess): IReporterDefaultOperator; stdcall;
begin
  Result := TReporterDefaultOperator.Create(pvUserID, pvFileAccess);
end;


exports
  createReportConsole,
  createReporterIM,
  createReporterDefaultOperator,
  getLastErrorCode,
  getLastErrorDesc;

begin
end.
