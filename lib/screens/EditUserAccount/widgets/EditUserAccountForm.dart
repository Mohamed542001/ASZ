part of 'EditUserAccountWidgetsImports.dart';

class EditUserAccountForm extends StatelessWidget {
  const EditUserAccountForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CustomInputFormField(
          labeltxt: 'الأسم بالكامل',
        ),
        CustomInputFormField(
          labeltxt: 'رقم الجوال',
        ),
        CustomInputFormField(
          labeltxt: 'البريد الإلكتروني (أختياري)',
        ),
      ],
    );
  }
}
