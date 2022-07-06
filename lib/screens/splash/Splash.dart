part of 'SplashImports.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashScreen> {

  _navigateToHome() async{
    await Future.delayed(const Duration(milliseconds: 1500),(){});
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (_)=>const OnBoarding1()),
          (route) => false,
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigateToHome();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.primary  ,
        width: double.infinity,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                Res.splashLogo,
                width: double.infinity,
                height: 80,
              ),
              const SizedBox(
                height: 55,
              ),
              CustomText(
                title:'خطة مدرب و التزام لاعب',
                size: 26,
                color: AppColors.white,
                fontWeight: FontWeight.w900,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
