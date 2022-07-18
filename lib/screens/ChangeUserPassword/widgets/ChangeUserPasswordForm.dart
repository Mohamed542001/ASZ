part of 'ChangeUserPasswordWidgetsImports.dart';

class ChangeUserPasswordForm extends StatelessWidget {
  const ChangeUserPasswordForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CustomInputFormField(
          labeltxt: 'تغيير كلمة المرور',
          secure: true,
        ),
        CustomInputFormField(
          labeltxt: 'كلمة المرور الجديدة',
          secure: true,
        ),
        CustomInputFormField(
          labeltxt: 'تأكيد كلمة المرور',
          secure: true,
        ),
      ],
    );
  }
}
