part of 'ConstantsImports.dart';


class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        bgColor: AppColors.white,
        iconColor: Colors.black,
        title: '',
        back: true,
      ),
      body: Container(
        color: AppColors.white,
        width: double.infinity,
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Image.asset(Res.contactUsLogo),
            const SizedBox(
              height: 10,
            ),
            CustomText(
              title: 'اتصل بنا',
              size: 20,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(
              height: 25,
            ),
            CustomInputFormField(
              enabled: false,
              labeltxt: '+966556623949',
              suffixIcon: Icon(Icons.call_rounded,color: AppColors.primary,),
            ),
            CustomInputFormField(
              enabled: false,
              labeltxt: 'info@aszclub.com',
              suffixIcon: Icon(Icons.mail,color: AppColors.primary,),
            ),
            CustomInputFormField(
              enabled: false,
              labeltxt: 'www.aszClub.com',
              suffixIcon: Image.asset(Res.website),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: (){},
                  child: Image.asset(Res.instagram),
                ),
                const SizedBox(
                  width: 15,
                ),
                InkWell(
                    onTap: (){},
                    child: Image.asset(Res.twitter),
                ),
                const SizedBox(
                  width: 15,
                ),
                InkWell(
                    onTap: (){},
                    child: Image.asset(Res.snapchat),
                ),
                const SizedBox(
                  width: 15,
                ),
                InkWell(
                    onTap: (){},
                    child: Image.asset(Res.facebook),
                ),
                const SizedBox(
                  width: 15,
                ),
                InkWell(
                    onTap: (){},
                    child: Image.asset(Res.tiktok),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
