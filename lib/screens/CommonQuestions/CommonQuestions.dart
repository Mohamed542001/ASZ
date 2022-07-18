part of 'CommonQuestionsImports.dart';

class CommonQuestions extends StatelessWidget {
  const CommonQuestions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers:
        [
          const CommonQuestionsAppBar(),
          SliverList(
            delegate: SliverChildListDelegate(
                [
                  Container(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: const [
                        BuildCommonQuestionsCard()
                      ],
                    ),
                  ),
                ]
            ),
          ),
        ],
      ),
    );
  }
}
