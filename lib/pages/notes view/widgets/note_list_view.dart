import 'package:flutter/material.dart';
import 'package:to_do_app/pages/edite%20notes/screens/edit_notes.dart';
import 'package:to_do_app/pages/notes%20view/widgets/notes_item.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return EditNotes();
                    },
                  ),
                );
              },
              child: NoteItem(),
            ),
          );
        },
      ),
    );
  }
}
