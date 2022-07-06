part of 'DetailsWidgetsImports.dart';

class BuildDetailsSliders extends StatelessWidget {
  const BuildDetailsSliders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=>NewAccDetailsCubit(),
      child: BlocConsumer<NewAccDetailsCubit,NewAccDetailsStates>(
        listener: (context,state){},
        builder: (context,state)=> Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(Res.heightLogo),
                    Container(
                      alignment: Alignment.topRight,
                      child: CustomText(
                        title: 'الطول',
                        size: 14,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
                CustomText(
                  title: '200 سم',
                  size: 14,
                  fontWeight: FontWeight.w900,
                  color: AppColors.primary,
                )
              ],
            ),
            SliderTheme(
              data: SliderThemeData(
                thumbColor: AppColors.primary,
                activeTrackColor: AppColors.primary,
                valueIndicatorColor: AppColors.primary,
                inactiveTrackColor: AppColors.formBgColor,
                activeTickMarkColor: Colors.transparent,
                inactiveTickMarkColor: Colors.transparent,
              ),
              child: Slider(
                min: 0,
                max: 200,
                divisions: 200,
                value: NewAccDetailsCubit.get(context).value,
                label: NewAccDetailsCubit.get(context).value.round().toString(),
                onChanged: (val){
                  NewAccDetailsCubit.get(context).isChanges(val);
                },
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(Res.heightLogo),
                    Container(
                      alignment: Alignment.topRight,
                      child: CustomText(
                        title: 'الوزن',
                        size: 14,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
                CustomText(
                  title: '200 كجم',
                  size: 14,
                  fontWeight: FontWeight.w900,
                  color: AppColors.primary,
                )
              ],
            ),
            SliderTheme(
              data: SliderThemeData(
                thumbColor: AppColors.primary,
                activeTrackColor: AppColors.primary,
                valueIndicatorColor: AppColors.primary,
                inactiveTrackColor: AppColors.formBgColor,
                activeTickMarkColor: Colors.transparent,
                inactiveTickMarkColor: Colors.transparent,
              ),
              child: Slider(
                min: 0,
                max: 200,
                divisions: 200,
                value: NewAccDetailsCubit.get(context).value1,
                label: NewAccDetailsCubit.get(context).value1.round().toString(),
                onChanged: (val){
                  NewAccDetailsCubit.get(context).isChanges1(val);
                },
              ),
            ),

          ],
        ),
      ),
    );
  }
}
