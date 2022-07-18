part of 'SubmitReviewWidgetsImports.dart';

class BuildReviewButton extends StatelessWidget {
  const BuildReviewButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultButton(
      onTap: (){},
      // onTap: ()=>Navigator.push(
      //   context,
      //   MaterialPageRoute(builder: (_)=>const EditUserAccount()),
      // ),
      margin : const EdgeInsets.all(0),
      title: 'إرسال',
      textColor: AppColors.white,
    );
  }
}
