part of 'UserHomeImports.dart';

class UserHomeData{
  List<Step> getSteps()=>[
    Step(
        title: CustomText(title: '',),
        content: SizedBox(
          width: double.infinity,
          height: 77,
          child: Card(
            elevation: 5,
            child: InkWell(
              onTap: (){},
              child: ListTile(
                leading: Image.asset(Res.home),
                title: CustomText(title: 'الوجبة الثانية',),
                trailing: const Icon(Icons.keyboard_arrow_down_rounded),
              ),
            ),
          ),
        ),
    ),
    Step(
      title: CustomText(title: '',),
      content: Container(),
    ),
    Step(
      title: CustomText(title: '',),
      content: SizedBox(
        height: 77,
        child: Card(
          elevation: 5,
          child: InkWell(
            onTap: (){},
            child: ListTile(
              leading: Image.asset(Res.home),
              title: CustomText(title: 'الوجبة الثانية',),
              trailing: const Icon(Icons.keyboard_arrow_down_rounded),
            ),
          ),
        ),
      ),
    ),
  ];
}