unit uDBIntf;

interface

uses
  DB, superobject;


type
  IDataSetAfterInsert = interface;
  IDataSetGetter = interface(IInterface)
    ['{710743CE-3817-455B-A29C-39B3EA98DE5F}']
    function getDataSet():TDataSet; stdcall;
  end;

  IDataSetSetter = interface(IInterface)
    ['{BCC04843-0DED-4CDD-970F-0B3F2671D9FE}']
    procedure setDataSet(const pvDataSet:TDataSet);stdcall;
  end;

  IDataSetAfterInsertSetter = interface(IInterface)
    ['{0B657C1C-1BB1-468F-919B-B4CBE614F886}']
    procedure setDataSetAfterInsertIntf(const pvValue:IDataSetAfterInsert);stdcall;
  end;


  IDataSourceSetter = interface(IInterface)
    ['{4DFE3BB4-A1A3-432C-917F-C5273EA9D1A2}']
    procedure setDataSource(const pvValue:TDataSource); stdcall;
  end;

  
  IDataSourceGetter = interface(IInterface)
    ['{E1B65B81-B9AC-437C-A99E-69985249DD1E}']
    function getDataSource():TDataSource; stdcall;
  end;

  IReadOnlyOperator = interface(IInterface)
    ['{8E09C8F8-971E-4DB6-BCC7-B0F93AAA23D8}']
    procedure setReadOnly(pvReadOnly:Boolean); stdcall;
  end;

  //���ݿ�����ӿ�
  IDataSetOpera = interface(IInterface)
    ['{57011298-F3D4-43AD-944F-C26FE3D74842}']

    //����ǰ
    procedure BeforeApplyUpdate;stdcall;

    //�Ƿ��޸�
    function IsChange:Boolean; stdcall;

    //�������
    procedure Append;stdcall;

    //ȡ���޸ĵ���ʼ״̬
    procedure Cancel;stdcall;

    //�����������
    function PackageUpdateData:String;stdcall;

    //����
    procedure ApplyUpdate; stdcall;

    //������ݻ�ԭ�ĳ�ʼ״̬(δ�޸ĵ�״̬)
    procedure EmptyData(); stdcall;

    //����ɹ���
    procedure AfterApplyUpdate; stdcall;

    //��
    procedure reOpen();stdcall;
  end;

  IDataSetAfterInsert = interface(IInterface)
    ['{01C53C31-EAB2-4798-BA94-B2893233BC96}']
    procedure DoAfterInsert(const ID: string; pvDataSet: TDataSet; pvConfig:
        ISuperObject); stdcall;
  end;


  //����ˢ��
  IDataRefresh = interface(IInterface)
    ['{4047C1EF-1F5A-4D29-97AA-4E4A14FC191E}']
    //ˢ������, pvJsonData�ǵ�ǰ��¼
    procedure DoRefreshData(pvJSonData:ISuperObject); stdcall;
  end; 




implementation

end.
