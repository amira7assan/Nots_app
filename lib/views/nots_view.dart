import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nots_app/Widgets/NotsViewBody.dart';
import 'package:nots_app/Widgets/AddNoteButtomSheet.dart';
import 'package:nots_app/cubits/AddNoteCubit/add_note_cubit.dart';

import '../cubits/notesCubit/notes_cubit.dart';

class NotsView extends StatelessWidget {
  const NotsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotsCubit(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)
                ),
                context: context, builder: (context) {
              return const AddNoteButtomSheet();
            });
          },
          backgroundColor: Colors.blueGrey,
          child: Icon(
            Icons.add,
            color: Colors.white, // Icon color
          ),
        ),
        body: NotsViewBody(),
      ),
    );
  }
}
