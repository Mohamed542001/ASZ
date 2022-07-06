part of 'UserStatusWidgetsImports.dart';

class BuildUserStatusAppBar extends StatelessWidget {
  const BuildUserStatusAppBar({Key? key}) : super(key: key);

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
                Row(
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
                CustomText(
                  title: 'بدأ الإشتراك 12 مارس',
                  size: 12,
                  color: AppColors.white,
                )
              ],
            ),
          )
      ),
      leading: IconButton(
        onPressed: ()=>Navigator.of(context).pop(),
        icon: const Icon(
            Icons.arrow_back_ios_outlined,
          size: 16,
        ),
      ),

      actions: [
        IconButton(onPressed: (){}, icon: Image.asset(Res.chat)),
      ],
      floating: false,
      pinned: false,
      expandedHeight: 180,

    );
  }
}
