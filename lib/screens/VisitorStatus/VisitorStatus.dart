part of 'VisitorStatusImports.dart';

class VisitorStatus extends StatelessWidget {
  const VisitorStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers:
        [
          BuildVisitorStatusAppBar(),
        ],
      ),
    );
  }
}
