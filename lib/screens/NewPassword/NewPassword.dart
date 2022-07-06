part of 'NewPasswordImports.dart';

class NewPassword extends StatelessWidget {
  const NewPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children:const [
                HeaderLogo(),
                SizedBox(
                  height: 80,
                ),
                BuildNewPasswordText(),
                SizedBox(
                  height: 40,
                ),
                BuildNewPasswordForm(),
                SizedBox(
                  height: 40,
                ),
                BuildNewPasswordButton(),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
