part of 'OnBoarding1WidgetsImports.dart';

class OnBoarding1Buttons extends StatelessWidget {
  const OnBoarding1Buttons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultButton(
          onTap: ()=>Navigator.push(
            context,
            MaterialPageRoute(builder: (_)=>const OnBoarding2()),
          ),
          title: 'التالي',
          textColor: AppColors.white,
          textFontWeight: FontWeight.bold,
          margin: const EdgeInsets.all(0),
        ),
        const SizedBox(
          height: 20,
        ),
        DefaultButton(
          onTap: ()=>Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (_)=>const Login()),
                (route) => false,
          ),
          title: 'تخطي',
          color: AppColors.white,
          borderColor: AppColors.buttonBorderColor,
          textFontWeight: FontWeight.bold,
          margin: const EdgeInsets.all(0),
        ),
      ],
    );
  }
}
