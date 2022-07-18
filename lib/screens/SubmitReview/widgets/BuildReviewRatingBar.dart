part of 'SubmitReviewWidgetsImports.dart';

class BuildReviewRatingBar extends StatelessWidget {
  const BuildReviewRatingBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      itemSize: 30,
      initialRating: 4,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
      itemBuilder: (context, _) => Icon(
        Icons.star,
        color: AppColors.primary,
      ),
      onRatingUpdate: (rating) {},
    );
  }
}
