import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:nots_app/Widgets/const.dart';
import 'package:nots_app/models/noteModel.dart';

part 'notes_state.dart';
class NotsCubit extends Cubit<NotsState> {
  NotsCubit() : super(NotsInitial()) {
    fetchAllNotes(); // Load notes when cubit is created
  }

  List<NoteModel> notes = [];

  void fetchAllNotes() {
    var notesBox = Hive.box<NoteModel>(KNotesBox);
    notes = notesBox.values.toList();
    emit(NotsLoaded(notes));
  }

  void addNote(NoteModel note) async {
    var notesBox = Hive.box<NoteModel>(KNotesBox);
    await notesBox.add(note);
    fetchAllNotes();
  }
}