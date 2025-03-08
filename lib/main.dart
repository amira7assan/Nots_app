import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:nots_app/Widgets/const.dart';
import 'package:nots_app/cubits/AddNoteCubit/add_note_cubit.dart';
import 'package:nots_app/models/noteModel.dart';
import 'package:nots_app/simple_bloc_observer.dart';
import 'package:nots_app/views/nots_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubits/notesCubit/notes_cubit.dart';

void main() async {
  await Hive.initFlutter();
  Bloc.observer = SimpleBlocObserver();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(KNotesBox);
  runApp(const NotsApp());
}

class NotsApp extends StatelessWidget {
  const NotsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotsCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark, fontFamily: "Poppins"),
        home: const NotsView(),
      ),
    );
  }
}
