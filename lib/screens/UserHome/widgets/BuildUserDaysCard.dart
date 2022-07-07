part of 'UserHomeWidgetsImports.dart';

class BuildUserDaysCard extends StatelessWidget {
  const BuildUserDaysCard ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context)=>UserHomeCubit(),
      child: BlocConsumer<UserHomeCubit,UserHomeStates>(
        listener: (context, state) {},
        builder: (context,state)=>GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5,
              crossAxisSpacing: 5,
              childAspectRatio: 1/1.2
          ),
          itemCount: 5,
          itemBuilder: (context,i)=>InkWell(
            onTap: ()=>UserHomeCubit.get(context).isBoolChecked(i),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                    color: UserHomeCubit.get(context).boolCheck[i]?AppColors.primary:AppColors.formBgColor,
                    width: 2
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                              color: UserHomeCubit.get(context).boolCheck[i]?AppColors.primary:AppColors.formBgColor,
                              width: 1),
                        )
                    ),
                    child: CustomText(
                      title: UserHomeModel().userDaysModel[i]['date'],
                      size: 26,
                      fontWeight: FontWeight.w900,
                      color: UserHomeCubit.get(context).boolCheck[i]?AppColors.primary:AppColors.formBgColor,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  CustomText(
                    title: UserHomeModel().userDaysModel[i]['day'],
                    size: 12,
                    color: UserHomeCubit.get(context).boolCheck[i]?AppColors.primary:AppColors.formBgColor,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      );
  }
}
