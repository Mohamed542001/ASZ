part of 'UserAccountWidgetsImports.dart';

class UserAccForm extends StatelessWidget {
  const UserAccForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomInputFormField(
          upperText: 'الأسم بالكامل',
          labeltxt: 'حسن كمال محمد',
          enabled: false,
        ),
        const CustomInputFormField(
          upperText: 'رقم الجوال',
          labeltxt: '+966 284526454215',
          enabled: false,
        ),
        const CustomInputFormField(
          upperText: 'البريد الإلكتروني',
          labeltxt: 'hassan @gmail.com',
          enabled: false,
        ),
        const CustomInputFormField(
          upperText: 'تاريخ الميلاد',
          labeltxt: '1/1/1990',
          enabled: false,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText(
              title: 'كلمة المرور',
            ),
            TextButton(
                onPressed: ()=>Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_)=>const ChangeUserPassword()),
                ),
                child: CustomText(
                  title: 'تعديل',
                  size: 14,
                  color: AppColors.primary,
                  decoration: TextDecoration.underline,
                )
            )
          ],
        ),
        const CustomInputFormField(
          labeltxt: '************',
          enabled: false,
        ),
        const SizedBox(
          height: 10,
        ),
        CustomText(
          title: 'النوع',
          size: 16,
        ),
        const SizedBox(
          height: 10,
        ),
        CustomText(
          title: 'ذكر',
          size: 14,
          fontWeight: FontWeight.bold,
        ),
      ],
    );
  }
}
