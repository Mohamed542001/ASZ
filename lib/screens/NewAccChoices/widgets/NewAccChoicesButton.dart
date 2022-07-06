part of 'NewAccChoicesWidgetsImports.dart';

class NewAccChoicesButton extends StatelessWidget {
  const NewAccChoicesButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultButton(
      onTap: ()=>Navigator.push(
        context,
        MaterialPageRoute(builder: (_)=>const NewAccPackages()),
      ),
      margin: const EdgeInsets.all(0),
      title: 'التالي',
      textColor: AppColors.white,
    );
  }
}
