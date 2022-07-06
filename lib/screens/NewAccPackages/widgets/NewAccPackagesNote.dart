part of 'NewAccPackagesWidgetsImports.dart';

class NewAccPackagesNote extends StatelessWidget {
  const NewAccPackagesNote({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(Res.note),
        const SizedBox(
          width: 10,
        ),
        CustomText(
          title: 'السعر لا يشمل ضريبة القيمة المضافة',
          size: 10,
          fontWeight: FontWeight.w900,
          color: AppColors.primary,
        )
      ],
    );
  }
}
