import 'package:flutter/material.dart';
import 'package:to_do_app/pages/notes%20view/widgets/custom_search_icon.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: const TextStyle(fontSize: 25)),
        CustomSearchIcon(icon: icon,),
      ],
    );
  }
}
