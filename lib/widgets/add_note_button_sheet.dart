import 'package:flutter/material.dart';
import 'package:note_app/widgets/add_note_form.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class AddNoteButton extends StatelessWidget {
  const AddNoteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: BlocConsumer<SubjectBloc, SubjectState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            return AddNoteForm();
          },
        ),
      ),
    );
  }
}
