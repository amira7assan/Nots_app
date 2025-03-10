import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nots_app/Widgets/addNoteForm.dart';
import 'package:nots_app/cubits/AddNoteCubit/add_note_cubit.dart';

import '../cubits/notesCubit/notes_cubit.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteFailure) {
            print("error");
          }
          if (state is AddNoteSuccess) {
            BlocProvider.of<NotsCubit>(context).fetchAllNotes();
            Navigator.pop(context);
          }
        },
        builder: (context,state){
          return AbsorbPointer(
          absorbing: state is AddNoteLoading ? true : false,

        child: Padding(
            padding: EdgeInsets.only(left:  16,
            right: 16,
            bottom: MediaQuery.of(context).viewInsets.bottom),
                child: SingleChildScrollView(
                    child: AddNoteForm(),
                ),
        ),
      );})
    );
  }
}

