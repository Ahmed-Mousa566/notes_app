import 'package:flutter/material.dart';
import 'package:to_do_app/constant.dart';

class Custombutton extends StatelessWidget {
  const Custombutton({super.key, required this.text, this.onTap, });
  final String text;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: kprimirColor,
          borderRadius: BorderRadius.circular(16),
        ),

        child: Center(
          child: Text(
            text,
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
