part of 'NewAccChoicesWidgetsImports.dart';

class BuildChoicesCircleAvatar extends StatelessWidget {
  const BuildChoicesCircleAvatar({Key? key}) : super(key: key);

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
        const NewAccStepCircleAvatar(
          title: 'الباقات',
        ),
        const NewAccStepCircleAvatar(
          title: 'الدفع',
        ),

      ],
    );
  }
}
