part of 'VisitorHomeWidgetsImports.dart';

class BuildVisitorHomeAppBar extends StatelessWidget {
  const BuildVisitorHomeAppBar({Key? key}) : super(key: key);

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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.topRight,
                      child: CustomText(
                        title: '!اهلا',
                        color: AppColors.white,
                        size: 21,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    CustomText(
                      title: 'انضم واشترك الآن',
                      color: AppColors.white,
                    ),
                  ],
                ),
                DefaultButton(
                  onTap: (){},
                  title: 'تسجيل الدخول',
                  textColor: AppColors.primary,
                  textSize: 14,
                  textFontWeight: FontWeight.bold,
                  color: AppColors.white,
                  borderColor: AppColors.white,
                  width: 127,
                  height: 36,
                )
              ],
            ),
          )
      ),
      leading: IconButton(
        onPressed: (){},
        icon: const Icon(Icons.menu),
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
