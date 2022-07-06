part of 'VisitorHomeImports.dart';

class VisitorHome extends StatelessWidget {
  const VisitorHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers:
        [
          BuildVisitorHomeAppBar(),
        ],
      ),
    );
  }
}
