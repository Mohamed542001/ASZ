part of 'LoginWidgetsImports.dart';

class BuildLoginAsVisitor extends StatelessWidget {
  const BuildLoginAsVisitor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: (){},
      child: CustomText(
        title: 'الدخول كزائر',
        color: AppColors.primary,
        decoration: TextDecoration.underline,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
