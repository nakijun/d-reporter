unit StdInterface;
{
    ��׼�Ľӿ�,
    ���Բ��ô������еĽӿ�
}

interface


type
  //JSonString��ȡ
  IJSonConfigStringGetter = interface(IInterface)
    ['{0CF8F1E1-7E28-4812-9BD9-BDD128867BCE}']
    function getJSonConfigString: PAnsiChar; stdcall;
  end;

  //JSonStringSetter
  IJSonConfigStringSetter = interface(IInterface)
    ['{C5B50640-E35C-47C2-BC37-CBC7B567248B}']
    procedure setJSonConfigString(const pvValue: PAnsiChar); stdcall;
  end;

  //ִ��׼������
  IPrepare = interface(IInterface)
    ['{D04E4227-D948-4678-83F1-3A82DFB852A6}']
    procedure Prepare; stdcall;
  end;

  //������
  IDebugger = interface(IInterface)
    ['{A9927B16-3599-45EC-97B8-E6F799D75A48}']
    procedure debugInfo(msg: PAnsiChar; level: Integer); stdcall;
  end;




  //������
  IProgConsole = interface(IInterface)
    ['{63CBE456-9534-42F6-8934-16702E92BBCB}']
    //1 ���õ�ǰֵ
    procedure SetPosition(pvPosition: Integer);
    
    //1 //�������ֵ
    procedure SetMax(pvValue: Integer);

    //�Ƿ��Ѿ���ֹ
    function IsBreaked():Boolean;

    //��������
    procedure IncPosition();

    //
    procedure ShowProgressConsole();

    // ���عر�
    procedure HideConsole();

    // �ͷ�
    procedure FreeConsole();

    //������ʾ����
    procedure SetHintText(pvHint:PAnsiChar);
  end;

implementation

end.
