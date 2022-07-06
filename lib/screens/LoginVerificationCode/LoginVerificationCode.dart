part of 'LoginVerificationCodeImports.dart';

class LoginVerificationCodeScreen extends StatelessWidget {
  const LoginVerificationCodeScreen({Key? key}) : super(key: key);

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
                BuildLoginVerificationCodeText(),
                SizedBox(
                  height: 25,
                ),
                BuildLoginPinCode(),
                SizedBox(
                  height: 20,
                ),
                BuildLoginResend(),
                SizedBox(
                  height: 45,
                ),
                BuildLoginVerificationCodeButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

