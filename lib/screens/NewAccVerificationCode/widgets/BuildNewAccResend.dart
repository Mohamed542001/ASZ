part of 'NewAccVerifyCodeWidgetsImports.dart';

class BuildNewAccResend extends StatelessWidget {
  const BuildNewAccResend({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: (){},
      child: CustomText(
        title: 'إعادة ارسال',
        size: 14,
        color: AppColors.primary,
        decoration: TextDecoration.underline,
      ),
    );
  }
}
