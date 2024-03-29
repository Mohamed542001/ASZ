part of 'LoginWidgetsImports.dart';

class BuildForgetPassword extends StatelessWidget {
  const BuildForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topRight,
      child: TextButton(
          onPressed: ()=>Navigator.push(
            context,
            MaterialPageRoute(builder: (_)=>const ForgetPassword()),
          ),
          child: CustomText(
            title: 'نسيت كلمة المرور؟',
            fontWeight: FontWeight.w900,
            size: 12,
            decoration: TextDecoration.underline,
          )
      ),
    );
  }
}
