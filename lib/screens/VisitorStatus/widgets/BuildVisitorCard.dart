part of 'VisitorStatusWidgetsImports.dart';

class BuildVisitorCard extends StatelessWidget {
  const BuildVisitorCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    openAlertBox() {
      return showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32.0))),
              contentPadding: const EdgeInsets.all( 15.0),
              content: SizedBox(
                width: 300.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(15),
                      alignment: Alignment.topRight,
                      child: InkWell(
                        onTap: () => Navigator.of(context).pop(),
                        child: CircleAvatar(
                          radius: 15,
                          backgroundColor: AppColors.formBgColor,
                          child: CustomText(
                            title: 'X',
                            color: AppColors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Image.asset(
                      Res.planCard,
                      width: 124,
                      height: 118,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomText(
                      title: 'نعتذر منك التسجيل مقفل حاليا راح نفتح الاشتراك يوم 1 الي يوم 3 ميلادي من كل شهر خليك قريب علي الموعد',
                      align: TextAlign.center,
                    ),


                  ],
                ),
              ),
            );
          });
    }
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
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(
              child: ListTile(
                onTap: ()=>openAlertBox(),
                leading: Image.asset(Res.plan),

                title: CustomText(
                  title: PlanModel().plans[i]['title'],
                  size: 14,
                  fontWeight: FontWeight.bold,
                ),
                subtitle: CustomText(
                  title: PlanModel().plans[i]['subTitle'],
                  size: 14,
                ),
                trailing: CustomText(
                  title: PlanModel().plans[i]['price'],
                  size: 14,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primary,
                ),
              ),
            ),
          ),
        ),),);
  }
}
