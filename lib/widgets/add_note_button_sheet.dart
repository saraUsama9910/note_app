import 'package:flutter/material.dart';
import 'package:note_app/widgets/add_button.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class AddNoteButton extends StatelessWidget {
  const AddNoteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 16,
            ),
            CustomTextField(
              hint: 'Title',
              maxLines: 1,
            ),
            const SizedBox(
              height: 16,
            ),
            CustomTextField(hint: 'Content', maxLines: 5),
            const SizedBox(
              height: 35,
            ),
            const AddButton(),
            const SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}