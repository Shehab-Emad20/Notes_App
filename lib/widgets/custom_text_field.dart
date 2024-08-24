import 'package:flutter/material.dart';
import 'package:notes_app/widgets/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint, this.maxLines = 1});

  final String hint;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hint,
        border: bulidBorder(),
        enabledBorder: bulidBorder(),
        focusedBorder: bulidBorder(kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder bulidBorder([colre]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: colre ?? Colors.white));
  }
}
