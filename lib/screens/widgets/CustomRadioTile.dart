import 'package:asz/screens/NewAccDetails/NewAccDetailsImports.dart';
import 'package:asz/screens/NewAccPackages/NewAccPackagesImports.dart';
import 'package:flutter/material.dart';

import 'AppColors.dart';
import 'CustomText.dart';

class CustomRadioTile extends StatefulWidget {
  const CustomRadioTile(
      {
        Key? key,
        this.text,
        required this.image,
        required this.value,
        required this.groupValue,
        this.onChange, this.text2
      }
      ) : super(key: key);

  final String? text,text2;
  final String image;
  final UserPlan value;
  final UserPlan groupValue;
  final Function(UserPlan)? onChange;

  @override
  State<CustomRadioTile> createState() => _CustomRadioTileState();
}

class _CustomRadioTileState extends State<CustomRadioTile> {
  @override
  Widget build(BuildContext context) {
    bool selected = widget.value == widget.groupValue;
    return Container(
      decoration: BoxDecoration(
        color: selected?AppColors.white
            :AppColors.formBgColor,
        border: Border.all(
          color: selected?AppColors.primary
              :AppColors.formBgColor,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: RadioListTile<UserPlan>(
        value: widget.value,
        activeColor: AppColors.primary,
        groupValue: widget.groupValue,
        title: CustomText(
          title: widget.text,
          size: 14,
          color: selected?AppColors.primary
              :AppColors.textColor,
          fontWeight: FontWeight.bold,
        ),

        onChanged: (v){},
        secondary: CustomText(
          title: widget.text2,
          fontWeight: FontWeight.w600,
          color: AppColors.primary,
        )

      ),
    );
  }
}
