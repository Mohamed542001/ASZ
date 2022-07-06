part of 'OnBoarding1Imports.dart';

class OnBoarding1 extends StatelessWidget {
  const OnBoarding1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.white,
        margin: const EdgeInsets.all(15),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                OnBoarding1Image(),
                SizedBox(
                  height: 50,
                ),
                OnBoarding1Text(),
                SizedBox(
                  height: 60,
                ),
                OnBoarding1Buttons()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
