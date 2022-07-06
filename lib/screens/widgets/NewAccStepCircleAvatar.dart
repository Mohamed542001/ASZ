import 'package:asz/screens/widgets/AppColors.dart';
import 'package:asz/screens/widgets/CustomText.dart';
import 'package:flutter/material.dart';

class NewAccStepCircleAvatar extends StatelessWidget {

  final double? radius;
  final String? title;
  final Color? color,textColor;
  final Widget? child;


  const NewAccStepCircleAvatar(
      {Key? key,
        this.radius,
        this.title,
        this.color,
        this.textColor,
        this.child,
      }
      ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: radius??30,
          backgroundColor: color??AppColors.formBgColor,
          child: child,
        ),
        const SizedBox(
          height: 5,
        ),
        CustomText(
          title: title,
          color: textColor??const Color(0xFFCFCFCF),
          size: 14,
        )
      ],
    );
  }
}