import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widgets/add_button.dart';
import 'package:note_app/widgets/custom_text_field.dart';

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
            onSaved: (value) {
              title = value;
            },
            hint: 'Title',
            maxLines: 1,
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
              onSaved: (value) {
                subtitle = value;
              },
              hint: 'Content',
              maxLines: 5),
          const SizedBox(
            height: 35,
          ),
          AddButton(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                var currentDate = DateTime.now();
                var formattedCurrentDate =
                    DateFormat('dd-mm-yyyy').format(currentDate);
                var noteModel = NoteModel(
                  title: title!,
                  subTitle: subtitle!,
                  date: formattedCurrentDate,
                  color: Colors.blue.value,
                );
                BlocProvider.of<AddNoteCubit>(context).AddNote(noteModel);
              } else {
                autovalidateMode = AutovalidateMode.always;
              }
              setState(() {});
            },
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
