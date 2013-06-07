unit uIFileAccess;

interface

type
  //�ļ��洢�ӿ�
  IFileAccess = interface(IInterface)
    ['{C69EC3FB-0248-4C54-80CB-6DC11E85C66A}']

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

end.
