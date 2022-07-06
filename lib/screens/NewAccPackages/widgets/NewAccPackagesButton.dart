part of 'NewAccPackagesWidgetsImports.dart';

class NewAccPackagesButton extends StatelessWidget {
  const NewAccPackagesButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultButton(
      onTap: ()=>Navigator.push(
        context,
        MaterialPageRoute(builder: (_)=>const Paying()),
      ),
      margin: const EdgeInsets.all(0),
      title: 'التالي',
      textColor: AppColors.white,
    );
  }
}
