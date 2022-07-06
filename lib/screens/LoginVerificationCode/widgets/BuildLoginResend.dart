part of 'LoginVerificationCodeWidgetsImports.dart';

class BuildLoginResend extends StatelessWidget {
  const BuildLoginResend({Key? key}) : super(key: key);

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
