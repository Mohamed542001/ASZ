part of 'OnBoarding3WidgetsImports.dart';

class BuildLoginAsVisitor extends StatelessWidget {
  const BuildLoginAsVisitor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: ()=>Navigator.push(
          context,
          MaterialPageRoute(builder: (_)=>const VisitorNavigatorPage()),
        ),
        child: CustomText(
          title: 'الدخول كزائر',
          color: AppColors.primary,
          decoration: TextDecoration.underline,
          fontWeight: FontWeight.bold,
        ),
    );
  }
}
