import 'package:flutter/material.dart';
import 'package:note_app/widgets/add_note_button_sheet.dart';
import 'package:note_app/widgets/note_view_body.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              context: context,
              builder: (context) {
                return const AddNoteButton();
              });
        },
        clipBehavior: Clip.antiAlias,
        backgroundColor: Colors.amber,
        shape: const CircleBorder(
          side: BorderSide(style: BorderStyle.none, color: Colors.white),
        ),
        child: const Icon(Icons.add_comment_outlined),
      ),
      body: const NoteViewBody(),
    );
  }
}
