part of 'UserHomeImports.dart';

class UserHome extends StatefulWidget {
  const UserHome({Key? key}) : super(key: key);

  @override
  State<UserHome> createState() => _UserHomeState();
}

class _UserHomeState extends State<UserHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers:
        [
          const BuildUserHomeAppBar(),
          SliverFillRemaining(
            child: Container(
              padding: const EdgeInsets.all(15),
              child: ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children:  const [
                  BuildUserDate(),
                  BuildUserDaysCard(),
                  SizedBox(
                    height: 15,
                  ),
                  BuildUserSendUpdate(),
                  SizedBox(
                    height: 20,
                  ),
                  BuildUserDailyMeals(),
                  // BuildTodayExercisesCard(),



                ],
              ),
            ),
          )
        ],
      ),
    );

  }
}
