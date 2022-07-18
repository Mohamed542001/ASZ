part of 'EditUserAccountWidgetsImports.dart';

class EditUserAccountDate extends StatelessWidget {
  const EditUserAccountDate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime? _currentdate;
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey,
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
