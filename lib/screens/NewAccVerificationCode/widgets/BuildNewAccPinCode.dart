part of 'NewAccVerifyCodeWidgetsImports.dart';

class BuildNewAccPinCode extends StatelessWidget {
  const BuildNewAccPinCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all( 20),
      child: PinCodeTextField(
        appContext: context,
        length: 4,
        keyboardType: TextInputType.number,
        pinTheme: PinTheme(
          activeColor: AppColors.formBgColor,
          inactiveColor: Colors.grey,
          selectedColor: AppColors.formBgColor,
          fieldHeight: 57,
          fieldWidth: 51,
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(6),
        ), onChanged: (String value) {  },

      ),
    );
  }
}
