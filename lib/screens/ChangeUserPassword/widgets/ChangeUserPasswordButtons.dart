part of 'ChangeUserPasswordWidgetsImports.dart';

class ChangeUserPasswordButtons extends StatelessWidget {
  const ChangeUserPasswordButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultButton(
          title: 'حفظ',
          textColor: AppColors.white,
          onTap: (){},
          // onTap: ()=>Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (_)=>const UserNavigatorPage()),
          // ),
          margin: const EdgeInsets.all(0),
        ),
        const SizedBox(
          height: 15,
        ),
        DefaultButton(
          title: 'إلغاء',
          color: AppColors.white,
          borderColor: AppColors.textColor,
          onTap: ()=>Navigator.of(context).pop(),
          margin: const EdgeInsets.all(0),
        ),
      ],
    );
  }
}
