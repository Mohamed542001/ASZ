part of 'NewAccChoicesWidgetsImports.dart';

class BuildFatSources extends StatelessWidget {
  const BuildFatSources({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          title: 'اختار من مصادر الدهون',
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
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 1/0.3
              ),
              itemCount: NewAccChoicesModel().fatSources.length,
              itemBuilder: (context,i)=>Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: NewAccChoicesCubit.get(context).boolCheck[i]?AppColors.primary:AppColors.formBgColor)
                ),
                child: Row(
                  children: [
                    Checkbox(
                      value: NewAccChoicesCubit.get(context).boolCheck[i],
                      onChanged: (val)=>NewAccChoicesCubit.get(context).isBoolChecked3(val, i),
                      activeColor: AppColors.primary,

                    ),
                    CustomText(
                      title: NewAccChoicesModel().fatSources[i],
                      size: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
