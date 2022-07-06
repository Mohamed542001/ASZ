part of 'UserHomeImports.dart';

class UserHome extends StatefulWidget {
  const UserHome({Key? key}) : super(key: key);

  @override
  State<UserHome> createState() => _UserHomeState();
}

class _UserHomeState extends State<UserHome> {
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: CustomScrollView(
        slivers:
        [
          BuildUserHomeAppBar(),
              ],
            ),
          );

  }
}
