part of 'OnBoarding3WidgetsImports.dart';

class OnBoarding3Buttons extends StatelessWidget {
  const OnBoarding3Buttons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultButton(
          onTap: ()=>Navigator.push(
            context,
            MaterialPageRoute(builder: (_)=>const NewAccount()),
          ),
          title: 'إنشاء حساب جديد',
          textColor: AppColors.white,
          textFontWeight: FontWeight.bold,
          margin: const EdgeInsets.all(0),
        ),
        const SizedBox(
          height: 20,
        ),
        DefaultButton(
          onTap: ()=>Navigator.push(
            context,
            MaterialPageRoute(builder: (_)=>const Login()),
          ),
          title: 'تسجيل الدخول',
          color: AppColors.white,
          borderColor: AppColors.buttonBorderColor,
          textFontWeight: FontWeight.bold,
          margin: const EdgeInsets.all(0),
        ),
      ],
    );
  }
}
