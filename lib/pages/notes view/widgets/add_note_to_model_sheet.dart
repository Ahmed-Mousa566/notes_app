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
        
        child: AddNoteForm()),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formkey = GlobalKey();

  String? tittle, subtittle;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autovalidateMode,
      key: formkey,
      child: Column(
        children: [
          const SizedBox(height: 24),
          CustomTextFormField(
            hint: 'Title',
            onSaved: (value) {
              tittle = value;
            },
          ),
          const SizedBox(height: 18),
          CustomTextFormField(
            hint: 'Content',
            lines: 5,
            onSaved: (value) {
              subtittle = value;
            },
          ),
          SizedBox(height: 70),
          Custombutton(
            text: "Add",
            onTap: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
                
              }
              else{
              autovalidateMode = AutovalidateMode.always;
              }
            },
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
