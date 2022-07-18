part of 'UserHomeWidgetsImports.dart';

class BuildTodayExercisesCard extends StatelessWidget {
  const BuildTodayExercisesCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          title: 'تمارين اليوم',
          color: AppColors.primary,
          fontWeight: FontWeight.bold,
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 200,
          child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(Res.todayTrainingCard),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomText(
                      title: 'اليوم راحة ريح جسمك و نام زين',
                      size: 14,
                      color: AppColors.formBgColor,
                      align: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    CustomText(
                      title: 'راحة من التمرين مو الاكل',
                      size: 12,
                      color: AppColors.formBgColor,
                      align: TextAlign.center,
                    ),
                  ],
                ),
              )
          ),
        )
      ],
    );
  }
}
