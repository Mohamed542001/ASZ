part of 'OnBoarding2Imports.dart';

class OnBoarding2 extends StatelessWidget {
  const OnBoarding2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.white,
        margin: const EdgeInsets.all(15),
        child: Center(
          child: SingleChildScrollView(
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    OnBoarding2Image(),
                    SizedBox(
                      height: 50,
                    ),
                    OnBoarding2Text(),
                    SizedBox(
                      height: 60,
                    ),
                    OnBoarding2Buttons()
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
