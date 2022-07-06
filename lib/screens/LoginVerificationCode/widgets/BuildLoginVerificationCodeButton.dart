part of 'LoginVerificationCodeWidgetsImports.dart';

class BuildLoginVerificationCodeButton extends StatelessWidget {
  const BuildLoginVerificationCodeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultButton(
      onTap: ()=>Navigator.push(
        context,
        MaterialPageRoute(builder: (_)=>const NewPassword()),
      ),
      margin: const EdgeInsets.all(0),
      title: 'إعادة تعيين',
      textColor: AppColors.white,
    );
  }
}
