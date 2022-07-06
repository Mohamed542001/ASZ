part of 'LoginWidgetsImports.dart';

class BuildLoginForm extends StatelessWidget {
  const BuildLoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CustomInputFormField(
          labeltxt: 'رقم الجوال',
        ),
        SizedBox(
          height: 16,
        ),
        CustomInputFormField(
          labeltxt: 'كلمة المرور',
          secure: true,
        )
      ],
    );
  }
}
