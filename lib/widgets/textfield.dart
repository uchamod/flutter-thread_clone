import 'package:flutter/material.dart';
import 'package:thread_clone/util/constant.dart';

class UserTextField extends StatefulWidget {
  final TextEditingController controller;
  final inputType;
  final inputAction;
  final bool showtext;
  final String hintText;
  // final Function() isValid;
  final String? Function(String?) validator;
  const UserTextField(
      {super.key,
      required this.controller,
      this.inputType,
      this.inputAction,
      required this.showtext,
      required this.hintText,
      //required this.isValid,
      required this.validator});

  @override
  State<UserTextField> createState() => _UserTextFieldState();
}

class _UserTextFieldState extends State<UserTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: widget.inputType,
      textInputAction: widget.inputAction,
      controller: widget.controller,
      obscureText: widget.showtext,
      validator: widget.validator,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: kcTextwhite.withOpacity(0.5)),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        //disable underline border
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRad),
          borderSide: BorderSide(color: kcTextwhite),
        ),
        //active border decoration
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRad),
          borderSide: BorderSide(color: kcTextwhite, width: 2),
        ),
        //focus border decoration
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRad),
          borderSide: BorderSide(color: kcTextwhite),
        ),
      ),
      style: TextStyle(
          fontSize: 18, fontWeight: FontWeight.w500, color: kcTextwhite),
    );
  }
}
