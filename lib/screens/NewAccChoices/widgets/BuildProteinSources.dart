part of 'NewAccChoicesWidgetsImports.dart';

class ProteinSources extends StatelessWidget {
  const ProteinSources({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CustomText(
              title: 'اختار من مصادر البروتين',
              size: 14,
              fontWeight: FontWeight.w900,
            ),
            const SizedBox(
              width: 10,
            ),
            CustomText(
              title: 'الرجاء أختيار 4 اختيارات',
              size: 14,
            )
          ],
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
              itemCount: NewAccChoicesModel().proteinSources.length,
              itemBuilder: (context,i)=>Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: NewAccChoicesCubit.get(context).boolCheck[i]?AppColors.primary:AppColors.formBgColor)
                ),
                child: Row(
                  children: [
                    Checkbox(
                      value: NewAccChoicesCubit.get(context).boolCheck[i],
                      onChanged: (val)=>NewAccChoicesCubit.get(context).isBoolChecked1(val, i),
                      activeColor: AppColors.primary,

                    ),
                    CustomText(
                      title: NewAccChoicesModel().proteinSources[i],
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
