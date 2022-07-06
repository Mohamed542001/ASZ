part of 'LoginWidgetsImports.dart';

class BuildNotHaveAcc extends StatelessWidget {
  const BuildNotHaveAcc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: ()=>Navigator.push(
          context,
          MaterialPageRoute(builder: (_)=>const NewAccount()),
        ),
        child: CustomText(
          title: 'ليس لديك حساب؟ أنشاء حساب جديد',
          fontWeight: FontWeight.w900,
          size: 14,
          decoration: TextDecoration.underline,
        )
    );
  }
}
