import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nots_app/Widgets/CustomAppPar.dart';
import 'package:nots_app/Widgets/CustomTextField.dart';

import '../cubits/notesCubit/notes_cubit.dart';
import '../models/noteModel.dart';

class EditeNoteViewBody extends StatefulWidget {
  const EditeNoteViewBody({super.key, required this.note});
final NoteModel note;
  @override
  State<EditeNoteViewBody> createState() => _EditeNoteViewBodyState();
}
 String? content,title;

class _EditeNoteViewBodyState extends State<EditeNoteViewBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
             CustomAppPar(
              onPressed: (){
                widget.note.title=title??widget.note.title;
                widget.note.subTitle=content??widget.note.subTitle;
                widget.note.save();
                BlocProvider.of<NotsCubit>(context).fetchAllNotes();

                Navigator.pop(context);
              },
              title: 'Edit Note',
              icon: Icons.check,
            ),
             Customtextfield(
              onChanged: (value){
                title = value;
              },
               hint: widget.note.title,

             ),
            const SizedBox(
              height: 50,
            ),
            Customtextfield(
              onChanged: (value){
                content = value;
              },
              hint: widget.note.subTitle,
              maxline: 5,
            ),
          ],
        ),
      ),
    );
  }
}
