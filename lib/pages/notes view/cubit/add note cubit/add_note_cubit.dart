import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:to_do_app/constant.dart';
import 'package:to_do_app/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  addNote(NoteModel note) async {
    emit(AddNoteLoading());
    try {
      var notebox = Hive.box(kNotesBox);
      emit(AddNoteSuccess());
      await notebox.add(note);
    } catch (e) {
      emit(AddNoteError(errorMessage: e.toString()));
    }
  }
}
