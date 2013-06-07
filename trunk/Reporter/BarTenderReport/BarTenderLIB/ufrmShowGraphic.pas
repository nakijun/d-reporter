unit ufrmShowGraphic;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls;

type
  TfrmShowGraphic = class(TForm)
    Image1: TImage;
  private
    { Private declarations }
  public
    class procedure ShowGraphic(pvGraphic: TGraphic; pvTitle: string);
    { Public declarations }
    
  end;

var
  frmShowGraphic: TfrmShowGraphic;

implementation

{$R *.dfm}

class procedure TfrmShowGraphic.ShowGraphic(pvGraphic: TGraphic; pvTitle:
    string);
begin
  with TfrmShowGraphic.Create(nil) do
  try
    if pvTitle <> '' then  Caption := pvTitle;
    Image1.Picture.Graphic := pvGraphic;
    ShowModal;
  finally
    Free;
  end;
end;

end.
