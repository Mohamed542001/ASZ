part of 'NewAccountWidgetsImports.dart';

class BuildNewAccGender extends StatelessWidget {
  const BuildNewAccGender({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=>NewAccountCubit(),
      child: BlocConsumer<NewAccountCubit,NewAccountStates>(
        listener: (context,state){},
        builder: (context,state)=>GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1/0.2
          ),
          itemCount: NewAccountCubit.get(context).gender.length,
          itemBuilder: (context,i)=>Row(
            children: [
              Checkbox(
                activeColor: AppColors.primary,
                value: NewAccountCubit.get(context).boolCheck[i],
                onChanged: (val)=>NewAccountCubit.get(context).isBoolChecked(val,i),
              ),
              CustomText(
                title: NewAccountCubit.get(context).gender[i],
                size: 14,
              )
            ],
          ),
        ),
      ),
    );
  }
}
