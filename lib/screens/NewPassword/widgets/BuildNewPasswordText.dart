part of'NewPasswordWidgetsImports.dart';

class BuildNewPasswordText extends StatelessWidget {
  const BuildNewPasswordText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomText(
      title: 'إنشاء كلمة مرور جديدة',
      size: 18,
      fontWeight: FontWeight.w900,
      align: TextAlign.center,
    );
  }
}
