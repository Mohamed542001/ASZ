part of 'UserStatusWidgetsImports.dart';

class BuildCurrentStatusButton extends StatelessWidget {
  const BuildCurrentStatusButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                        onTap: () => Navigator.of(context).pop(),
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
                    // Container(
                    //   padding: const EdgeInsets.symmetric(horizontal: 20),
                    //   decoration: BoxDecoration(
                    //       color: AppColors.formBgColor,
                    //       border: Border.all(
                    //           color: AppColors.textColor
                    //       ),
                    //       borderRadius: BorderRadius.circular(15)),
                    //   child:  DropdownButton(
                    //     iconDisabledColor: AppColors.primary,
                    //     iconEnabledColor: AppColors.primary,
                    //     iconSize: 40,
                    //     isExpanded: true,
                    //     hint: CustomText(
                    //       title: 'النوع',
                    //       color: AppColors.textColor,
                    //       size: 14,
                    //       fontWeight: FontWeight.bold,
                    //     ),
                    //     items: ['1','2','3']
                    //         .map((e) => DropdownMenuItem(
                    //       child: CustomText(title: e),
                    //       value: e,
                    //     ))
                    //         .toList(),
                    //     value: UserStatusCubit.get(context).selectedGender[1],
                    //     onChanged: (val) =>
                    //         UserStatusCubit.get(context).isSelected(val),
                    //   ),
                    //
                    // ),
                    const SizedBox(
                      height: 20,
                    ),
                    
                    DefaultButton(
                      onTap: (){},
                      // onTap: ()=>Navigator.pushAndRemoveUntil(
                      //   context,
                      //   MaterialPageRoute(builder: (_)=>const UserNavigatorPage()),
                      //       (route) => false,
                      // ),
                      title: 'الصفحة الرئيسية',
                      textColor: AppColors.white,
                    )
                  ],
                ),
              ),
            );
          });
    }
    return DefaultButton(
      // onTap: ()=>openAlertBox(),
      onTap: (){},
      title: 'تحديث الحالة',
      textSize: 12,
      textColor: AppColors.white,
      width: 100,
      margin: const EdgeInsets.all(0),
      height: 33,
    );
  }
}
