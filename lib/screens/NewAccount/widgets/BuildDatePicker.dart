part of 'NewAccountWidgetsImports.dart';


class BuildDatePicker extends StatefulWidget {
  const BuildDatePicker({Key? key}) : super(key: key);

  @override
  State<BuildDatePicker> createState() => _BuildDatePickerState();
}

class _BuildDatePickerState extends State<BuildDatePicker> {
  DateTime? _currentdate;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.formBgColor,
        borderRadius: BorderRadius.circular(20)

      ),
      height: MediaQuery.of(context).copyWith().size.height / 4,
      child: CupertinoDatePicker(
        mode: CupertinoDatePickerMode.date,
        initialDateTime: DateTime(2022, 7, 5),
        onDateTimeChanged: (DateTime newDateTime) {
          // Do something
        },
      ),
    );
  }
}
