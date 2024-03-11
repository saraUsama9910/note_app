import 'package:flutter/material.dart';
import 'package:note_app/widgets/add_button.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class AddNoteButton extends StatelessWidget {
  const AddNoteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
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
    );
  }
}
