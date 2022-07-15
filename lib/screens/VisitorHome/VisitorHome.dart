part of 'VisitorHomeImports.dart';

class VisitorHome extends StatelessWidget {
  const VisitorHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      drawer: const BuildVisitorHomeDrawer(),
      key: scaffoldKey,
      body: CustomScrollView(
        slivers:
        [
          const BuildVisitorHomeAppBar(),
          SliverList(delegate: SliverChildListDelegate(
             [
              Container(
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: const[
                    BuildHowSubscribe(),
                    SizedBox(
                      height: 15,
                    ),
                    BuildVisitorTraining(),
                    SizedBox(
                      height: 30,
                    ),
                    BuildSubscriberResults(),
                    SizedBox(
                      height: 30,
                    ),
                    BuildSubscriberOpinion(),
                  ],
                ),
              )
            ]
          ),
          ),
        ],
      ),
    );
  }
}
