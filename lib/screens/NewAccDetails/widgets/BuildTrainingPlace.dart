part of 'DetailsWidgetsImports.dart';

class BuildTrainingPlace extends StatelessWidget {
  const BuildTrainingPlace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          title: 'مكان تمرينك',
          size: 14,
          fontWeight: FontWeight.w900,
        ),
        const SizedBox(
          height: 15,
        ),
        BlocProvider(
          create: (context)=>NewAccDetailsCubit(),
          child: BlocConsumer<NewAccDetailsCubit,NewAccDetailsStates>(
              listener: (context,state){},
              builder: (context,state)=>GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                ),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 2,
                itemBuilder: (context,i)=>InkWell(
                  onTap: ()=>NewAccDetailsCubit.get(context).isBoolChecked1(i),
                  child: Container(
                    height: 100,
                    width: 85,
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color:NewAccDetailsCubit.get(context).boolCheck[i]? AppColors.primary:AppColors.formBgColor),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          NewAccDetailsModel().trainingPlaceModel[i]['image'],
                          color: NewAccDetailsCubit.get(context).boolCheck[i]? AppColors.primary:AppColors.formBgColor,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        CustomText(
                          title: '${NewAccDetailsModel().trainingPlaceModel[i]['text']}',
                          color: NewAccDetailsCubit.get(context).boolCheck[i]? AppColors.primary:AppColors.formBgColor,
                          align: TextAlign.center,
                          size: 14,
                        )
                      ],
                    ),
                  ),
                ),
              )
            //     Row(
            //   children: [
            //     InkWell(
            //       onTap: (){},
            //       // onTap: ()=>NewAccDetailsCubit.get(context).isBoolChecked(i),
            //       child: Container(
            //         height: 100,
            //         width: 100,
            //         padding: const EdgeInsets.all(5),
            //         decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(10),
            //           border: Border.all(color: AppColors.primary),
            //         ),
            //         child: Column(
            //           mainAxisAlignment: MainAxisAlignment.center,
            //           crossAxisAlignment: CrossAxisAlignment.center,
            //           children: [
            //             Image.asset(Res.loseWeight),
            //             const SizedBox(
            //               height: 5,
            //             ),
            //             CustomText(
            //               title: 'خسارة الوزن و الدهون',
            //               color: AppColors.primary,
            //               align: TextAlign.center,
            //             )
            //           ],
            //         ),
            //       ),
            //     ),
            //     const SizedBox(
            //       width: 10,
            //     ),
            //     InkWell(
            //       onTap: (){},
            //       // onTap: ()=>NewAccDetailsCubit.get(context).isBoolChecked(i),
            //       child: Container(
            //         padding: const EdgeInsets.all(5),
            //         height: 100,
            //         width: 100,
            //         decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(10),
            //           border: Border.all(color: AppColors.primary),
            //         ),
            //         child: Column(
            //           mainAxisAlignment: MainAxisAlignment.center,
            //           crossAxisAlignment: CrossAxisAlignment.center,
            //           children: [
            //             Image.asset(Res.loseWeight),
            //             const SizedBox(
            //               height: 5,
            //             ),
            //             CustomText(
            //               title: 'خسارة الوزن و الدهون',
            //               color: AppColors.primary,
            //               align: TextAlign.center,
            //             )
            //           ],
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
          ),
        ),
      ],
    );
  }
}
