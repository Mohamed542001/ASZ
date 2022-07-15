part of 'VisitorHomeWidgetsImports.dart';

class BuildHowSubscribe   extends StatelessWidget {
  const BuildHowSubscribe  ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          title: 'شرح طريقة الإشتراك',
          color: AppColors.primary,
          fontWeight: FontWeight.bold,
        ),
        const SizedBox(
          height: 10,
        ),
        Stack(
          alignment: Alignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                Res.training1,
              ),
            ),
            IconButton(
              onPressed: (){},
              icon: Image.asset(Res.pause,),
            )
          ],
        )
      ],
    );
  }
}
