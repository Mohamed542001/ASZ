part of 'NewAccChoicesImports.dart';

class NewAccChoices extends StatelessWidget {
  const NewAccChoices({Key? key}) : super(key: key);

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
              BuildChoicesCircleAvatar(),
              SizedBox(
                height: 40,
              ),
              BuildTrainingDays(),
              SizedBox(
                height: 30,
              ),
              ProteinSources(),
              SizedBox(
                height: 30,
              ),
              BuildCarbohydrateSources(),
              SizedBox(
                height: 30,
              ),
              BuildFatSources(),
              SizedBox(
                height: 15,
              ),
              BuildAttachPhoto(),
              SizedBox(
                height: 30,
              ),
              NewAccChoicesButton(),
            ],
          ),
        ),
      ),
    );
  }
}
