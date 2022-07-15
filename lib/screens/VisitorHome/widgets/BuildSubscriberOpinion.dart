part of 'VisitorHomeWidgetsImports.dart';

class BuildSubscriberOpinion extends StatelessWidget {
  const BuildSubscriberOpinion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText(
              title: 'أراء المشاركين',
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
            ),
            TextButton(
              onPressed: ()=>Navigator.push(
                context,
                MaterialPageRoute(builder: (_)=>const SubscriberOpinion()),
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
                height: 200,
                child: ListView.builder(
                  itemCount: 4,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,i)=>Container(
                    margin: const EdgeInsets.only(left: 5),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            VisitorHomeModel().subscriberImage[i],
                            width: 150,
                          ),
                        ),
                        IconButton(
                          onPressed: (){},
                          icon: Image.asset(Res.pause,),
                        )
                      ],
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
