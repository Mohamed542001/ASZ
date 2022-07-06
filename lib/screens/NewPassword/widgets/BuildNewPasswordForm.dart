part of 'NewPasswordWidgetsImports.dart';

class BuildNewPasswordForm extends StatelessWidget {
  const BuildNewPasswordForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CustomInputFormField(
          labeltxt: 'كلمة المرور الجديدة',
          secure: true,
        ),
        SizedBox(
          height: 10,
        ),
        CustomInputFormField(
          labeltxt: 'تأكيد كلمة المرور الجديدة',
          secure: true,
        ),
      ],
    );
  }
}
