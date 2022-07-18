part of 'EditUserAccountImports.dart';

class EditUserAccount extends StatelessWidget {
  const EditUserAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers:
        [
          const EditUserAccountAppBar(),
          SliverList(
            delegate: SliverChildListDelegate(
                [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15,vertical:30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        EditUserAccountForm(),
                        SizedBox(
                          height: 15,
                        ),
                        EditUserAccountDate(),
                        SizedBox(
                          height: 10,
                        ),
                        EditUserAccountGender(),
                        SizedBox(
                          height: 55,
                        ),
                        EditUserAccButton(),
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
