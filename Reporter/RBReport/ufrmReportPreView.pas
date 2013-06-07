unit ufrmReportPreView;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ppViewr, ppReport;

type
  TfrmReportPreView = class(TForm)
    ppViewer1: TppViewer;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure setReport(pReport: TppReport);
  end;

var
  frmReportPreView: TfrmReportPreView;

implementation

{$R *.dfm}

procedure TfrmReportPreView.setReport(pReport: TppReport);
begin
    ppViewer1.Report := pReport;
    ppViewer1.FirstPage;
end;

end.
