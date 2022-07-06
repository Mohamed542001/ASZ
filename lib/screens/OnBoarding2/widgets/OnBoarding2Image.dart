part of'OnBoarding2WidgetsImports.dart';

class OnBoarding2Image extends StatelessWidget {
  const OnBoarding2Image({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      Res.onboarding_02,
      width: double.infinity,
      height: 240,
    );
  }
}