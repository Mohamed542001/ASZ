part of 'SubmitReviewWidgetsImports.dart';

class BuildReviewUpload extends StatelessWidget {
  const BuildReviewUpload({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: (){},
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: AppColors.textColor,
                ),
                borderRadius: BorderRadius.circular(10)
            ),
            child: ListTile(
              title: CustomText(
                title: 'إضافة صورة',
                size: 12,
              ),
              trailing: Image.asset(Res.imageUpload),
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        InkWell(
          onTap: (){},
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: AppColors.textColor,
                ),
                borderRadius: BorderRadius.circular(10)
            ),
            child: ListTile(
              title: CustomText(
                title: 'إضافة فيديو',
                size: 12,
              ),
              trailing: Image.asset(Res.videoUpload),
            ),
          ),
        ),
      ],
    );
  }
}
