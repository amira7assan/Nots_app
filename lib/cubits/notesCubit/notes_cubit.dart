import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:nots_app/Widgets/const.dart';
import 'package:nots_app/models/noteModel.dart';

part 'notes_state.dart';

class NotsCubit extends Cubit<NotsState> {
  NotsCubit() : super(NotsInitial());
List<NoteModel>?notes;
  fetchAllNotes()async{
      var notsBox = Hive.box<NoteModel>(KNotesBox);
     List<NoteModel>notes= notsBox.values.toList();
  }
  }

