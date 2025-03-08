import 'package:flutter/material.dart';
import 'package:nots_app/Widgets/EditeNoteViewBody.dart';
import 'package:nots_app/models/noteModel.dart';

class EditeNoteView extends StatelessWidget {
  const EditeNoteView({super.key, required this.note});
//final EditeNoteView note;
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditeNoteViewBody(
        note: note,
      ),
    );
  }
}
