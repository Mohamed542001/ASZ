// // import 'package:flutter/material.dart';
// //
// // import 'AppColors.dart';
// //
// // class InputFormField extends StatefulWidget {
// //   final String Function(String)? validator;
// //   final VoidCallback? onTap;
// //   final Function(String)? onSave,onChanged;
// //   final int? maxLines,maxLength;
// //   final IconData? icon;
// //   final Widget? suffixIcon,prefix;
// //     final TextEditingController? controller;
// //   final String? upperText,initialValue, hint;
// //   final bool? hasLabel,isNext,isRTL,multiLine,isRequired,secure,isNumber,enabled,readOnly;
// //   final double? horizontalMargin,radius,verticalMargin;
// //   final Color ?enabledBorderColor, fillColor,iconColor,labelColor,textColor,hintColor,focusedBorder;
// //   final Iterable<String>? autofillHints;
// //
// //   const InputFormField({
// //     Key? key,
// //     this.prefix,
// //     this.isNumber = false,
// //     this.controller,
// //     this.maxLines = 1,
// //     this.onSave,
// //     this.secure = false,
// //     this.hint='',
// //     this.validator,
// //     this.onChanged,
// //     this.suffixIcon,
// //     this.onTap,
// //     this.isNext = true,
// //     this.maxLength,
// //     this.upperText,
// //     this.hasLabel = false,
// //     this.isRTL = false,
// //     this.icon,
// //     this.hintColor = Colors.grey,
// //     this.horizontalMargin = 0,this.verticalMargin=7,
// //     this.multiLine = false,
// //     this.fillColor,
// //     this.textColor=Colors.grey,
// //     this.labelColor,
// //     this.radius=15, this.iconColor=Colors.white, this.enabledBorderColor, this.initialValue,   this.enabled, this.isRequired, this.readOnly=false, this.focusedBorder=const Color(0xff3788e6), this.autofillHints,
// //   }) : super(key: key);
// //
// //   @override
// //   _InputFormFieldState createState() => _InputFormFieldState();
// // }
// //
// // class _InputFormFieldState extends State<InputFormField> {
// //
// //    late bool _showPassword;
// //
// //
// //
// //   @override
// //   void initState() {
// //     _showPassword = widget.secure!;
// //     super.initState();
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     final BorderRadius borderRadius = BorderRadius.circular(widget.radius!);
// //
// //     return Padding(
// //       padding: EdgeInsets.symmetric(
// //           vertical: widget.verticalMargin!, horizontal: widget.horizontalMargin!),
// //       child: GestureDetector(
// //         child: Column(
// //           crossAxisAlignment: CrossAxisAlignment.start,
// //           children: [
// //             if (widget.upperText != null)
// //               Padding(
// //                 padding: const EdgeInsets.symmetric(vertical: 5),
// //                 child: Text(
// //                   widget.upperText!,
// //                   style: const TextStyle(
// //                       fontWeight: FontWeight.w900, color: Colors.grey),
// //                 ),
// //               ),
// //             TextFormField(
// //               autofillHints:  widget.autofillHints,
// //               onTap: widget.onTap,
// //               readOnly:widget.readOnly! ,
//               initialValue: widget.initialValue,
// //               controller: widget.controller,
// //               obscureText: _showPassword,
//               onChanged: widget.onChanged,
// //               maxLength: widget.maxLength,
//               textInputAction: widget.multiLine!
//                   ? TextInputAction.newline
//                   : widget.isNext!
//                   ? TextInputAction.next
//                   : TextInputAction.done,
//               keyboardType: widget.multiLine!
//                   ? TextInputType.multiline
//                   : widget.isNumber!
//                   ? TextInputType.number
//                   : TextInputType.emailAddress,
//               cursorColor: primaryColor,
// //               maxLines: widget.maxLines,
//               enabled: widget.enabled,
//               buildCounter: (context,
//                   { required currentLength,
//                      required isFocused,
//                     maxLength}) =>
//               null,
//               style: TextStyle(color: widget.textColor,fontSize: 14,fontWeight: FontWeight.bold),
// //               decoration: InputDecoration(
//                   fillColor: widget.fillColor,
//                   filled: true,
//                   hintStyle: TextStyle(color: widget.hintColor??AppColors.formTextColor, fontSize: 16),
//                   labelStyle: TextStyle(color: widget.labelColor??AppColors.formTextColor),
//                   counterStyle:
//                   const TextStyle(fontSize: 0, color: Colors.transparent??AppColors.formTextColor),
// //                   prefix: widget.prefix,
// //                   prefixIcon: widget.icon == null
// //                       ? null
// //                       : Icon(
// //                       widget.icon,
// //                       color: widget.iconColor,
// //                       size: 14
// //                   ),
// //                   suffixIcon: widget.suffixIcon == null
// //                       ? widget.secure!
// //                       ? IconButton(
// //                     padding: const EdgeInsets.all(0),
// //                     icon: Icon(
// //                       _showPassword
// //                           ? Icons.remove_red_eye
// //                           : Icons.remove_red_eye_outlined,
// //                       color: Colors.grey,
// //                       size: 14,
// //                     ),
// //                     onPressed: () => setState(
// //                             () => _showPassword = !_showPassword),
// //                   )
// //                       : null
// //                       : widget.suffixIcon,
// //                   hintText: widget.hasLabel ? null : widget.hint,
// //                   labelText: widget.hasLabel ? widget.hint : null,
// //                   contentPadding: EdgeInsets.symmetric(
// //                       horizontal: 15, vertical: widget.maxLines == 1 ? 10 : 15),
// //                   enabledBorder: OutlineInputBorder(
// //                     borderRadius: borderRadius,
// //                     borderSide:  BorderSide(color: AppColors.formTextColor),
// //                   ),
// //                   focusedBorder: OutlineInputBorder(
// //                     borderRadius: borderRadius,
// //                     borderSide:  BorderSide(color:AppColors.grey ),
// //                   ),
// //                   errorBorder: OutlineInputBorder(
// //                     borderRadius: borderRadius,
// //                     borderSide: const BorderSide(color: Colors.red),
// //                   ),
// //                   focusedErrorBorder: OutlineInputBorder(
// //                     borderRadius: borderRadius,
// //                     borderSide: const BorderSide(color: Colors.grey),
// //                   ),
// //                   disabledBorder: OutlineInputBorder(
// //                     borderRadius: borderRadius,
// //                     borderSide: const BorderSide(color: Colors.grey),
// //                   )),
//             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }