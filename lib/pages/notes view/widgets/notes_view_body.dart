import 'package:flutter/material.dart';
import 'package:to_do_app/pages/notes%20view/widgets/custom_appbar.dart';
import 'package:to_do_app/pages/notes%20view/widgets/note_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [SizedBox(height: 50), const CustomAppbar(title: 'Notes', icon: Icons.search), Expanded(child: NoteListView())],
      ),
    );
  }
}

