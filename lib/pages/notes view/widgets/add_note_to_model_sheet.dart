import 'package:flutter/material.dart';
import 'package:to_do_app/pages/notes%20view/widgets/custom_button.dart';
import 'package:to_do_app/pages/notes%20view/widgets/custom_text_field.dart';

class AddNoteToModelSheet extends StatelessWidget {
  const AddNoteToModelSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 24),
            CustomTextField(hint: 'Title'),
            SizedBox(height: 18),
            CustomTextField(hint: 'Content', lines: 5),
            SizedBox(height: 70),
            Custombutton(text: "Add"),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
