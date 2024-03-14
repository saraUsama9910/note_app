import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_app/models/note_model.dart';

part 'note_state.dart';

class NoteCubit extends Cubit<NoteState> {
  NoteCubit() : super(NoteInitial());
  List<NoteModel>? note;
  fetchAllNotes() {
    var NotesBox = Hive.box<NoteModel>('Notes_Box');
    note = NotesBox.values.toList();
    emit(NoteSuccess());
  }
}
