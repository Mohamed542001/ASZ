part of 'VisitorStatusImports.dart';

class VisitorStatus extends StatelessWidget {
  const VisitorStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: CustomScrollView(
        slivers:
        [
          const BuildVisitorStatusAppBar(),
          SliverList(delegate: SliverChildListDelegate(
              [
                Container(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: const[
                      BuildVisitorCard(),
                      SizedBox(
                        height: 60,
                      ),

                      BuildVisitorStatusButton()
                    ],
                  ),
                )
              ]
          ))
        ],
      ),
    );
  }
}
