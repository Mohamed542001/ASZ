part of 'EditUserAccountWidgetsImports.dart';

class EditUserAccountAppBar extends StatelessWidget {
  const EditUserAccountAppBar({Key? key}) : super(key: key);

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
          preferredSize: const Size.fromHeight(80.0),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(Res.Edit),
                const SizedBox(
                  width: 10,
                ),
                CustomText(
                  title: 'تعديل حسابي',
                  size: 20,
                  color: AppColors.white,
                )
              ],
            ),
          )
      ),
      leading: IconButton(
        onPressed: ()=>Navigator.of(context).pop(),
        icon: const Icon(Icons.arrow_back_ios_outlined,size: 16,),
      ),
      floating: false,
      pinned: false,
      expandedHeight: 180,

    );
  }
}
