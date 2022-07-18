part of 'EditUserAccountWidgetsImports.dart';

class EditUserAccButton extends StatelessWidget {
  const EditUserAccButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultButton(
          onTap: (){},
          // onTap: ()=>Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (_)=>const NewAccVerificationCode()),
          // ),
          margin: const EdgeInsets.all(0),
          title: 'حفظ',
          textColor: AppColors.white,
        ),
        const SizedBox(
          height: 15,
        ),
        DefaultButton(
          onTap: ()=>Navigator.of(context).pop(),
          margin: const EdgeInsets.all(0),
          color: AppColors.white,
          title: 'إلغاء',
          borderColor: AppColors.textColor,
        )
      ],
    );
  }
}
