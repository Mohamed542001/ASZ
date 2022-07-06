part of 'NewAccDetailsImports.dart';

class NewAccDetails extends StatefulWidget {
  const NewAccDetails({Key? key}) : super(key: key);

  @override
  State<NewAccDetails> createState() => _NewAccDetailsState();
}

class _NewAccDetailsState extends State<NewAccDetails> {
  bool check = false;
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
            children:  const [
              BuildDetailsCircleAvatar(),
              SizedBox(
                height: 30,
              ),
              BuildDetailsSliders(),
              SizedBox(
                height: 30,
              ),
              BuildUserAim(),
              SizedBox(
                height: 15,
              ),
              BuildTrainingPlace(),
              SizedBox(
                height: 35,
              ),
              BuildActivityLevel(),
              SizedBox(
                height: 60,
              ),
              BuildDetailsButton(),
            ],
          ),
        ),
      ),
    );
  }
}
