part of 'VisitorHomeWidgetsImports.dart';

class BuildVisitorTraining extends StatelessWidget {
  const BuildVisitorTraining({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText(
              title: 'التمارين',
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
            ),
            TextButton(
                onPressed: (){},
                child: CustomText(
                  title: 'جميع التمارين',
                  fontWeight: FontWeight.bold,
                  color: AppColors.primary,
                  size: 12,
                  decoration: TextDecoration.underline,
                ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        BlocProvider(
            create: (context)=>VisitorHomeCubit(),
          child: BlocConsumer<VisitorHomeCubit,VisitorHomeStates>(
            listener: (context, state) {},
            builder: (context,state)=>SizedBox(
              height: 100,
              child: ListView.builder(
                  itemCount: VisitorHomeModel().trainingModel.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,i)=>InkWell(
                    onTap: ()=>VisitorHomeCubit.get(context).isBoolChecked(i),
                    child: Container(
                      margin: const EdgeInsets.only(left: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.white,
                        border: Border.all(
                          color: VisitorHomeCubit.get(context).boolCheck[i]?AppColors.primary:AppColors.white,
                          width: 1,
                        ),
                      ),
                      width: 100,
                      height: 100,
                      padding: const EdgeInsets.all(5),
                      child: Column(
                        children: [
                          Image.asset(VisitorHomeModel().trainingModel[i]['image']),
                          const SizedBox(
                            height: 5,
                          ),
                          CustomText(
                            title: VisitorHomeModel().trainingModel[i]['text'],
                            size: 10,
                            fontWeight: FontWeight.w900,
                          )
                        ],
                      ),
                    ),
                  )
              ),
            )

            ),
          ),


      ],
    );
  }
}
