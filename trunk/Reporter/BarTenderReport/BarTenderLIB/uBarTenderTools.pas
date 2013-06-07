unit uBarTenderTools;

interface

uses
  Classes, SysUtils, KeyStream, uKeyStreamTools, KeyStreamCoder, superobject,
  uFileTools, uKeyStreamCoder;

type
  TBarTenderTools = class(TObject)
  private
    FTemplateData:String;
    FDesignStream:TMemoryStream;

    procedure decodeFromFile(pvFile:String);
    procedure save2File(pvFile:String);
  public
    constructor Create;
    destructor Destroy; override;

    class procedure changeTemplateData(pvTemplateData:string; pvDesignFile:string);
    class procedure changeBartenderFile(pvBarTenderFile:string;pvDesignFile:string);
    class function extractBartendFile(pvDesignFile:string; pvBarTenderFile:string =
        ''): String;

    class function createFromFile(pvDesignFile: String): TBarTenderTools;
    class function extractTemplate(pvDesignFile: String): string;

    /// <summary>TBarTenderTools.parseBartenderPrintDATA
    /// </summary>
    /// <returns> ISuperObject
    ///   得到可以用了打印时传入的数据
    /// </returns>
    /// <param name="pvTemplateData"> 设计模版 </param>
    /// <param name="pvData"> 模版时取值 </param>
    class function parseBartenderPrintDATA(pvTemplateData:string;
        pvData:ISuperObject): ISuperObject;
  end;

implementation

class procedure TBarTenderTools.changeTemplateData(pvTemplateData,
  pvDesignFile: string);
var
  lvBarTendTools:TBarTenderTools;
begin
  lvBarTendTools := createFromFile(pvDesignFile);
  try
    lvBarTendTools.FTemplateData := pvTemplateData;
    lvBarTendTools.save2File(pvDesignFile);
  finally
    lvBarTendTools.Free;
  end;
end;

constructor TBarTenderTools.Create;
begin
  inherited Create;
  FDesignStream:=TMemoryStream.Create;
end;

destructor TBarTenderTools.Destroy;
begin
  FDesignStream.Free;
  inherited Destroy;
end;

class procedure TBarTenderTools.changeBartenderFile(pvBarTenderFile:string;
    pvDesignFile:string);
var
  lvBarTendTools:TBarTenderTools;
begin
  lvBarTendTools := createFromFile(pvDesignFile);
  try
    lvBarTendTools.FDesignStream.Clear;
    lvBarTendTools.FDesignStream.LoadFromFile(pvBarTenderFile);
    lvBarTendTools.save2File(pvDesignFile);
  finally
    lvBarTendTools.Free;
  end;
end;

class function TBarTenderTools.createFromFile(pvDesignFile: String):
    TBarTenderTools;
begin
  Result := TBarTenderTools.Create;
  try
    Result.decodeFromFile(pvDesignFile);
  except
    try
      Result.Free;
      Result := nil;
    except
    end;
    raise;
  end;
end;

procedure TBarTenderTools.decodeFromFile(pvFile: String);
var
  lvStream, lvDesign:TMemoryStream;
  lvKeyStream:TKeyStream;
begin
  if FileExists(pvFile) then
  begin
    lvKeyStream := TKeyStream.Create;
    try
      TKeyStreamCoder.DecodeFromFile(lvKeyStream, pvFile);
      FTemplateData := TKeyStreamCoder.ExtractString(lvKeyStream, 'data');
      
      FDesignStream.Clear;
      TKeyStreamCoder.ExtractStream(lvKeyStream, 'file', FDesignStream);
    finally
      lvKeyStream.Free;
    end;
  end;  
end;

class function TBarTenderTools.extractBartendFile(pvDesignFile:string;
    pvBarTenderFile:string = ''): String;
var
  lvFile:string;
begin
  lvFile := pvBarTenderFile;
  if lvFile = '' then  lvFile := TFileTools.createTempFileName('~btfile', '.btw');
  with createFromFile(pvDesignFile) do
  try
    if FDesignStream.Size > 0 then
    begin
      FDesignStream.SaveToFile(lvFile);
      Result := lvFile;
    end else
    begin
      Result := '';
    end;
  finally
    Free;
  end;


end;

class function TBarTenderTools.extractTemplate(pvDesignFile: String): string;
var
  lvObj:TBarTenderTools;
begin
  lvObj := createFromFile(pvDesignFile);
  try
    Result := lvObj.FTemplateData;
  finally
    lvObj.Free;
  end;
end;

class function TBarTenderTools.parseBartenderPrintDATA(pvTemplateData:string;
    pvData:ISuperObject): ISuperObject;
var
  lvStrings:TStrings;
  i:Integer;
  lvValue:String;
  lvItem:ISuperObject;
begin
  Result := SO();

  lvValue := pvTemplateData;
  for lvItem in pvData do
  begin
    lvValue := StringReplace(lvValue, '[' + lvItem.S['caption'] + ']', lvItem.S['value'], [rfReplaceAll, rfIgnoreCase]);
  end;

  lvStrings := TStringList.Create();
  try
    lvStrings.Text := lvValue;
    for i := 0 to lvStrings.Count - 1 do
    begin
      lvItem := SO();
      lvItem.S['name'] := lvStrings.Names[i];
      lvItem.S['value'] := lvStrings.ValueFromIndex[i];
      Result.O[lvItem.S['name']]:= lvItem;
    end;
  finally
    lvStrings.Free;
  end;

end;

procedure TBarTenderTools.save2File(pvFile: String);
var
  lvStream:TMemoryStream;
  lvKeyStream:TKeyStream;
begin
  if FileExists(pvFile) then
  begin
    DeleteFile(pvFile);
  end;
  lvKeyStream := TKeyStream.Create;
  lvStream := TMemoryStream.Create;
  try
    TKeyStreamCoder.AddString(lvKeyStream, 'data', FTemplateData);
    if (FDesignStream <> nil) and (FDesignStream.Size > 0) then
      lvKeyStream.Add('file', FDesignStream, False);

    TKeyStreamCoder.Encode2File(lvKeyStream, pvFile);
  finally
    lvStream.Free;
    lvKeyStream.Free;
  end;

end;

end.
