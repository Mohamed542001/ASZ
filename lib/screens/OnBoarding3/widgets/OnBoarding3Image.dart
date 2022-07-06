part of 'OnBoarding3WidgetsImports.dart';

class OnBoarding3Image extends StatelessWidget {
  const OnBoarding3Image({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      Res.onboarding_03,
      width: double.infinity,
      height: 240,
    );
  }
}
