import 'package:flutter/material.dart';
import 'package:note_app/widgets/note_view_body.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
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
