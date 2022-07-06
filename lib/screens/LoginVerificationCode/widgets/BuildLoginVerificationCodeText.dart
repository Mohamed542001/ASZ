part of 'LoginVerificationCodeWidgetsImports.dart';

class BuildLoginVerificationCodeText extends StatelessWidget {
  const BuildLoginVerificationCodeText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomText(
      title: 'ادخل الكود الخاص بك',
      size: 18,
      fontWeight: FontWeight.w900,
      align: TextAlign.center,
    );
  }
}
