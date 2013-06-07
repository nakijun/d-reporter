unit uSNTools;
{
   ��Ź���
}

interface

uses
  DB, SysUtils, DBClient, Math, uDataSetTools, Classes;

type
  TSNTools = class(TObject)
  private
  public
    class procedure ReCreateSNIndex(pvDataSet: TDataSet; pvSNFieldName: string;
        pvKeyField: String = '');

    class procedure MoveUp(pvDataSet: TClientDataSet; pvSNFieldName: string);

    class procedure MoveDown(pvDataSet: TClientDataSet; pvSNFieldName: string);

    /// <summary>
    ///
    /// </summary>
    /// <returns>
    /// pvCurrent = -1 :��ȡ������+1
    ///   ���� ��ȡ��С����Current����(FCurrent����һ�����)
    /// </returns>
    /// <param name="pvDataSet"> (TDataSet) </param>
    /// <param name="pvSNFieldName"> (string) </param>
    /// <param name="pvCurrent"> (Integer) </param>
    class function GetNextSNIndex(pvDataSet: TDataSet; pvSNFieldName: string;
      pvCurrent: Integer = -1; pvDisableControls: Boolean = true): Integer;

    class function GetPriorSNIndex(pvDataSet: TDataSet; pvSNFieldName: string;
        pvCurrent: Integer = -1; pvDisableControls: Boolean = true): Integer;
  end;

implementation

class function TSNTools.GetNextSNIndex(pvDataSet: TDataSet; pvSNFieldName:
  string; pvCurrent: Integer = -1; pvDisableControls: Boolean = true):
  Integer;
var
  lvField: TField;
  i: Integer;

  lvBookMark: TBookmark;
begin
  lvField := pvDataSet.FindField(pvSNFieldName);
  if lvField = nil then raise Exception.CreateFmt('�Ҳ���%s����ֶ�', [pvSNFieldName]);

  if pvDisableControls then lvBookMark := TDataSetTools.DisableControlsAndGetBookMark(pvDataSet);
  try
    pvDataSet.First;
    if pvCurrent = -1 then
      i := 0
    else
      i := pvCurrent;
    while not pvDataSet.Eof do
    begin
      if pvCurrent = -1 then //��ȡ������
      begin
        i := Max(lvField.AsInteger, i);
      end else if (lvField.AsInteger > pvCurrent) then
      begin //��ȡ��С����Current����
        if i = pvCurrent then i := lvField.AsInteger
        else i := Min(lvField.AsInteger, i);
      end;
      pvDataSet.Next;
    end;

    if pvCurrent = -1 then inc(i);
    Result := i;
  finally
    if pvDisableControls then TDataSetTools.EnableControlsAndFreeBookMark(pvDataSet, lvBookMark);
  end;
end;

class function TSNTools.GetPriorSNIndex(pvDataSet: TDataSet; pvSNFieldName:
    string; pvCurrent: Integer = -1; pvDisableControls: Boolean = true):
    Integer;
var
  lvField: TField;
  i: Integer;

  lvBookMark: TBookmark;
begin
  lvField := pvDataSet.FindField(pvSNFieldName);
  if lvField = nil then raise Exception.CreateFmt('�Ҳ���%s����ֶ�', [pvSNFieldName]);

  if pvDisableControls then lvBookMark := TDataSetTools.DisableControlsAndGetBookMark(pvDataSet);
  try
    pvDataSet.First;
    if pvCurrent = -1 then
    begin
      i := lvField.AsInteger;
      pvDataSet.Next;
    end else
    begin
      i := pvCurrent;
    end;
    while not pvDataSet.Eof do
    begin
      if pvCurrent = -1 then //��ȡ��С����
      begin
        i := Min(lvField.AsInteger, i);
      end else if (lvField.AsInteger < pvCurrent) then
      begin //��ȡ����С��Current����
        if i = pvCurrent then i := lvField.AsInteger
        else i := Max(lvField.AsInteger, i);
      end;
      pvDataSet.Next;
    end;
    Result := i;
  finally
    if pvDisableControls then TDataSetTools.EnableControlsAndFreeBookMark(pvDataSet, lvBookMark);
  end;
end;

class procedure TSNTools.MoveDown(pvDataSet: TClientDataSet; pvSNFieldName:
  string);
var
  lvField: TField;
  i, lvNext: Integer;

  lvBookMark: TBookmark;
begin
  lvField := pvDataSet.FindField(pvSNFieldName);
  if lvField = nil then raise Exception.CreateFmt('�Ҳ���%s����ֶ�', [pvSNFieldName]);

  i := lvField.AsInteger;

  lvBookMark := TDataSetTools.DisableControlsAndGetBookMark(pvDataSet);
  try 
    //��һ��
    lvNext := GetNextSNIndex(pvDataSet, pvSNFieldName, i, False);

    if lvNext > i then //����һ��
    begin
      pvDataSet.First;
      while not pvDataSet.Eof do
      begin
        if lvField.AsInteger = lvNext then
        begin
          pvDataSet.Edit;
          lvField.AsInteger := i;
          pvDataSet.Post;
        end;
        pvDataSet.Next;
      end;
    end;
  finally
    TDataSetTools.EnableControlsAndFreeBookMark(pvDataSet, lvBookMark);
    pvDataSet.Edit;
    lvField.AsInteger := lvNext;
    pvDataSet.Post;
  end;
end;

class procedure TSNTools.MoveUp(pvDataSet: TClientDataSet;
  pvSNFieldName: string);
var
  lvField: TField;
  i, lvPrior: Integer;

  lvBookMark: TBookmark;
begin
  lvField := pvDataSet.FindField(pvSNFieldName);
  if lvField = nil then raise Exception.CreateFmt('�Ҳ���%s����ֶ�', [pvSNFieldName]);

  i := lvField.AsInteger;

  lvBookMark := TDataSetTools.DisableControlsAndGetBookMark(pvDataSet);
  try 
    //��һ��
    lvPrior := GetPriorSNIndex(pvDataSet, pvSNFieldName, i, False);

    if lvPrior < i then //����һ��
    begin
      pvDataSet.First;
      while not pvDataSet.Eof do
      begin
        if lvField.AsInteger = lvPrior then
        begin
          pvDataSet.Edit;
          lvField.AsInteger := i;
          pvDataSet.Post;
        end;
        pvDataSet.Next;
      end;
    end;
  finally
    TDataSetTools.EnableControlsAndFreeBookMark(pvDataSet, lvBookMark);
    pvDataSet.Edit;
    lvField.AsInteger := lvPrior;
    pvDataSet.Post;
  end;
end;

class procedure TSNTools.ReCreateSNIndex(pvDataSet: TDataSet; pvSNFieldName:
    string; pvKeyField: String = '');
var
  lvField, lvKeyField: TField;
  i: Integer;
  lvBookMark: TBookmark;
  lvKeyList:TStrings;
begin
  lvField := pvDataSet.FindField(pvSNFieldName);
  if lvField = nil then raise Exception.CreateFmt('�Ҳ���%s����ֶ�', [pvSNFieldName]);

  lvBookMark := TDataSetTools.DisableControlsAndGetBookMark(pvDataSet);
  try

    if pvKeyField <> '' then
    begin               //����������λ����
      lvKeyField := pvDataSet.FindField(pvKeyField);
      if lvKeyField = nil then raise Exception.CreateFmt('�Ҳ���ָ��������%s�ֶ�', [pvKeyField]);
      lvKeyList := TStringList.Create;
      try
        pvDataSet.First;
        while not pvDataSet.Eof do
        begin
          lvKeyList.Add(lvKeyField.AsString);
          pvDataSet.Next;
        end;


        for i := 0 to lvKeyList.Count - 1 do
        begin
         if pvDataSet.Locate(pvKeyField, lvKeyList[i], []) then
         begin
           pvDataSet.Edit;
           lvField.AsInteger := i + 1;
           pvDataSet.Post;
         end;
        end;
      finally
        lvKeyList.Free;
      end;             
    end else
    begin
      i := 1;
      while not pvDataSet.Eof do
      begin
        pvDataSet.Edit;
        lvField.AsInteger := i;
        pvDataSet.Post;
        inc(i);
        pvDataSet.Next;
      end;
    end;
  finally
    TDataSetTools.EnableControlsAndFreeBookMark(pvDataSet, lvBookMark);
  end;
end;

end.

