import 'package:flutter/material.dart';
import 'package:nots_app/Widgets/EditeNoteViewBody.dart';

class EditeNoteView extends StatelessWidget {
  const EditeNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditeNoteViewBody(),
    );
  }
}
