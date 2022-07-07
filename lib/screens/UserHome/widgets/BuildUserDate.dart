// ignore_for_file: unnecessary_null_comparison

part of 'UserHomeWidgetsImports.dart';

class BuildUserDate extends StatefulWidget {
  const BuildUserDate({Key? key}) : super(key: key);

  @override
  State<BuildUserDate> createState() => _BuildUserDateState();
}

class _BuildUserDateState extends State<BuildUserDate> {
  DateTime? _dateTime;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            IconButton(
              onPressed: (){
                showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2001),
                    lastDate: DateTime(2222)
                ).then((value){
                  setState(() {
                    _dateTime=value!;
                  });
                });
              },
              icon: Icon(Icons.date_range,color: AppColors.primary,),
            ),
            CustomText(
              title: _dateTime == null ? 'Nothing has been picked yet':_dateTime.toString(),
              size: 14,
              color: AppColors.primary,
            ),
          ],
        ),
        IconButton(
            onPressed: (){},
            icon: Icon(Icons.keyboard_arrow_down_outlined,color: AppColors.primary,),
        ),
      ],
    );
  }
}

