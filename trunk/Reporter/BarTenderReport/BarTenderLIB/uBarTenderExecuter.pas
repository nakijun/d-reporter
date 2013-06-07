unit uBarTenderExecuter;

interface

uses
  SysUtils, ComObj, Variants, superobject, uJSonTools, Dialogs, Windows,
  BarTender_TLB, Graphics, uFileTools, OSUtils;

type
  TBarTenderExecuter = class(TObject)
  private
    FBTApp: TBarTenderApplication;
    FPrintDATA: ISuperObject;
    FReportFile: String;
    function GetPrinting: Boolean;
  public
    function ReadyFor: IBtFormat;
    procedure DirectPrint;
    function Print2BMPGraphic: TBitmap;
    function Print2BMPFile(pvFile:String): String;
    procedure PrintDialog;
    property PrintDATA: ISuperObject read FPrintDATA write FPrintDATA;
    property Printing: Boolean read GetPrinting;
    property ReportFile: String read FReportFile write FReportFile;    
  public
    constructor Create;
    destructor Destroy; override;
  end;

implementation



constructor TBarTenderExecuter.Create;
begin
  inherited;
  try
    FBTApp := TBarTenderApplication.Create(nil);
    FBTApp.Visible := false;
  except
    on E:Exception do
    begin
      raise exception.Create('Bartender.application 对象创建失败' + sLineBreak +  E.Message);
    end;
  End;
end;

destructor TBarTenderExecuter.Destroy;
begin
  try
    FBTApp.quit(1);
    FBTApp.Free;
  except
  end;
  inherited Destroy;
end;

procedure TBarTenderExecuter.DirectPrint;
begin
  with ReadyFor do
  try
    PrintOut(True, False);
  finally
    Close(btDoNotSaveChanges);
  end;
end;

function TBarTenderExecuter.GetPrinting: Boolean;
begin
  Result := FBTApp.IsPrinting;
end;

function TBarTenderExecuter.Print2BMPFile(pvFile:String): String;
var
  lvFile:String;
begin
  lvFile := pvFile;
  if lvFile = '' then
     lvFile := TFileTools.createTempFileName('~barTender', '.bmp');
     
  with ReadyFor do
  try
    ExportToFile(lvFile, 'BMP',btColors24Bit, btResolutionPrinter, btSaveChanges);
  finally
    Close(btDoNotSaveChanges);
  end;

  Result := lvFile;
end;

function TBarTenderExecuter.Print2BMPGraphic: TBitmap;
var
  lvFile:String;
begin
  with ReadyFor do
  try
    lvFile := TFileTools.createTempFileName('~barTender', '.bmp');
    ExportToFile(lvFile, 'BMP',btColors24Bit, btResolutionPrinter, btSaveChanges);
  finally
    Close(btDoNotSaveChanges);
  end;

  if FileExists(lvFile) then
  begin
    Result := TBitmap.Create;
    try
      Result.LoadFromFile(lvFile);
      DeleteFile(PAnsiChar(lvFile));
      lvFile := '';
    except
      Result.Free;
      Result := nil;
    end;
  end;
end;

procedure TBarTenderExecuter.PrintDialog;
begin
  with ReadyFor do
  try
    PrintOut(True, True);
  finally
    Close(btDoNotSaveChanges);
  end;  
end;

function TBarTenderExecuter.ReadyFor: IBtFormat;
var
  lvitem:TSuperObjectIter;
  lvDATAList:ISuperObject;
  lvValue:string;
  lvCopies,lvOrientation:integer;
  lvBTPageSetup: IBtPageSetup;
  lvOutMsg:IBtMessages;
  lvBtFormat:IBtFormat;
begin
  lvBtFormat:=FBTApp.formats.open(FReportFile,true,'');
  try
    lvCopies:= FPrintDATA.I['Copies'];
    if lvCopies<=0 then lvCopies:=1;   {最小打印一份}
    lvOrientation:=FPrintDATA.I['Orientation'];
    lvDATAList := FPrintDATA.O['list'];
    if lvDATAList = nil then lvDATAList := FPrintDATA.O['label'];

    if lvDATAList <> nil then
    if ObjectFindFirst(lvDATAList,lvitem) then
    try
      repeat
        try
          {加载时一定要判断空对象，因为对象不一定是连续的}
          if lvitem.val = nil then Continue;
          if lvitem.val.O['value'] <> nil then
            lvValue := lvitem.val.S['value']
          else
            lvValue:=lvitem.val.S['Text'];
          lvBTFormat.SetNamedSubStringValue(lvitem.key,lvValue); {设置值}
        except          
        end;
      until not ObjectFindNext(lvitem);
    finally
      ObjectFindClose(lvitem);
    end;

    lvBTPageSetup:=lvBtFormat.PageSetup;
    lvBTPageSetup.Orientation:=lvOrientation;
    lvBtFormat.IdenticalCopiesOfLabel:=lvCopies;
  except
    lvBtFormat.close(1);
    raise;
  end;

  Result := lvBtFormat;
//    lvBTFormat.ExportPrintPreviewToImage('C:\temp', '01', 'bmp', 0, 0, 0, 0, True,True, lvOutMsg);
 //   lvBTFormat.PrintOut(True,True);


end;

end.
