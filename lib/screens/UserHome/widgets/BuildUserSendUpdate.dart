part of 'UserHomeWidgetsImports.dart';

class BuildUserSendUpdate extends StatelessWidget {
  const BuildUserSendUpdate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: AppColors.textColor,
        border: Border.all(),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText(
            title: 'يجيب إرسال التحديث الخاص بك اليوم',
            size: 14,
            color: AppColors.white,
          ),
          DefaultButton(
            onTap: (){},
            margin: const EdgeInsets.all(0),
            width: 110,
            height: 30,
            title: 'ارسل التحديث',
            textSize: 12,
            textColor: AppColors.white,
          ),
        ],
      ),
    );
  }
}
