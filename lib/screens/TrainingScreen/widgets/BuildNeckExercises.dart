part of 'TrainingWidgetsImports.dart';

class BuildNeckExercises extends StatelessWidget {
  const BuildNeckExercises({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TrainingModel().neckExercisesModel == null || TrainingModel().neckExercisesModel.isEmpty ?
    Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(Res.noExercises),
          const SizedBox(
            height: 15,
          ),
          CustomText(
            title: 'لم يتم العثور على تمارين',
            color: AppColors.formBgColor,
            fontWeight: FontWeight.bold,
          )
        ],
      ),
    )
        :ListView.builder(
        itemCount: TrainingModel().neckExercisesModel.length,
        itemBuilder: (context,i)=>InkWell(
          onTap: (){},
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              color: AppColors.white,
              border: Border(
                bottom: BorderSide(
                  color: AppColors.formBgColor,
                  width: 1,
                ),
              ),
            ),
            child: Row(
              children: [
                Image.asset(Res.bicepsExercises),
                const SizedBox(
                  width: 15,
                ),
                CustomText(
                  title: TrainingModel().neckExercisesModel[i],
                  size: 12,
                  fontWeight: FontWeight.bold,
                )
              ],
            ),
          ),
        )
    );
  }
}
