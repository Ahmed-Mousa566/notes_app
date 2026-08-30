import 'package:flutter/material.dart';
import 'package:to_do_app/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint,  this.lins=1});
  final String hint;
  final int lins;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: lins,
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
