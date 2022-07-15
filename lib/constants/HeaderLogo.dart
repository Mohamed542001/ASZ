part of 'ConstantsImports.dart';

class HeaderLogo extends StatelessWidget {
  const HeaderLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      Res.loginLogo,
      width: 165,
      height: 50,
    );
  }
}
