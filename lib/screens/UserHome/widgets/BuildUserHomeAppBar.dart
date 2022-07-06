part of 'UserHomeWidgetsImports.dart';

class BuildUserHomeAppBar extends StatelessWidget {
  const BuildUserHomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: AppColors.primary,
      shape: const ContinuousRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
          ),
      ),
        bottom:  PreferredSize(
            preferredSize: const Size.fromHeight(50.0),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 30),
              child: Row(
                children: [
                  Image.asset(Res.appBarImage),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.topRight,
                        child: CustomText(
                          title: 'البطل',
                          color: AppColors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      CustomText(
                        title: 'Mohamed Salama',
                        color: AppColors.white,
                        fontWeight: FontWeight.w900,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        alignment: Alignment.topRight,
                        width: 50,
                        decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                color: AppColors.white,
                                width: 1,
                              ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
    ),
      leading: IconButton(
        onPressed: (){},
        icon: const Icon(Icons.menu),
      ),
      title: CustomText(
        title: 'الرئيسية',
        size: 14,
        color: AppColors.white,
      ),
      actions: [
        Row(
          children: [
            CustomText(
              title: 'خطة مدرب و التزام لاعب',
              size: 14,
              fontWeight: FontWeight.bold,
              color: AppColors.white,
            ),
            IconButton(onPressed: (){}, icon: Image.asset(Res.chat)),
          ],
        )
      ],
      floating: false,
      pinned: false,
      expandedHeight: 180,

      );
  }
}
