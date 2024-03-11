import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_app/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  AddNote(NoteModel note) async {
    emit(AddNoteLoading());
    try {
      var NotesBox = Hive.box<NoteModel>('Notes_Box');
      emit(AddNoteSuccess());
      await NotesBox.add(note);
    }  catch (e) {
      AddNoteFailure(e.toString(), errMessage: 'error');
    }
  }
}
