part of 'NewAccountWidgetsImports.dart';


class BuildNewAccButton extends StatelessWidget {
  const BuildNewAccButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultButton(
      onTap: ()=>Navigator.push(
        context,
        MaterialPageRoute(builder: (_)=>const NewAccVerificationCode()),
      ),
      margin: const EdgeInsets.all(0),
      title: 'التالي',
      textColor: AppColors.white,
    );
  }
}
