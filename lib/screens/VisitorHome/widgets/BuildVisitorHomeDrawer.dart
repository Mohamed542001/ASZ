part of 'VisitorHomeWidgetsImports.dart';

class BuildVisitorHomeDrawer extends StatelessWidget {
  const BuildVisitorHomeDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            bottomLeft: Radius.circular(20)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 50),
            child: const HeaderLogo(),
          ),
          InkWell(
            onTap: ()=>Navigator.push(
              context,
              MaterialPageRoute(builder: (_)=>const ContactUs()),
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              margin: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 1,
                    color: AppColors.formBgColor,
                  ),
                ),
              ),
              child: Row(
                children: [
                  Image.asset(Res.contactUs),
                  const SizedBox(
                    width: 5,
                  ),
                  CustomText(
                    title: 'اتصل بنا',
                    fontWeight: FontWeight.bold,
                    size: 14,
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: ()=>Navigator.push(
              context,
              MaterialPageRoute(builder: (_)=>const AboutUs()),
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              margin: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 1,
                    color: AppColors.formBgColor,
                  ),
                ),
              ),
              child: Row(
                children: [
                  Image.asset(Res.info),
                  const SizedBox(
                    width: 5,
                  ),
                  CustomText(
                    title: 'ماذا عنا',
                    fontWeight: FontWeight.bold,
                    size: 14,
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: ()=>Navigator.push(
              context,
              MaterialPageRoute(builder: (_)=>const TermsAndConditions()),
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              margin: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 1,
                    color: AppColors.formBgColor,
                  ),
                ),
              ),
              child: Row(
                children: [
                  Image.asset(Res.lock),
                  const SizedBox(
                    width: 5,
                  ),
                  CustomText(
                    title: 'الشروط والأحكام',
                    fontWeight: FontWeight.bold,
                    size: 14,
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: ()=>Navigator.push(
              context,
              MaterialPageRoute(builder: (_)=>const PrivacyPolicy()),
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              margin: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 1,
                    color: AppColors.formBgColor,
                  ),
                ),
              ),
              child: Row(
                children: [
                  Image.asset(Res.privacyPolicy),
                  const SizedBox(
                    width: 5,
                  ),
                  CustomText(
                    title: 'سياسة الخصوصية',
                    fontWeight: FontWeight.bold,
                    size: 14,
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: ()=>Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (_)=>const Login()),
                  (route) => false,
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  Image.asset(Res.logout),
                  const SizedBox(
                    width: 5,
                  ),
                  CustomText(
                    title: 'تسجيل الدخول',
                    fontWeight: FontWeight.bold,
                    size: 14,
                  )
                ],
              ),
            ),
          ),
        ]
      )
    );
  }
}
