part of 'EditUserAccountWidgetsImports.dart';

class EditUserAccountGender extends StatelessWidget {
  const EditUserAccountGender({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=>EditUserAccountCubit(),
      child: BlocConsumer<EditUserAccountCubit,EditUserAccountStates>(
        listener: (context,state){},
        builder: (context,state)=>SizedBox(
          height: 50,
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: EditUserAccountCubit.get(context).gender.length,
            itemBuilder: (context,i)=>Row(
              children: [
                Checkbox(
                  activeColor: AppColors.primary,
                  value: EditUserAccountCubit.get(context).boolCheck[i],
                  onChanged: (val)=>EditUserAccountCubit.get(context).isBoolChecked(val,i),
                ),
                CustomText(
                  title: EditUserAccountCubit.get(context).gender[i],
                  size: 14,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
