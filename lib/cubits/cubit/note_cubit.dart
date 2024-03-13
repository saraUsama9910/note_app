import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_app/models/note_model.dart';

part 'note_state.dart';

class NoteCubit extends Cubit<NoteState> {
  NoteCubit() : super(NoteInitial());
  fetchAllNotes() {
    try {
      // ignore: non_constant_identifier_names
      var NotesBox = Hive.box<NoteModel>('Notes_Box');
      List<NoteModel> note = NotesBox.values.toList();
      emit(NoteSuccess(note));
    } catch (e) {
      emit(NoteFailure(e.toString()));
    }
  }
}
