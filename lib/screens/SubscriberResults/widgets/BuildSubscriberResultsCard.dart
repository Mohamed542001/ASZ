part of 'SubscriberResultsWidgetsImports.dart';

class BuildSubscriberResultsCard extends StatelessWidget {
  const BuildSubscriberResultsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 6,
      shrinkWrap: true,
      itemBuilder: (context,i)=>Container(
        margin: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.formBgColor,
        ),
        width: 317,
        height: 259,
        padding: const EdgeInsets.all(5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          Res.bodyBefore1,
                          width: 106,
                          height: 201,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      CustomText(
                        title: 'قبل',
                        size: 14,
                        fontWeight: FontWeight.bold,
                        color: AppColors.white,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Expanded(
                    child: Column(
                      children: [
                        Container(
                          height: 201,
                          width: 105,
                          decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(10)

                          ),
                          child: Image.asset(
                            Res.bodyAfter1,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        CustomText(
                          title: 'بعد',
                          size: 14,
                          fontWeight: FontWeight.bold,
                          color: AppColors.white,
                        ),
                      ],
                    )
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
