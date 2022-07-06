part of 'NewAccVerificationCodeImports.dart';

class NewAccVerificationCode extends StatelessWidget {
  const NewAccVerificationCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        title: '',
        bgColor: Colors.white,
        leading: IconButton(
          onPressed: (){Navigator.of(context).pop();},
          icon: const Icon(Icons.arrow_back_ios_outlined,
            size: 16,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        color: AppColors.white,
        padding: const EdgeInsets.all(15),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                NewAccVerificationCodeText(),
                SizedBox(
                  height: 25,
                ),
                BuildNewAccPinCode(),
                SizedBox(
                  height: 20,
                ),
                BuildNewAccResend(),
                SizedBox(
                  height: 45,
                ),
                NewAccVerificationCodeButton(),
              ],
            ),
          ),
        ),

      ),
    );
  }
}
