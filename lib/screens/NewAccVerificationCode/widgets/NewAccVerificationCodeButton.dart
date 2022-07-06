part of 'NewAccVerifyCodeWidgetsImports.dart';

class NewAccVerificationCodeButton extends StatelessWidget {
  const NewAccVerificationCodeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultButton(
      onTap: ()=>Navigator.push(
        context,
        MaterialPageRoute(builder: (_)=>const NewAccDetails()),
      ),
      margin: const EdgeInsets.all(0),
      title: 'إعادة تعيين',
      textColor: AppColors.white,
    );
  }
}
