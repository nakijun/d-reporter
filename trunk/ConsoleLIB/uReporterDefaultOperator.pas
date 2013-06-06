unit uReporterDefaultOperator;
////
///    Ĭ�ϱ������
///


interface

uses
  uIReporter, uIFileAccess, superobject, uFileTools, SysUtils, uJSonTools;

type
  TReporterDefaultOperator = class(TInterfacedObject, IReporterDefaultOperator)
  private
    FFileAccess: IFileAccess;
    FUserID: String;
    __pass:String;
  public
    constructor Create(const AUserID: String;
      AFileAccess: IFileAccess);

    destructor Destroy; override;
      //����Ĭ�ϵı���
    procedure setDefault(pvCatalogID, pvID:PAnsiChar);stdcall;//����Ĭ�ϱ���

    //��ȡĬ�ϵı�����ʽ
    function getDefault(pvCatalogID:PAnsiChar):PAnsiChar;stdcall;
  end;

implementation

constructor TReporterDefaultOperator.Create(const AUserID: String; AFileAccess:
    IFileAccess);
begin
  inherited Create;
  FUserID := AUserID;
  FFileAccess := AFileAccess;
end;

destructor TReporterDefaultOperator.Destroy;
begin
  FFileAccess := nil;
  inherited Destroy;
end;

{ TReporterDefaultOperator }

function TReporterDefaultOperator.getDefault(pvCatalogID: PAnsiChar): PAnsiChar;
var
  lvJSon:ISuperObject;
  lvRFile, lvLocalFile:String;
begin
  __pass := '';
  Result := '';
  lvLocalFile := TFileTools.createTempFileName('rep_', 'jsn');
  lvRFile := 'repDefault_' + FUserID + '.jsn';
  try
    FFileAccess.getFile(PAnsiChar(lvRFile), PAnsiChar(lvLocalFile), 'user_rep', False);
    if SysUtils.FileExists(lvLocalFile) then
    begin
      lvJSon := TJSonTools.JsnParseFromFile(lvLocalFile);
      __pass := lvJSon.S[pvCatalogID];
    end;
    lvRFile := '';
    lvLocalFile := '';
  finally
    if FileExists(lvLocalFile) then SysUtils.DeleteFile(lvLocalFile);
  end;                                
  Result := PAnsiChar(__pass);   
end;

procedure TReporterDefaultOperator.setDefault(pvCatalogID, pvID: PAnsiChar);
var
  lvJSon:ISuperObject;
  lvRFile, lvLocalFile:String;
begin
  lvLocalFile := TFileTools.createTempFileName('rep_', 'jsn');
  lvRFile := 'repDefault_' + FUserID + '.jsn';
  try
    FFileAccess.getFile(PAnsiChar(lvRFile), PAnsiChar(lvLocalFile), 'user_rep', False);
    if SysUtils.FileExists(lvLocalFile) then
    begin
      lvJSon := TJSonTools.JsnParseFromFile(lvLocalFile);
    end;
    if lvJSon = nil then
    begin
      lvJSon := SO();
    end;
    lvJSon.S[pvCatalogID] := pvID;

    TJSonTools.JsnSaveToFile(lvJSon, lvLocalFile);
    FFileAccess.saveFile(PAnsiChar(lvRFile), PAnsiChar(lvLocalFile), 'user_rep');
    lvRFile := '';
    lvLocalFile := '';
  finally
    if FileExists(lvLocalFile) then SysUtils.DeleteFile(lvLocalFile);
  end;                                
end;

end.
