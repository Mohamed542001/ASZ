part of 'LoginWidgetsImports.dart';

class BuildLoginButton extends StatelessWidget {
  const BuildLoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultButton(
      title: 'تسجيل الدخول',
      textColor: AppColors.white,
      onTap: (){},
      margin: const EdgeInsets.all(0),
    );
  }
}
