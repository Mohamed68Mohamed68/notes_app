import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hint,
    this.maxLines = 1,
  });

  final String hint;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      maxLines: maxLines,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 16,
          ),
          hintText: hint,
          hintStyle: TextStyle(
            color: kPrimaryColor,
          ),
          border: BuildBorder(),
          enabledBorder: BuildBorder(),
          focusedBorder: BuildBorder(kPrimaryColor)),
    );
  }

  OutlineInputBorder BuildBorder([color]) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: color ?? Colors.white),
      borderRadius: BorderRadius.circular(8),
    );
  }
}
