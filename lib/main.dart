import 'package:flutter/material.dart';
import 'package:nots_app/views/nots_view.dart';

void main() {
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
