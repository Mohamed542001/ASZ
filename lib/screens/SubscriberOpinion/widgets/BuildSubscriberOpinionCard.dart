part of 'SubscriberOpinionWidgetsImports.dart';

class BuildSubscriberOpinionCard extends StatelessWidget {
  const BuildSubscriberOpinionCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 5,
        shrinkWrap: true,
        itemBuilder: (context,i)=>Container(
          margin: const EdgeInsets.only(left: 5,bottom: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: Stack(
                alignment: Alignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      Res.subscriber1,
                      width: 150,
                    ),
                  ),
                  IconButton(
                    onPressed: (){},
                    icon: Image.asset(Res.pause,),
                  )
                ],
              ),),
              const SizedBox(
                width: 5,
              ),
              Expanded(child: Stack(
                alignment: Alignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      Res.subscriber2,
                      width: 150,
                    ),
                  ),
                  IconButton(
                    onPressed: (){},
                    icon: Image.asset(Res.pause,),
                  )
                ],
              ),),
            ],
          )
        )
    );
  }
}
