part of 'DetailsWidgetsImports.dart';

class BuildDetailsButton extends StatelessWidget {
  const BuildDetailsButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultButton(
      onTap: ()=>Navigator.push(
        context,
        MaterialPageRoute(builder: (_)=>const NewAccChoices()),
      ),
      margin: const EdgeInsets.all(0),
      title: 'التالي',
      textColor: AppColors.white,
    );
  }
}
