part of 'UserAccountWidgetsImports.dart';

class UserAccButton extends StatelessWidget {
  const UserAccButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultButton(
      width: 80,
      height: 35,
      onTap: ()=>Navigator.push(
        context,
        MaterialPageRoute(builder: (_)=>const EditUserAccount()),
      ),
      margin: const EdgeInsets.all(0),
      title: 'تعديل',

      textColor: AppColors.white,
    );
  }
}
