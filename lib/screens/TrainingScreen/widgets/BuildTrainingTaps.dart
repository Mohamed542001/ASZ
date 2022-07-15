part of 'TrainingWidgetsImports.dart';

class BuildTrainingTaps extends StatefulWidget {
  const BuildTrainingTaps({Key? key}) : super(key: key);

  @override
  State<BuildTrainingTaps> createState() => _BuildTrainingTapsState();
}

class _BuildTrainingTapsState extends State<BuildTrainingTaps> with TickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    TabController _tabController =TabController(length: 9, vsync: this);
    return Column(
      children: [
        TabBar(
          controller: _tabController,
          isScrollable: true,
          indicatorColor: AppColors.white,


          tabs:  [
            Container(
              margin: const EdgeInsets.only(left: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.white,
                border: Border.all(
                  color: AppColors.primary,
                  width: 1,
                ),
              ),
              width: 100,
              height: 100,
              padding: const EdgeInsets.all(5),
              child: Column(
                children: [
                  Image.asset(Res.Mask1),
                  const SizedBox(
                    height: 5,
                  ),
                  CustomText(
                    title: 'تمارين الظهر',
                    size: 10,
                    fontWeight: FontWeight.bold,
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.white,
                border: Border.all(
                  color: AppColors.primary,
                  width: 1,
                ),
              ),
              width: 100,
              height: 100,
              padding: const EdgeInsets.all(5),
              child: Column(
                children: [
                  Image.asset(Res.Mask2),
                  const SizedBox(
                    height: 5,
                  ),
                  CustomText(
                    title: 'تمارين الباي',
                    size: 10,
                    fontWeight: FontWeight.bold,
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.white,
                border: Border.all(
                  color: AppColors.primary,
                  width: 1,
                ),
              ),
              width: 100,
              height: 100,
              padding: const EdgeInsets.all(5),
              child: Column(
                children: [
                  Image.asset(Res.Mask4),
                  const SizedBox(
                    height: 5,
                  ),
                  CustomText(
                    title: 'تمارين الصدر',
                    size: 10,
                    fontWeight: FontWeight.bold,
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.white,
                border: Border.all(
                  color: AppColors.primary,
                  width: 1,
                ),
              ),
              width: 100,
              height: 100,
              padding: const EdgeInsets.all(5),
              child: Column(
                children: [
                  Image.asset(Res.Mask3),
                  const SizedBox(
                    height: 5,
                  ),
                  CustomText(
                    title: 'تمارين السواعد',
                    size: 10,
                    fontWeight: FontWeight.bold,
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.white,
                border: Border.all(
                  color: AppColors.primary,
                  width: 1,
                ),
              ),
              width: 100,
              height: 100,
              padding: const EdgeInsets.all(5),
              child: Column(
                children: [
                  Image.asset(Res.Mask5),
                  const SizedBox(
                    height: 5,
                  ),
                  CustomText(
                    title: 'تمارين الأرجل',
                    size: 10,
                    fontWeight: FontWeight.bold,
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.white,
                border: Border.all(
                  color: AppColors.primary,
                  width: 1,
                ),
              ),
              width: 100,
              height: 100,
              padding: const EdgeInsets.all(5),
              child: Column(
                children: [
                  Image.asset(Res.Mask6),
                  const SizedBox(
                    height: 5,
                  ),
                  CustomText(
                    title: 'تمارين الأكتاف',
                    size: 10,
                    fontWeight: FontWeight.bold,
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.white,
                border: Border.all(
                  color: AppColors.primary,
                  width: 1,
                ),
              ),
              width: 100,
              height: 100,
              padding: const EdgeInsets.all(5),
              child: Column(
                children: [
                  Image.asset(Res.Mask10),
                  const SizedBox(
                    height: 5,
                  ),
                  CustomText(
                    title: 'تمارين التراي',
                    size: 10,
                    fontWeight: FontWeight.bold,
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.white,
                border: Border.all(
                  color: AppColors.primary,
                  width: 1,
                ),
              ),
              width: 100,
              height: 100,
              padding: const EdgeInsets.all(5),
              child: Column(
                children: [
                  Image.asset(Res.Mask9),
                  const SizedBox(
                    height: 5,
                  ),
                  CustomText(
                    title: 'تمارين البطن',
                    size: 10,
                    fontWeight: FontWeight.bold,
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.white,
                border: Border.all(
                  color: AppColors.primary,
                  width: 1,
                ),
              ),
              width: 100,
              height: 100,
              padding: const EdgeInsets.all(5),
              child: Column(
                children: [
                  Image.asset(Res.Mask8),
                  const SizedBox(
                    height: 5,
                  ),
                  CustomText(
                    title: 'تمارين الرقبة',
                    size: 10,
                    fontWeight: FontWeight.bold,
                  )
                ],
              ),
            ),

          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Expanded(
          child: SizedBox(
          width: double.maxFinite,
          height: MediaQuery.of(context).size.height*0.2,
          child: TabBarView(
            controller: _tabController,
            children: const [
              BuildBackExercises(),
              BuildBicepsExercises(),
              BuildChestExercises(),
              BuildForearmsExercises(),
              BuildLegExercises(),
              BuildShouldersExercises(),
              BuildTricepsExercises(),
              BuildAbdominalExercises(),
              BuildNeckExercises(),
            ],
          ),
        ),
        ),
      ],
    );
  }
}
