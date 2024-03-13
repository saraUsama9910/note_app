import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_app/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  // ignore: non_constant_identifier_names
  AddNote(NoteModel note) async {
    emit(AddNoteLoading());
    try {
      // ignore: non_constant_identifier_names
      var NotesBox = Hive.box<NoteModel>('Notes_Box');

      await NotesBox.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteFailure(e.toString(), errMessage: 'error'));
    }
  }
}
