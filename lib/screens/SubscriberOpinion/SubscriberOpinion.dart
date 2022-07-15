part of 'SubscriberOpinionImports.dart';

class SubscriberOpinion extends StatelessWidget {
  const SubscriberOpinion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(
        title: 'أراء المشاركين',
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: const BuildSubscriberOpinionCard(),
      ),
    );
  }
}
