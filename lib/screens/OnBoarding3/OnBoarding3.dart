part of 'OnBoarding3Imports.dart';

class OnBoarding3 extends StatelessWidget {
  const OnBoarding3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.white,
        margin: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            OnBoarding3Image(),
            SizedBox(
              height: 50,
            ),
            OnBoarding3Text(),
            SizedBox(
              height: 60,
            ),
            OnBoarding3Buttons(),
            SizedBox(
              height: 25,
            ),
            BuildLoginAsVisitor(),
          ],
        ),
      ),
    );
  }
}
