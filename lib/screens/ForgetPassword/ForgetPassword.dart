part of 'ForgetPasswordImports.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

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
                BuildForgetPasswordText(),
                SizedBox(
                  height: 45,
                ),
                BuildForgetPasswordForm(),
                SizedBox(
                  height: 30,
                ),
                BuildForgetPasswordButton(),
                SizedBox(
                  height: 30,
                ),
                SendCodeText()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
