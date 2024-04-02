import 'package:flutter/material.dart';

import '../../../core/utils/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    this.textInputType,
    required this.prefixIcon,
    this.validate,
    required this.isPassword,
    this.onChanged,
    this.onSubmit,
    this.controller,
    this.suffixIcon,
    this.suffixPressed,
  });

  final String hintText;
  final TextInputType? textInputType;
  final IconData prefixIcon;
  final IconData? suffixIcon;
  final Function()? suffixPressed;
  final String? Function(String?)? validate;
  final bool isPassword;
  final Function(String)? onChanged;
  final Function(String)? onSubmit;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.2,
      height: MediaQuery.of(context).size.width / 6.9,
      padding: EdgeInsets.only(left: 20, right: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          Icon(
            prefixIcon,
            size: 22,
          ),
          SizedBox(
            width: 15,
          ),
          Expanded(
            child: TextFormField(
              controller: controller,
              keyboardType: textInputType,
              cursorColor: darkBlueColor,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hintText,
                hintStyle: TextStyle(
                  color: hintTextColor,
                ),
                contentPadding: EdgeInsets.zero,
              ),
              maxLines: 1,
              style: TextStyle(fontSize: 23, color: darkBlueColor),
              validator: validate,
              obscureText: isPassword,
              onChanged: onChanged,
              onFieldSubmitted: onSubmit,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          suffixIcon != null
              ? IconButton(
                  icon: Icon(
                    suffixIcon,
                    size: 22,
                  ),
                  onPressed: suffixPressed,
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
//
// class CustomSwitch extends StatefulWidget {
//   final bool initialValue;
//   final ValueChanged<bool>? onChanged;
//
//   const CustomSwitch({
//     Key? key,
//     required this.initialValue,
//     this.onChanged,
//   }) : super(key: key);
//
//   @override
//   _CustomSwitchState createState() => _CustomSwitchState();
// }
//
// class _CustomSwitchState extends State<CustomSwitch> {
//   late bool _value;
//
//   @override
//   void initState() {
//     super.initState();
//     _value = widget.initialValue;
//   }
//
//   void _toggleSwitch() {
//     setState(() {
//       _value = !_value;
//       if (widget.onChanged != null) {
//         widget.onChanged!(_value);
//       }
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: _toggleSwitch,
//       child: Stack(
//         children: [
//           Container(
//             width: 50,
//             height: 30,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(15),
//               color: _value ? Colors.blue : Colors.grey,
//             ),
//           ),
//           AnimatedPositioned(
//             duration: const Duration(milliseconds: 200),
//             left: _value ? 20 : 0,
//             right: _value ? 0 : 20,
//             child: Container(
//               width: 30,
//               height: 30,
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 color: Colors.white,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
