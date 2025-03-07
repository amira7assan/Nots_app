part of 'notes_cubit.dart';

@immutable
sealed class NotsState {}

final class NotsInitial extends NotsState {}
final class NotsLoading extends NotsState {}
final class NotsSuccess extends NotsState {
  final List<NoteModel> notes;
  NotsSuccess(this.notes);

}
final class NotsFailure extends NotsState {
  final String errorMsg;
  NotsFailure(this.errorMsg);
}
