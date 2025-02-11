import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:nots_app/Widgets/const.dart';
import 'package:nots_app/models/noteModel.dart';
import 'package:hive_flutter/hive_flutter.dart';
part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  addNote(NoteModel note)async{
    emit(AddNoteLoading());
    try{
   var notsBox = Hive.box<NoteModel>(KNotesBox);
   emit(AddNoteSuccess());
   await notsBox.add(note);}
   on Exception catch(e){
      AddNoteFailure(e.toString());
   }
  }
}
