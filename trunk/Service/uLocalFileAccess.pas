unit uLocalFileAccess;
{
  �����ļ��洢
}

interface

uses
  uIFileAccess, SysUtils, uFileTools, Windows;

type
  TLocalFileAccess = class(TInterfacedObject, IFileAccess)
  private
    FBasePath: String;
  public
    constructor Create(const ABasePath: String);
    destructor Destroy; override;

    /// <summary>
    ///   �����ļ�
    /// </summary>
    /// <param name="pvRFileName"> �ļ�ID </param>
    /// <param name="pvLocalFileName"> �����ļ��� </param>
    /// <param name="pvType"> ���� </param>
    procedure saveFile(pvRFileName, pvLocalFileName, pvType: PAnsiChar);

    //ɾ���ļ�
    procedure deleteFile(pvRFileName, pvType: PAnsiChar);

    /// <summary>
    ///   ��ȡ�ļ�
    /// </summary>
    /// <returns>
    ///   ��ȡ�ɹ���
    /// </returns>
    /// <param name="pvRFileName"> �ļ�ID </param>
    /// <param name="pvLocalFileName"> ��ȡ�����󱣴��ڱ����ļ��� </param>
    /// <param name="pvType"> ���� </param>
    /// <param name="pvRaiseIfFalse"> �Ƿ�Raise���� </param>
    function getFile(pvRFileName, pvLocalFileName, pvType: PAnsiChar;
        pvRaiseIfFalse: Boolean = true): Boolean;
  end;

implementation

constructor TLocalFileAccess.Create(const ABasePath: String);
begin
  inherited Create;
  if ABasePath<>'' then
  begin
    FBasePath := TFileTools.PathWithBackslash(ABasePath);
  end;
end;

destructor TLocalFileAccess.Destroy;
begin
  
  inherited Destroy;
end;

procedure TLocalFileAccess.deleteFile(pvRFileName, pvType: PAnsiChar);
var
  lvPath, lvTempStr:string;
begin
  lvPath := FBasePath + pvType;

  ForceDirectories(lvPath);

  lvPath := lvPath + '\' + pvRFileName;

  SysUtils.DeleteFile(lvPath);
end;

function TLocalFileAccess.getFile(pvRFileName, pvLocalFileName, pvType:
    PAnsiChar; pvRaiseIfFalse: Boolean = true): Boolean;
var
  lvFile:string;
begin
  Result := false;
  lvFile := FBasePath + pvType+  '\' + pvRFileName;

  Result := FileExists(lvFile);

  if Result then
  begin
    ForceDirectories(ExtractFilePath(pvLocalFileName));
    Result := TFileTools.FileCopy(lvFile, pvLocalFileName, True);

    if not Result then
    begin
      if pvRaiseIfFalse then
      begin
        raise Exception.Create('copy�ļ�ʧ��!');
      end;
    end;
  end else
  begin
    if pvRaiseIfFalse then
    begin
      raise Exception.Create('Ҫ��ȡ���ļ�������!' + lvFile);
    end;
  end;
end;

procedure TLocalFileAccess.saveFile(pvRFileName, pvLocalFileName, pvType:
    PAnsiChar);
var
  lvPath, lvTempStr:string;
begin
  lvPath := FBasePath + pvType;

  ForceDirectories(lvPath);

  lvTempStr := pvLocalFileName;

  lvPath := lvPath + '\' + pvRFileName;
  
  TFileTools.FileCopy(pvLocalFileName,lvPath, True);
end;

end.
