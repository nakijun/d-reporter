unit ReporterLoader;

interface

uses
  Classes, uFileTools, Windows, SysUtils, uIReporter, uMsgTools,
  uLastErrorTools;

type
  TReporterLoader = class(TObject)
  public
    class procedure FreeReporterLibrary;
    class procedure LoadReporterLibrary(const pvReporterFactory: IReporterFactory);
  end;

implementation

var
  __pass:String;
  __HandleList:TStrings = nil;

  

class procedure TReporterLoader.FreeReporterLibrary;
var
  i:Integer;
begin
  if __HandleList = nil then exit;
  while __HandleList.Count > 0 do  
  begin
    FreeLibrary(StrToInt(__HandleList[0]));
    __HandleList.Delete(0);
  end;

  __HandleList.Free;
  __HandleList := nil;
end;

class procedure TReporterLoader.LoadReporterLibrary(const pvReporterFactory:
    IReporterFactory);
var
  lvHandle:THandle;
  lvProc:procedure(const pvReporterFactory: IReporterFactory);stdcall;
  lvStrings: TStrings;
  i:Integer;
  lvFile:String;
  lvMsg:String;
begin
  if __HandleList = nil then
    __HandleList := TStringList.Create;

  lvStrings :=TStringList.Create();
  try
    TFileTools.GetModuleFileNames(lvStrings, 'RepLibs\*.dll');
    for I := 0 to lvStrings.Count - 1 do
    begin
      lvFile:= lvStrings[i];
      __pass := lvFile;
      try 
        lvHandle := LoadLibrary(PChar(__pass));
        __HandleList.Add(IntToStr(lvHandle));
        if lvHandle = 0 then
        begin
          raise Exception.Create('���ܼ���DLL�ļ�');
        end;
        @lvProc := nil;
        @lvProc := GetProcAddress(lvHandle, 'registerReporter');
        if @lvProc <> nil then
        begin
          lvProc(pvReporterFactory);
        end;
      except
        on E:Exception do
        begin
          lvMsg := '�����ļ�[' + lvFile + ']' + sLineBreak + e.Message;
          TLastErrorTools.setLastErrorINfo(-1, lvMsg);
          TMsgTools.showErrorMessage(lvMsg);
        end;
      end;
    end;
  finally
    lvStrings.Free;
  end;
end;

end.
