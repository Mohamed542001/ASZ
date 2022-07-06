part of 'NewPasswordWidgetsImports.dart';

class BuildNewPasswordButton extends StatefulWidget {
  const BuildNewPasswordButton({Key? key}) : super(key: key);

  @override
  State<BuildNewPasswordButton> createState() => _BuildNewPasswordButtonState();
}

class _BuildNewPasswordButtonState extends State<BuildNewPasswordButton> {
  openAlertBox() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(32.0))),
            contentPadding: const EdgeInsets.only(top: 15.0),
            content: SizedBox(
              width: 300.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(15),
                    alignment: Alignment.topRight,
                    child: InkWell(
                      onTap: ()=>Navigator.of(context).pop(),
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: AppColors.formBgColor,
                        child: CustomText(
                          title: 'X',
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Image.asset(
                    Res.done,
                    width: 124,
                    height: 118,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomText(
                    title: 'لقد تم تغيير كلمة المرور بنجاح',
                    align: TextAlign.center,
                    fontWeight: FontWeight.w600,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  DefaultButton(
                    onTap: ()=>Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (_)=>const Login()),
                          (route) => false,
                    ),
                    title: 'تسجيل دخول',
                    textColor: AppColors.white,
                  )
                ],
              ),
            ),
          );
        });

  }
  @override
  Widget build(BuildContext context) {

    return DefaultButton(
      onTap: openAlertBox,
      title: 'إعادة تعيين',
      textColor: AppColors.white,
    );
  }
}
