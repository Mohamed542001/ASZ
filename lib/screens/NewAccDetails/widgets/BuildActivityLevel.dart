part of 'DetailsWidgetsImports.dart';

class BuildActivityLevel extends StatelessWidget {
  const BuildActivityLevel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=>NewAccDetailsCubit(),
      child: BlocConsumer<NewAccDetailsCubit,NewAccDetailsStates>(
        listener: (context,state){},
        builder: (context,state)=>Column(
          children: [
            Container(
              alignment: Alignment.topRight,
              child: CustomText(
                title: 'مستوي النشاط',
                size: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            GridView.builder(
              shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1/0.3, crossAxisCount: 3,
                ),
                itemCount: NewAccDetailsModel().activity.length,
                itemBuilder: (context,i)=>Row(
                  children: [
                    Checkbox(
                        value: NewAccDetailsCubit.get(context).boolCheck[i],
                        onChanged: (val)=>NewAccDetailsCubit.get(context).isBoolChecked2(val, i),
                      activeColor: AppColors.primary,

                    ),
                    CustomText(
                      title: NewAccDetailsModel().activity[i],
                      size: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
            ),
          ],
        ),
      ),
    );
  }
}
