import 'package:flutter/material.dart';
import 'package:note_app/views/note_list_view.dart';
import 'package:note_app/widgets/custom_app_bar.dart';

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 30,
        ),
        CustomAppbar(),
        Expanded(child: NoteListView())
      ],
    );
  }
}
