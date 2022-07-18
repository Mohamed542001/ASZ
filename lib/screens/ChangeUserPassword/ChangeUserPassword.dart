part of 'ChangeUserPasswordImports.dart';

class ChangeUserPassword extends StatelessWidget {
  const ChangeUserPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers:
        [
          const ChangeUserPasswordAppBar(),
          SliverList(
            delegate: SliverChildListDelegate(
                [
                  Container(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: const [
                        ChangeUserPasswordForm(),
                        SizedBox(
                          height: 40,
                        ),
                        ChangeUserPasswordButtons()
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
