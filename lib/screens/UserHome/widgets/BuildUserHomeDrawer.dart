part of 'UserHomeWidgetsImports.dart';

class BuildUserHomeDrawer extends StatelessWidget {
  const BuildUserHomeDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.white,
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
              CustomDrawerCard(
                title: 'حسابي',
                onTap: ()=>Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_)=>const UserAccount()),
                ),
                image: Res.account,
                border: true,
              ),
              CustomDrawerCard(
                title: 'الأسئلة الشائعة',
                onTap: ()=>Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_)=>const CommonQuestions()),
                ),
                image: Res.help,
                border: true,
              ),
              CustomDrawerCard(
                title: 'اتصل بنا',
                onTap: ()=>Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_)=>const ContactUs()),
                ),
                image: Res.contactUs,
                border: true,
              ),
              CustomDrawerCard(
                title: 'ماذا عنا',
                onTap: ()=>Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_)=>const AboutUs()),
                ),
                image: Res.info,
                border: true,
              ),
              CustomDrawerCard(
                title: 'الشروط والأحكام',
                onTap: ()=>Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_)=>const TermsAndConditions()),
                ),
                image: Res.lock,
                border: true,
              ),
              CustomDrawerCard(
                title: 'سياسة الخصوصية',
                onTap: ()=>Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_)=>const PrivacyPolicy()),
                ),
                image: Res.privacyPolicy,
                border: true,
              ),
              CustomDrawerCard(
                title: 'إرسال تقييم',
                onTap: ()=>Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_)=>const SubmitReview()),
                ),
                image: Res.stars,
                border: true,
              ),
              CustomDrawerCard(
                title: 'تسجيل الدخول',
                onTap: ()=>Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_)=>const Login()),
                ),
                image: Res.logout,
                border: false,
              ),
            ]
        )
    );
  }
}
