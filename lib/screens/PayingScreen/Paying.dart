part of 'PayingImports.dart';

class Paying extends StatelessWidget {
  const Paying({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(
        title: 'إنشاء حساب',
      ),
      body: Container(
        color: AppColors.white,
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            children: const [
              BuildPayingCircleAvatar(),
              SizedBox(
                height: 35,
              ),
              BuildPayingCard(),
              SizedBox(
                height: 80,
              ),
              BuildPayingButton(),
              SizedBox(
                height: 30,
              ),
              BuildPayingImages(),
              SizedBox(
                height: 10,
              ),
              BuildPayingText(),
            ],
          ),
        ),
      ),
    );
  }
}