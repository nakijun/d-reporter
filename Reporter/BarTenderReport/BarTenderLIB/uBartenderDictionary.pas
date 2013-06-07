unit uBartenderDictionary;

interface

uses
  Classes, DB, uDataSetTools, uJSonTools;

type
  TBarTenderDictionary = class(TObject)
  public
    function ExtractDataSetFields(pvDataSet: TDataSet): TStrings;
  end;

implementation

function TBarTenderDictionary.ExtractDataSetFields(pvDataSet: TDataSet):
    TStrings;
var
  i:Integer;
begin
  
end;

end.
