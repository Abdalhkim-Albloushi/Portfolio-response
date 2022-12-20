import 'package:flutter/material.dart';
import 'package:personal_omar/constant.dart';

class MyInput extends StatelessWidget {
   MyInput(
      {Key? key,
      this.suffixIcon,
      this.hintText,
      this.prefix,
      this.labelText,
      this.initialValue,
      this.controller,
      this.keyboardType,
      this.validator,
      this.onChanged,this.maxLines=1})
      : super(key: key);
  final TextInputType? keyboardType;
  final Widget? suffixIcon, prefix;
  final String? hintText, labelText;
  final String? initialValue;
  int? maxLines;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      autofocus: false,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      onChanged: onChanged,
      controller: controller,
      initialValue: initialValue,
      keyboardType: keyboardType,
      validator: validator,
      style: const TextStyle(
        fontSize: 13,
        color: whiteColor
      ),
      decoration: InputDecoration(
        labelText: labelText,
        isDense: true,
        contentPadding: const EdgeInsets.all(15),
        hintText: hintText,
        labelStyle: const TextStyle(
            color: text1Color, fontSize: 12, fontFamily: "Montserrat"),
        hintStyle: const TextStyle(
            fontSize: 12, color: text1Color, fontFamily: "Montserrat"),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: whiteColor, width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: text1Color.withOpacity(0.3)),
          borderRadius: BorderRadius.circular(5),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red),
          borderRadius: BorderRadius.circular(5),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red),
          borderRadius: BorderRadius.circular(5),
        ),
        filled: true,
        fillColor: textbgColor,
        prefixIcon: prefix,
        suffixIcon: suffixIcon,
      ),
    );
  }
}
