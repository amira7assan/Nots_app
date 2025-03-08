part of 'notes_cubit.dart';

@immutable
abstract class NotsState {}

class NotsInitial extends NotsState {}
class NotsLoaded extends NotsState {
  final List<NoteModel> notes;
  NotsLoaded(this.notes);
}