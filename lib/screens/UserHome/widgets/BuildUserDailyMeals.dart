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
                height: 90,
                child: Card(
                  elevation: 5,
                  child: InkWell(
                    onTap: ()=>UserHomeCubit.get(context).isClicked(),
                    child: ListTile(
                      leading: Image.asset(UserHomeModel().userDailyMeal[0]['image']),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomText(
                                title: UserHomeModel().userDailyMeal[0]['title'],
                                fontWeight: FontWeight.bold,
                              ),
                              const Icon(Icons.keyboard_arrow_down_rounded),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                        UserHomeCubit.get(context).boolCheck[0]?Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomText(
                                title: UserHomeModel().userDailyMeal[0]['txt1'],
                                size: 12,
                                fontWeight: FontWeight.w100,
                              ),
                              CustomText(
                                title: UserHomeModel().userDailyMeal[0]['txt2'],
                                size: 12,
                                fontWeight: FontWeight.w100,
                              ),
                              CustomText(
                                title: UserHomeModel().userDailyMeal[0]['txt3'],
                                size: 12,
                                fontWeight: FontWeight.w100,
                              ),
                            ],
                          ):Container()
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Step(
              isActive: true,
              title: const Text(''),
              content: SizedBox(
                height: 90,
                child: Card(
                  elevation: 5,
                  child: InkWell(
                    onTap: ()=>UserHomeCubit.get(context).isClicked1(),
                    child: ListTile(
                      leading: Image.asset(UserHomeModel().userDailyMeal[1]['image']),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomText(
                                title: UserHomeModel().userDailyMeal[1]['title'],
                                fontWeight: FontWeight.bold,
                              ),
                              const Icon(Icons.keyboard_arrow_down_rounded),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          UserHomeCubit.get(context).boolCheck[1]?Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomText(
                                title: UserHomeModel().userDailyMeal[1]['txt1'],
                                size: 12,
                                fontWeight: FontWeight.w100,
                              ),
                              CustomText(
                                title: UserHomeModel().userDailyMeal[1]['txt2'],
                                size: 12,
                                fontWeight: FontWeight.w100,
                              ),
                              CustomText(
                                title: UserHomeModel().userDailyMeal[1]['txt3'],
                                size: 12,
                                fontWeight: FontWeight.w100,
                              ),
                            ],
                          ):Container()
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Step(
              isActive: true,
              title: const Text(''),
              content: SizedBox(
                height: 90,
                child: Card(
                  elevation: 5,
                  child: InkWell(
                    onTap: ()=>UserHomeCubit.get(context).isClicked2(),
                    child: ListTile(
                      leading: Image.asset(UserHomeModel().userDailyMeal[2]['image']),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomText(
                                title: UserHomeModel().userDailyMeal[2]['title'],
                                fontWeight: FontWeight.bold,
                              ),
                              const Icon(Icons.keyboard_arrow_down_rounded),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          UserHomeCubit.get(context).boolCheck[2]?Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomText(
                                title: UserHomeModel().userDailyMeal[2]['txt1'],
                                size: 12,
                                fontWeight: FontWeight.w100,
                              ),
                              CustomText(
                                title: UserHomeModel().userDailyMeal[2]['txt2'],
                                size: 12,
                                fontWeight: FontWeight.w100,
                              ),
                              CustomText(
                                title: UserHomeModel().userDailyMeal[2]['txt3'],
                                size: 12,
                                fontWeight: FontWeight.w100,
                              ),
                            ],
                          ):Container()
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Step(
              isActive: true,
              title: const Text(''),
              content: SizedBox(
                height: 90,
                child: Card(
                  elevation: 5,
                  child: InkWell(
                    onTap: ()=>UserHomeCubit.get(context).isClicked3(),
                    child: ListTile(
                      leading: Image.asset(UserHomeModel().userDailyMeal[3]['image']),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomText(
                                title: UserHomeModel().userDailyMeal[3]['title'],
                                fontWeight: FontWeight.bold,
                              ),
                              const Icon(Icons.keyboard_arrow_down_rounded),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          UserHomeCubit.get(context).boolCheck[3]?Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomText(
                                title: UserHomeModel().userDailyMeal[3]['txt1'],
                                size: 12,
                                fontWeight: FontWeight.w100,
                              ),
                              CustomText(
                                title: UserHomeModel().userDailyMeal[0]['txt2'],
                                size: 12,
                                fontWeight: FontWeight.w100,
                              ),
                              CustomText(
                                title: UserHomeModel().userDailyMeal[0]['txt3'],
                                size: 12,
                                fontWeight: FontWeight.w100,
                              ),
                            ],
                          ):Container()
                        ],
                      ),
                    ),
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
