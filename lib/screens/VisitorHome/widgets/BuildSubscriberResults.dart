part of 'VisitorHomeWidgetsImports.dart';

class BuildSubscriberResults extends StatelessWidget {
  const BuildSubscriberResults({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText(
              title: 'نتائج المشتركين',
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
            ),
            TextButton(
              onPressed: ()=>Navigator.push(
                context,
                MaterialPageRoute(builder: (_)=>const SubscriberResults()),
              ),
              child: CustomText(
                title: 'إظهار الكل',
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
                height: 259,
                child: ListView.builder(
                    itemCount: VisitorHomeModel().subscriberModel.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,i)=>Container(
                      margin: const EdgeInsets.only(left: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.primary,
                      ),
                      width: 317,
                      height: 259,
                      padding: const EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                  child: Column(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset(
                                          VisitorHomeModel().subscriberModel[i]['before'],
                                          width: 106,
                                          height: 201,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      CustomText(
                                        title: VisitorHomeModel().subscriberModel[i]['textBefore'],
                                        size: 14,
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.white,
                                      ),
                                    ],
                                  ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Expanded(
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 201,
                                        width: 105,
                                        decoration: BoxDecoration(
                                            color: AppColors.white,
                                            borderRadius: BorderRadius.circular(10)

                                        ),
                                        child: Image.asset(
                                          VisitorHomeModel().subscriberModel[i]['after'],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      CustomText(
                                        title: VisitorHomeModel().subscriberModel[i]['textAfter'],
                                        size: 14,
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.white,
                                      ),
                                    ],
                                  )
                              ),
                            ],
                          ),

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
