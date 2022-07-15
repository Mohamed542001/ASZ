part of 'SubscriberResultsImports.dart';

class SubscriberResults extends StatelessWidget {
  const SubscriberResults({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const DefaultAppBar(
        title: 'نتائج المشتركين',
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: const BuildSubscriberResultsCard(),
      ),
    );
  }
}
