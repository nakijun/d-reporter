program PrintReportTester;

uses
  FastMM4,
  Forms,
  MidasLib,
  uFormMain in 'Forms\uFormMain.pas' {FormMain},
  uFormProgressConsole in 'Forms\uFormProgressConsole.pas' {FormProgressConsole},
  uIReporter in '..\Service\uIReporter.pas',
  uIUIReporter in '..\Service\uIUIReporter.pas',
  uLocalFileAccess in '..\Service\uLocalFileAccess.pas',
  uReportConsoleLibWrapper in '..\Service\uReportConsoleLibWrapper.pas',
  uIBarTenderData in '..\Service\uIBarTenderData.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
