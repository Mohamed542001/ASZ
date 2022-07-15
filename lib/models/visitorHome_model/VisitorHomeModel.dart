import 'package:asz/res.dart';

class VisitorHomeModel {
  List trainingModel = [
    {
      'image':Res.Mask1,
      'text':'تمارين الظهر'
    },
    {
      'image':Res.Mask2,
      'text':'تمارين الباي'
    },
    {
      'image':Res.Mask3,
      'text':'تمارين الصدر'
    },
    {
      'image':Res.Mask4,
      'text':'تمارين السواعد'
    },
    {
      'image':Res.Mask5,
      'text':'تمارين الأرجل'
    },
    {
      'image':Res.Mask6,
      'text':'تمارين الأكتاف'
    },
    {
      'image':Res.Mask7,
      'text':'تمارين التراي'
    },
    {
      'image':Res.Mask8,
      'text':'تمارين البطن'
    },
  ];

  List subscriberModel = [
    {
      'before' : Res.bodyBefore1,
      'after' : Res.bodyAfter1,
      'textBefore' : 'قبل',
      'textAfter' : 'بعد',
    },
    {
      'before' : Res.bodyBefore2,
      'after' : Res.bodyAfter2,
      'textBefore' : 'قبل',
      'textAfter' : 'بعد',
    },
  ];
  List subscriberImage = [
    Res.subscriber1,
    Res.subscriber2,
    Res.subscriber1,
    Res.subscriber2,
  ];
}