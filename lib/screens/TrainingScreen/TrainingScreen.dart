part of 'TrainingScreenImports.dart';

class TrainingScreen extends StatelessWidget {
  const TrainingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
        length: 8,
        child: Scaffold(
          appBar: const DefaultAppBar(
            title: 'التمارين',
          ),
          body: Container(
            color: AppColors.white,
              padding: const EdgeInsets.all(15),
              child: const BuildTrainingTaps()
          ),
        ),
    );
  }
}
