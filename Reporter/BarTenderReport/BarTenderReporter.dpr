library BarTenderReporter;

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
  SysUtils,
  Classes,
  uReporter in 'uReporter.pas',
  uIReporter in '..\..\Service\uIReporter.pas',
  BarTender_TLB in 'BarTenderLIB\BarTender_TLB.pas',
  uBartenderDictionary in 'BarTenderLIB\uBartenderDictionary.pas',
  uBarTenderExecuter in 'BarTenderLIB\uBarTenderExecuter.pas',
  uBarTenderTools in 'BarTenderLIB\uBarTenderTools.pas',
  ufrmBarTenderDesign in 'BarTenderLIB\ufrmBarTenderDesign.pas' {frmBarTenderDesign},
  ufrmShowGraphic in 'BarTenderLIB\ufrmShowGraphic.pas' {frmShowGraphic},
  uIBarTenderData in '..\..\Service\uIBarTenderData.pas',
  ufrmPreView in 'BarTenderLIB\ufrmPreView.pas' {frmPreView};

{$R *.res}
procedure registerReporter(const pvReporterFactory: IReporterFactory);
    stdcall;
begin
  pvReporterFactory.registerReporter('BarTender', 'BarTender条码打印报表', createRepoter);
end;



exports
  registerReporter;

begin
end.
