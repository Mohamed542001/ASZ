part of 'ForgetPasswordWidgetsImports.dart';

class BuildForgetPasswordText extends StatelessWidget {
  const BuildForgetPasswordText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomText(
        title: 'استرجاع كلمة المرور',
        size: 18,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
