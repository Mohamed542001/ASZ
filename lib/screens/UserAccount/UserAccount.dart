part of 'UserAccountImports.dart';

class UserAccount extends StatelessWidget {
  const UserAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers:
        [
          const BuildUserAccAppBar(),
          SliverList(
            delegate: SliverChildListDelegate(
                [
                  Container(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          child: const UserAccButton(),
                        ),
                        const UserAccForm(),
                      ],
                    ),
                  ),
                ]
            ),
          ),
        ],
      ),
    );
  }
}
