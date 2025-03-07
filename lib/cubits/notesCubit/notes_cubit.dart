import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:nots_app/models/noteModel.dart';

part 'notes_state.dart';

class NotsCubit extends Cubit<NotsState> {
  NotsCubit() : super(NotsInitial());
}
