part of 'PayingWidgetsImports.dart';

class BuildPayingCircleAvatar extends StatelessWidget {
  const BuildPayingCircleAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        NewAccStepCircleAvatar(
          color: AppColors.primary,
          title: 'تسجيل',
          child: Icon(Icons.done,size: 40,color: AppColors.white,),
          textColor: AppColors.primary,
        ),
        NewAccStepCircleAvatar(
          color: AppColors.primary,
          title: 'بياناتي',
          child: Icon(Icons.done,size: 40,color: AppColors.white,),
          textColor: AppColors.primary,
        ),
        NewAccStepCircleAvatar(
          color: AppColors.primary,
          title: 'أختياراتي',
          child: Icon(Icons.done,size: 40,color: AppColors.white,),
          textColor: AppColors.primary,
        ),
        NewAccStepCircleAvatar(
          color: AppColors.primary,
          title: 'الباقات',
          child: Icon(Icons.done,size: 40,color: AppColors.white,),
          textColor: AppColors.primary,
        ),
        NewAccStepCircleAvatar(
          color: AppColors.primary,
          title: 'الدفع',
          child: Icon(Icons.done,size: 40,color: AppColors.white,),
          textColor: AppColors.primary,
        ),

      ],
    );
  }
}

