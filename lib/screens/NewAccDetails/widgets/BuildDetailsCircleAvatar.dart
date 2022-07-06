part of 'DetailsWidgetsImports.dart';

class BuildDetailsCircleAvatar extends StatelessWidget {
  const BuildDetailsCircleAvatar({Key? key}) : super(key: key);

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
        const NewAccStepCircleAvatar(
          title: 'أختياراتي',
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
