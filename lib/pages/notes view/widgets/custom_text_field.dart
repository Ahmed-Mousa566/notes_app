import 'package:flutter/material.dart';
import 'package:to_do_app/constant.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hint,
    this.lines = 1,
    this.onSaved,
    this.validator,
  });
  final String hint;
  final int lines;
  final void Function(String?)? onSaved;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return " Field is reqauird";
        }
      },
      onSaved: onSaved,
      maxLines: lines,
      style: TextStyle(fontSize: 24),
      cursorColor: kprimirColor,
      decoration: InputDecoration(
        hint: Text(hint, style: TextStyle(fontSize: 24)),

        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(16),
        ),

        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(16),
        ),

        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: kprimirColor),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
