part of 'UserStatusImports.dart';

class UserStatus extends StatelessWidget {
  const UserStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: CustomScrollView(
        slivers:
        [
          const BuildUserStatusAppBar(),
          SliverList(delegate: SliverChildListDelegate(
              [
                Container(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: const[
                      BuildCurrentStatus(),
                      SizedBox(
                        height: 15,
                      ),
                      BuildPlanCards(),

                    ],
                  ),
                )
              ]
          )),
        ],
      ),
    );
  }
}
