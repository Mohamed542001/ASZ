part of 'UserHomeWidgetsImports.dart';

class BuildUserDailyMeals extends StatefulWidget {
  const BuildUserDailyMeals({Key? key}) : super(key: key);

  @override
  State<BuildUserDailyMeals> createState() => _BuildUserDailyMealsState();
}

class _BuildUserDailyMealsState extends State<BuildUserDailyMeals> {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context)=>UserHomeCubit(),
      child: BlocConsumer<UserHomeCubit,UserHomeStates>(
        listener: (context, state) {},
        builder: (context,state)=>Stepper(

          physics: const NeverScrollableScrollPhysics(),
          controlsBuilder: (context, c) {
            return Row(
              children: <Widget>[
                Container(),
                Container(),
              ],
            );
          },
          currentStep: UserHomeCubit.get(context).index[0],
          onStepTapped: (int index)=>UserHomeCubit.get(context).isTapped(index),
          steps: <Step>[
            Step(
              isActive: true,
              title: const Text(''),
              content: SizedBox(
                height: 150,
                child: Card(
                  margin: const EdgeInsets.only(bottom: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  elevation: 10,
                  child: ExpansionTile(
                    title: Row(
                      children: [
                        Image.asset(UserHomeModel().userDailyMeal[0]['image']),
                        CustomText(
                          title: UserHomeModel().userDailyMeal[0]['title'],
                          fontWeight: FontWeight.bold,
                        ),
                      ],
                    ),
                    iconColor: AppColors.primary,
                    childrenPadding: const EdgeInsets.all(15),
                    children: [
                      CustomText(
                        title: '${UserHomeModel().userDailyMeal[0]['txt1']}\n${UserHomeModel().userDailyMeal[1]['txt2']}\n${UserHomeModel().userDailyMeal[1]['txt3']}',
                        size: 12,
                        fontWeight: FontWeight.w100,
                        align: TextAlign.start,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Step(
              isActive: true,
              title: const Text(''),
              content: SizedBox(
                height: 150,
                child: Card(
                  margin: const EdgeInsets.only(bottom: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  elevation: 10,
                  child: ExpansionTile(
                    title: Row(
                      children: [
                        Image.asset(UserHomeModel().userDailyMeal[1]['image']),
                        CustomText(
                          title: UserHomeModel().userDailyMeal[1]['title'],
                          fontWeight: FontWeight.bold,
                        ),
                      ],
                    ),
                    iconColor: AppColors.primary,
                    childrenPadding: const EdgeInsets.all(15),
                    children: [
                      CustomText(
                        title: '${UserHomeModel().userDailyMeal[1]['txt1']}\n${UserHomeModel().userDailyMeal[1]['txt2']}\n${UserHomeModel().userDailyMeal[1]['txt3']}',
                        size: 12,
                        fontWeight: FontWeight.w100,
                        align: TextAlign.start,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Step(
              isActive: true,
              title: const Text(''),
              content: SizedBox(
                height: 150,
                child: Card(
                  margin: const EdgeInsets.only(bottom: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  elevation: 10,
                  child: ExpansionTile(
                    title: Row(
                      children: [
                        Image.asset(UserHomeModel().userDailyMeal[2]['image']),
                        CustomText(
                          title: UserHomeModel().userDailyMeal[2]['title'],
                          fontWeight: FontWeight.bold,
                        ),
                      ],
                    ),
                    iconColor: AppColors.primary,
                    childrenPadding: const EdgeInsets.all(15),
                    children: [
                      CustomText(
                        title: '${UserHomeModel().userDailyMeal[2]['txt1']}\n${UserHomeModel().userDailyMeal[1]['txt2']}\n${UserHomeModel().userDailyMeal[1]['txt3']}',
                        size: 12,
                        fontWeight: FontWeight.w100,
                        align: TextAlign.start,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Step(
              isActive: true,
              title: const Text(''),
              content: SizedBox(
                height: 150,
                child: Card(
                  margin: const EdgeInsets.only(bottom: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  elevation: 10,
                  child: ExpansionTile(
                    title: Row(
                      children: [
                        Image.asset(UserHomeModel().userDailyMeal[3]['image']),
                        CustomText(
                          title: UserHomeModel().userDailyMeal[3]['title'],
                          fontWeight: FontWeight.bold,
                        ),
                      ],
                    ),
                    iconColor: AppColors.primary,
                    childrenPadding: const EdgeInsets.all(15),
                    children: [
                      CustomText(
                        title: '${UserHomeModel().userDailyMeal[3]['txt1']}\n${UserHomeModel().userDailyMeal[1]['txt2']}\n${UserHomeModel().userDailyMeal[1]['txt3']}',
                        size: 12,
                        fontWeight: FontWeight.w100,
                        align: TextAlign.start,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      );
  }
}
