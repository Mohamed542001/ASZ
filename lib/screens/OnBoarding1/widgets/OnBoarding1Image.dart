part of 'OnBoarding1WidgetsImports.dart';

class OnBoarding1Image extends StatelessWidget {
  const OnBoarding1Image({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      Res.onboarding_01,
      width: double.infinity,
      height: 240,
    );
  }
}
