part of 'UserStatusImports.dart';

class UserStatus extends StatelessWidget {
  const UserStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: CustomScrollView(
        slivers:
        [
          BuildUserStatusAppBar(),
        ],
      ),
    );
  }
}
