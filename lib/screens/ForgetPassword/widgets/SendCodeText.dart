part of 'ForgetPasswordWidgetsImports.dart';

class SendCodeText extends StatelessWidget {
  const SendCodeText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomText(
        title: 'سيتم إرسال رسالة بها كود يمكنك استخدامه للدخول للتطبيق',
        size: 14,
        align: TextAlign.center,
      ),
    );
  }
}
