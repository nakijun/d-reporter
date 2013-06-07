unit uIReporter;

interface

uses
  uIFileAccess, StdInterface;


type
  IReportConsole = interface;

  /// <summary>
  ///    ����Ĭ�ϲ����ӿ�
  /// </summary>
  IReporterDefaultOperator = interface(IInterface)
    ['{E2AE8588-8400-4833-953F-E3347784D93E}']

    //����Ĭ�ϵı���
    procedure setDefault(pvCatalogID, pvID:PAnsiChar);stdcall;//����Ĭ�ϱ���

    //��ȡĬ�ϵı�����ʽ
    function getDefault(pvCatalogID:PAnsiChar):PAnsiChar;stdcall;
  end;

  IReporterDefaultOperatorSetter = interface(IInterface)
    ['{1093C31E-9FD7-463B-9101-8DEC7C1661D8}']
    procedure setReporterDefaultOperator(pvIntf:IReporterDefaultOperator);stdcall;
  end;

  //����ӿ�
  IReporter = interface(IInterface)
    ['{0FC68D26-DACC-4C42-BA5A-B2810FB9F0D2}']

    //�иı�ʱ����true
    function Design: Boolean; stdcall;

    procedure Preview; stdcall;

    procedure Print; stdcall;

    //������ƺõı����ļ�ģ�� 
    procedure setDesignFile(pvFile: PAnsiChar); stdcall;

    //���ݶ���Ľӿ��б�
    procedure setDataList(pvIntf: IInterface); stdcall;

    //��������
    procedure setName(pvName:PAnsiChar);stdcall;

    //����
    procedure Clear; stdcall;
  end;


  //�����뵼��(����)
  IReporterIM = interface(IInterface)
    ['{57C68B20-94B2-420B-B08B-90DE777C713C}']
    //����һ������Ĵ���ļ�
    procedure DoImportRepPackFile(pvFile:PAnsiChar);stdcall;

    //���������ļ���һ��·��
    procedure DoReporterExport(pvReportID, pvPath: PAnsiChar; pvProgConsole:
        IProgConsole); stdcall;

    //�ļ������ӿ�
    procedure setFileAccess(const pvIntf: IFileAccess); stdcall;

    procedure FreeReporterIM();stdcall;
  end;


  IReportConsoleSetter = interface(IInterface)
    ['{8D8073A8-5D75-4398-B559-0F9C6C426D7F}']
    procedure setReportConsole(const pvConsole: IReportConsole); stdcall;
  end;

  //��ӡ����̨
  IReportConsole = interface(IInterface)
    ['{F76412E1-1BEE-49C9-9C4F-8047E1D8DC74}']

    //��ӡ����,���뵥�������ID
    procedure Print(pvID:PAnsiChar);stdcall;   //��ӡĬ�ϱ���

    //Ԥ������,���뵥�������ID (��������Ϊ��ֵ,��Ԥ����һ��)
    procedure PreView(pvID:PAnsiChar);stdcall;

    //��Ʊ���,���뵥�������ID (��������Ϊ��ֵ,��Ԥ����һ��)
    procedure Design(pvID: PAnsiChar); stdcall;

    //���ݱ���ID,��ȡһ������ (��������Ϊ��ֵ,��Ԥ����һ��)
    function createReporter(pvID: PAnsiChar): IReporter; stdcall;

    // <summary>
    //   ��ȡ�����б�
    // </summary>
    // <returns>
    // [
    //    {caption:xxx,ID:xxxx},
    //    {caption:xxx,ID:xxxx}
    // ]
    // </returns>
    function getReports: PAnsiChar; stdcall;

    //���汨���ļ�
    function saveFileRes(pvID: PAnsiChar): PAnsiChar; stdcall;

    //��ȡ������Ϣ
    function getReportINfo(pvID:PAnsiChar):PAnsiChar; stdcall;

    //���һ���µı���,������ƺõı���ID
    function DesignNewReport(pvTypeID:PAnsiChar; pvRepName:PAnsiChar):PAnsiChar;stdcall;

    //��ȡ��һ��ID
    function getFirstReporterID():PAnsiChar;stdcall;

    //��ʾ����̨
    procedure ShowConsole();

    //׼������
    procedure Prepare;stdcall;

    //�ͷſ���
    procedure FreeConsole();

    //��������
    procedure setConfig(pvConfig:PAnsiChar);stdcall;
    
    //���ñ����б�ID,���ݸ�IDȥ���ұ����б�
    procedure setReportID(pvReportID:PAnsiChar);stdcall;

    //���ݶ���Ľӿ��б�
    procedure setDataList(const pvIntf: IInterface); stdcall;

    //�ļ������ӿ�
    procedure setFileAccess(const pvIntf: IFileAccess); stdcall;
  end;

  

  //����ע��IReporter��,��ReportConsole��ʹ��
  IReporterFactory = interface(IInterface)
  ['{5E122846-374C-4BF3-B7EC-C8AA62D32793}']
    
    //ע��һ������ӿ�
    procedure registerReporter(pvID, pvCaption: PAnsiChar; const pvReporter:
        IReporter);

    //��ȡһ������ӿ�
    function getReporter(pvID: PAnsiChar): IReporter;


    //ids:['FR','RM'], list:{FR:{ID:"FR","Remark":"FR����"},RM:{ID...}
    function getReporterList:PAnsiChar; stdcall;
  end;
  

  //��ӡ�������û�ȡ
  //��ʱû��ʹ��
  IPrintDATAConfigGetter = interface(IInterface)
   ['{FDD3F8B5-1E56-41A4-9E09-D0377B948C10}']

    /// <summary>
    ///   ��ӡ����ѡ��
    /// </summary>
    /// <returns>
    ///     {
    ///        isAll:true, //��ӡ���м�¼
    ///   }
    /// </returns>
    function getPrintDATAConfig: PAnsiChar; stdcall;
  end;


implementation

end.
