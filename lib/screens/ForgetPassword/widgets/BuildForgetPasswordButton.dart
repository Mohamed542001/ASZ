part of 'ForgetPasswordWidgetsImports.dart';

class BuildForgetPasswordButton extends StatelessWidget {
  const BuildForgetPasswordButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultButton(
      onTap: ()=>Navigator.push(
        context,
        MaterialPageRoute(builder: (_)=>const LoginVerificationCodeScreen()),
      ),
      margin: const EdgeInsets.all(0),
      title: 'إعادة تعيين',
      textColor: AppColors.white,
    );
  }
}
