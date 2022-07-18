part of 'SubmitReviewImports.dart';

class SubmitReview extends StatelessWidget {
  const SubmitReview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers:
        [
          const SubmitReviewAppBar(),
          SliverList(
            delegate: SliverChildListDelegate(
                [
                  Container(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children:  const [
                        BuildReviewRatingBar(),
                        SizedBox(
                          height: 20,
                        ),
                        BuildReviewText(),
                        SizedBox(
                          height: 20,
                        ),
                        BuildReviewUpload(),
                        SizedBox(
                          height: 50,
                        ),
                        BuildReviewButton(),
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
