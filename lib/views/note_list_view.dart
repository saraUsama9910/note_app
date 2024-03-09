import 'package:flutter/material.dart';
import 'package:note_app/widgets/note_item.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key});
final data=const[];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
          child: NoteItem(),
        );
      },
    );
  }
}
