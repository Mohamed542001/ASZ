part of 'VisitorStatusWidgetsImports.dart';


class BuildVisitorStatusAppBar extends StatelessWidget {
  const BuildVisitorStatusAppBar({Key? key}) : super(key: key);

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
            child: Column(
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
          )
      ),
      leading: IconButton(
        onPressed: (){},
        icon: const Icon(Icons.menu),
      ),
      actions: [
        Container(
          margin: const EdgeInsets.all(15),
          child: CustomText(
            title: 'خطة مدرب و التزام لاعب',
            size: 14,
            fontWeight: FontWeight.bold,
            color: AppColors.white,
          ),
        )
      ],
      floating: false,
      pinned: false,
      expandedHeight: 180,

    );
  }
}
