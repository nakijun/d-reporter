unit uIBarTenderData;

interface

type
  
  /// <summary>
  ///   ֱ�ӻ�ȡBarTender��ӡ����
  ///   ���ʵ���˸ýӿ�������ѡ�����ݽ��д�ӡ
  /// </summary>
  IBarTenderDataGetter = interface(IInterface)
    ['{E101710A-1502-4809-911A-B968FBAE07C9}']

    /// <summary>
    ///   ��ȡBarTenderֱ����Ҫ��ӡ������
    /// </summary>
    /// <returns>
    /// {
    ///    "list":
    ///     [
    ///
    //          {   //һ����¼
    //              fieldname:
    //              {
    //                 "name":fieldname,
    //                 "value":xxx,
    //                 "caption":"���ʱ����",
    //              },
    //              fieldname2:
    //              {
    //                 "name":fieldname2,
    //                 "value":xxx,
    //                 "caption":"���ʱ����",
    //              },
    //          },
    ///         {}
    ///     ]
    /// }
    /// </returns>
    function getBarTenderPrintData: PAnsiChar; stdcall;
  end;

implementation

end.
