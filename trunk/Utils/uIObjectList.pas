unit uIObjectList;

interface

uses
  uCore;

type
  IObjectList = interface(IInterface)
    ['{B8232E95-C1FE-4EA2-8236-EE1C390F1AEA}']
    procedure Clear; stdcall;
    function CheckGet(pvKey: string; pvRaiseIfNil: Boolean = true): TObject;

    //raiseIfExists false ʱ��������ڣ�����и���
    procedure CheckPut(pvKey: string; const pvValue: TObject; pvRaiseIfExists:
        Boolean = true);
    function GetCount: Integer; stdcall;
    procedure Remove(pvKey: string);
    property Count: Integer read GetCount;
    function GetKeys(pvIndex: Integer): PMyChar; stdcall;
    function GetValues(pvIndex: Integer): TObject; stdcall;

    property Values[pvIndex: Integer]: TObject read GetValues; default;
    property Keys[pvIndex: Integer]: PMyChar read GetKeys;
  end;

implementation

end.

