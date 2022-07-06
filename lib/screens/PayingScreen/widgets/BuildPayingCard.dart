part of 'PayingWidgetsImports.dart';

class BuildPayingCard extends StatelessWidget {
  const BuildPayingCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        border: Border.all(width: 2,color:AppColors.primary),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                border : Border(
                  bottom: BorderSide(
                    color: AppColors.formBgColor,
                    width: 0.2,
                  )
                )
              ),
              child: ListTile(
                leading: Image.asset(Res.plan),

                title: CustomText(
                  title: PlanModel().plans[0]['title'],
                  size: 14,
                  fontWeight: FontWeight.w900,
                ),
                subtitle: CustomText(
                  title: PlanModel().plans[0]['subTitle'],
                  size: 14,
                  fontWeight: FontWeight.bold,
                ),
                trailing: CustomText(
                  title: PlanModel().plans[0]['price'],
                  size: 14,
                  fontWeight: FontWeight.w900,
                  color: AppColors.primary,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 5),
              decoration: BoxDecoration(
                  border : Border(
                      bottom: BorderSide(
                        color: AppColors.formBgColor,
                        width: 0.2,
                      )
                  )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    title: 'ادخل كود الخصم',
                    size: 14,
                    fontWeight: FontWeight.w900,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 80,
                        height: 25,
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            border : Border.all(
                              color: AppColors.formBgColor,
                              width: 1
                            ),
                          borderRadius: BorderRadius.circular(10)
                            ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(Res.checkCircle),
                            CustomText(
                              title: '50%',
                              size: 14,
                              fontWeight: FontWeight.w900,
                            ),
                          ],
                        ),
                        ),
                      DefaultButton(
                        width: 80,
                        height: 30,
                        onTap: (){},
                        title: 'إضافة',
                        textColor: AppColors.white,
                        textSize: 12,
                        textFontWeight: FontWeight.bold,
                      )

                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                  border : Border(
                      bottom: BorderSide(
                        color: AppColors.formBgColor,
                        width: 0.2,
                      )
                  )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    title: 'ضريبة القيمة المضافة',
                    size: 14,
                    fontWeight: FontWeight.w900,
                  ),
                  CustomText(
                    title: '12 ريال',
                    fontWeight: FontWeight.w900,
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    title: 'ضريبة القيمة المضافة',
                    size: 14,
                    fontWeight: FontWeight.w900,
                    color: AppColors.primary,
                  ),
                  CustomText(
                    title: PlanModel().plans[0]['price'],
                    fontWeight: FontWeight.w900,
                    color: AppColors.primary,
                  ),
                ],
              ),
            )

          ],
        )
      ),
    );
  }
}
