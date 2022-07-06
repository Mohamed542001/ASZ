part of 'NewAccChoicesWidgetsImports.dart';

class BuildAttachPhoto extends StatelessWidget {
  const BuildAttachPhoto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          title: 'إرفاق صور',
          size: 14,
          fontWeight: FontWeight.w900,
        ),
        const SizedBox(
          height: 15,
        ),
        BlocProvider(
          create: (context)=>NewAccChoicesCubit(),
          child: BlocConsumer<NewAccChoicesCubit,NewAccChoicesStates>(
              listener: (context,state){},
              builder: (context,state)=>GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: NewAccChoicesModel().photo.length,
                itemBuilder: (context,i)=>InkWell(
                  onTap: (){},
                  child: Container(
                    height: 100,
                    width: 85,
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color:NewAccChoicesCubit.get(context).boolCheck[i]? AppColors.primary:AppColors.formBgColor),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          Res.addPhoto,
                          color: NewAccChoicesCubit.get(context).boolCheck[i]? AppColors.primary:AppColors.formBgColor,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        CustomText(
                          title: '${NewAccChoicesModel().photo[i]}',
                          color: NewAccChoicesCubit.get(context).boolCheck[i]? AppColors.primary:AppColors.formBgColor,
                          align: TextAlign.center,
                          size: 14,
                        )
                      ],
                    ),
                  ),
                ),
              )
          ),
        ),
      ],
    );
  }
}
