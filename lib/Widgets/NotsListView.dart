import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nots_app/Widgets/CustomNotsIteam.dart';
import 'package:nots_app/cubits/notesCubit/notes_cubit.dart';
import 'package:nots_app/models/noteModel.dart';
class NotsListView extends StatelessWidget {
  const NotsListView({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotsCubit, NotsState>(
      builder: (context, state) {
        List<NoteModel> notes = BlocProvider.of<NotsCubit>(context).notes?? [];
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
            itemCount: notes.length,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 4),
                  child: NoteItem(
                    note: notes[index],
                  ),
                );
              }),
        );
      },
    );
  }
}