import 'package:asz/res.dart';

class NewAccDetailsModel{
  List activity=[
    'غير نشيط',
    'متوسط',
    'نشيط',
    'نشيط جدا',
  ];

  List aimModel = [
    {
      'text' : 'خسارة الوزن و الدهون',
      'image' : Res.loseWeight
    },
    {
      'text' : 'زيادة الكتلة العضلية و الوزن',
      'image' : Res.massIncrease
    }
  ];
  List trainingPlaceModel = [
    {
      'text' : 'النادي',
      'image' : Res.club
    },
    {
      'text' : 'المنزل',
      'image' : Res.home
    }
  ];
}