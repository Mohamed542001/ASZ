part of 'UserStatusWidgetsImports.dart';

class BuildPlanCards extends StatelessWidget {
  const BuildPlanCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          elevation: 10,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(Res.statusPlan),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      title: 'الخطة الاولى',
                      size: 14,
                      fontWeight: FontWeight.w900,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    CustomText(
                      title: 'إشتراك شهري',
                      size: 14,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomText(
                      title: '249 ريال',
                      size: 14,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primary,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        DefaultButton(
                          margin: const EdgeInsets.all(0),
                          width: 110,
                          height: 38,
                          onTap: (){},
                          title: 'ترقية الإشتراك',
                          textSize: 12,
                          textFontWeight: FontWeight.bold,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        DefaultButton(
                          margin: const EdgeInsets.all(0),
                          width: 120,
                          height: 38,
                          onTap: (){},
                          title: 'تجميد الإشتراك',
                          textSize: 12,
                          color: AppColors.white,
                          borderColor: AppColors.textColor,
                          textColor: AppColors.textColor,
                          textFontWeight: FontWeight.w900,
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 4,
            itemBuilder: (context,i)=>Container(
              margin: const EdgeInsets.symmetric(vertical: 5),
              child: Card(
                elevation: 10,
                child: Container(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            title: 'الخطة الاولى',
                            size: 14,
                            fontWeight: FontWeight.w900,
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 8,
                                backgroundColor: AppColors.primary,
                              ),
                              CustomText(
                                title: 'قابل للتجميد',
                                size: 10,
                                fontWeight: FontWeight.w900,
                                color: AppColors.primary,
                              )
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          CustomText(
                            title: 'تجديد',
                            size: 14,
                            color: AppColors.primary,
                            fontWeight: FontWeight.bold,
                          ),
                          CustomText(
                            title: 'في 12 مارس 2021',
                            size: 12,
                          )

                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
        ),
      ],
    );
  }
}
