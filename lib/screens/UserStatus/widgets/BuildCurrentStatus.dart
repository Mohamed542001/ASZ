part of 'UserStatusWidgetsImports.dart';

class BuildCurrentStatus extends StatelessWidget {
  const BuildCurrentStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          title: 'الحالة الحالية',
          fontWeight: FontWeight.w900,
          color: AppColors.primary,
        ),
        const SizedBox(
          height: 10,
        ),
        Card(
          elevation: 10,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      title: 'الوزن',
                      size: 12,
                      fontWeight: FontWeight.w900,
                    ),
                    DefaultButton(
                      onTap: (){},
                      title: 'تحديث الحالة',
                      textSize: 12,
                      textColor: AppColors.white,
                      width: 100,
                      margin: const EdgeInsets.all(0),
                      height: 33,
                    )
                  ],
                ),
                CustomText(
                  title: 'التزام الكارديو',
                  size: 12,
                  fontWeight: FontWeight.w900,
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomText(
                  title: 'ألتزم التمرين',
                  size: 12,
                  fontWeight: FontWeight.w900,
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomText(
                  title: 'تحديث الصور',
                  size: 12,
                  fontWeight: FontWeight.w900,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      height: 63,
                      width: 63,
                      color: AppColors.formBgColor,
                      child: Image.asset(Res.statusBody1),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 63,
                      width: 63,
                      color: AppColors.formBgColor,
                      child: Image.asset(Res.statusBody2),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomText(
                  title: 'تعليق المدرب',
                  size: 12,
                  fontWeight: FontWeight.w900,
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomText(
                  title: 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص',
                  size: 12,
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  decoration: BoxDecoration(
                    color: AppColors.formBgColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Image.asset(Res.watch),
                      const SizedBox(
                        width: 10,
                      ),
                      CustomText(
                        title: 'التحديث التالي بعد 10 أيام',
                        size: 12,
                        fontWeight: FontWeight.w900,
                        color: AppColors.primary,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
