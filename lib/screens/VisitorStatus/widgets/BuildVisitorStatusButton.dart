part of 'VisitorStatusWidgetsImports.dart';

class BuildVisitorStatusButton extends StatelessWidget {
  const BuildVisitorStatusButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultButton(
      onTap:(){},
      // onTap: ()=>Navigator.push(
      //   context,
      //   MaterialPageRoute(builder: (_)=>const Paying()),
      // ),
      margin: const EdgeInsets.all(0),
      title: 'إنشاء حساب',
      textColor: AppColors.white,
    );
  }
}
