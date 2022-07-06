part of 'NewAccPackagesWidgetsImports.dart';

class BuildTrainingPlan extends StatelessWidget {
  const BuildTrainingPlan({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context)=>NewAccPackagesCubit(),
        child: BlocConsumer<NewAccPackagesCubit,NewAccPackagesStates>(
        listener: (context,state){},
    builder: (context,state)=>ListView.builder(
       shrinkWrap: true,
      itemCount: 3,
      itemBuilder: (context,i)=>Container(
        height: 90,
        margin: const EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
          border: Border.all(width: 2,color:NewAccPackagesCubit.get(context).boolCheck[i]?AppColors.primary:AppColors.formBgColor),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: ListTile(
            onTap: ()=>NewAccPackagesCubit.get(context).isBoolChecked(i),
            leading: Image.asset(Res.plan),

            title: CustomText(
              title: PlanModel().plans[i]['title'],
              size: 14,
              fontWeight: FontWeight.w900,
            ),
            subtitle: CustomText(
              title: PlanModel().plans[i]['subTitle'],
              size: 14,
              fontWeight: FontWeight.bold,
            ),
            trailing: CustomText(
              title: PlanModel().plans[i]['price'],
              size: 14,
              fontWeight: FontWeight.w900,
              color: AppColors.primary,
            ),
          ),
        ),
      ),
    ),),);
  }
}
