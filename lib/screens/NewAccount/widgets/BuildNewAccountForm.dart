part of 'NewAccountWidgetsImports.dart';

class BuildNewAccountForm extends StatelessWidget {
  const BuildNewAccountForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CustomInputFormField(
          labeltxt: 'رقم الجوال',
        ),
        SizedBox(height: 10,),
        CustomInputFormField(
          labeltxt: 'الأسم الثلاثي',
        ),
        SizedBox(height: 10,),
        CustomInputFormField(
          labeltxt: 'البريد الألكتروني (أختياري)',
        ),
        SizedBox(height: 10,),
        CustomInputFormField(
          labeltxt: 'كلمة المرور',
          secure: true,
        ),
      ],
    );
  }
}
