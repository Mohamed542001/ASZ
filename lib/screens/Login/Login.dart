part of 'LoginImports.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.white,
        width: double.infinity,
        padding: const EdgeInsets.all(15),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children:const [
                HeaderLogo(),
                SizedBox(
                  height: 85,
                ),
                BuildLoginText(),
                SizedBox(
                  height: 20,
                ),
                BuildLoginForm(),
                BuildForgetPassword(),
                SizedBox(
                  height: 40,
                ),
                BuildLoginButton(),
                SizedBox(
                  height: 30,
                ),
                BuildNotHaveAcc(),
                SizedBox(
                  height: 30,
                ),
                BuildLoginAsVisitor()

              ],
            ),
          ),
        ),
      ),

    );
  }
}
