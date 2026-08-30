import 'package:flutter/material.dart';
import 'package:to_do_app/pages/notes%20view/widgets/custom_appbar.dart';
import 'package:to_do_app/pages/notes%20view/widgets/custom_text_field.dart';

class EditNotedBody extends StatelessWidget {
  const EditNotedBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          SizedBox(height: 50),
          CustomAppbar(title: 'Edit Notes', icon: Icons.check),
          SizedBox(height: 50),
          CustomTextField(hint: 'Title'),
          SizedBox(height: 18),
          CustomTextField(hint: 'Content', lines: 5),
        ],
      ),
    );
  }
}
