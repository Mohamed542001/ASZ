part of 'SubmitReviewWidgetsImports.dart';

class BuildReviewText extends StatelessWidget {
  const BuildReviewText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 203,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25)
      ),
      padding: const EdgeInsets.all(15),
      child: TextFormField(
        minLines: 50,
        maxLines: 60,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10)
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10)
          ),
          hintText: 'اكتب تعليقك هنا'
        ),
      ),
    );
  }
}
