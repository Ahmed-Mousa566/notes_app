import 'package:flutter/material.dart';
import 'package:to_do_app/pages/notes%20view/widgets/custom_appbar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [SizedBox(height: 50), const CustomAppbar(), NoteItem()],
      ),
    );
  }
}

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 229, 161, 60),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 24.0, bottom: 24),
              child: ListTile(
                title: Text(
                  "Ahmed mousa",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 10.0, bottom: 10),
                  child: Text(
                    "flutter dev in hdk in qater",
                    style: TextStyle(
                      fontSize: 19,
                      color: Colors.black.withValues(alpha: 0.5),
                    ),
                  ),
                ),
                trailing: Icon(
                  Icons.delete_rounded,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 28.0, left: 225),
              child: Text(
                "may 21,2024",
                style: TextStyle(
                  fontSize: 19,
                  color: Colors.black.withValues(alpha: 0.5),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
