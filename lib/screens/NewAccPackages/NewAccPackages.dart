part of 'NewAccPackagesImports.dart';

class NewAccPackages extends StatelessWidget {
  const NewAccPackages({Key? key}) : super(key: key);

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
              NewAccPackagesCircleAvatar(),
              SizedBox(
                height: 35,
              ),
              BuildTrainingPlan(),
              SizedBox(
                height: 15,
              ),
              NewAccPackagesNote(),
              SizedBox(
                height: 40,
              ),
              NewAccPackagesButton(),


            ],
          ),
        ),
      ),
    );
  }
}
