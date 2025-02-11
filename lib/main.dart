import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:nots_app/Widgets/const.dart';
import 'package:nots_app/models/noteModel.dart';
import 'package:nots_app/views/nots_view.dart';

void main() async{
  await Hive.initFlutter();
  await Hive.openBox(KNotesBox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const NotsApp());
}
class NotsApp extends StatelessWidget {
  const NotsApp({super.key});
    @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark,fontFamily: "Poppins"),
      home: const NotsView(),
    );
  }
}
