part of 'PayingWidgetsImports.dart';

class BuildPayingImages extends StatelessWidget {
  const BuildPayingImages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(Res.Visa),
        const SizedBox(
          width: 10,
        ),
        Image.asset(Res.mastercard),
      ],
    );
  }
}
