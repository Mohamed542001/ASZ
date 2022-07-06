part of 'NewAccountImports.dart';

class NewAccount extends StatelessWidget {
  const NewAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(
        title: 'إنشاء حساب',
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(15),
          child: Column(
            children: const [
              BuildNewAccountCircleAvatar(),
              SizedBox(
                height: 30,
              ),
              BuildNewAccountForm(),
              SizedBox(
                height: 10,
              ),
              BuildNewAccGender(),
              SizedBox(
                height: 20,
              ),
              BuildDatePicker(),
              SizedBox(
                height: 50,
              ),
              BuildNewAccButton(),
            ],
          ),
        ),
      ),
    );
  }
}
