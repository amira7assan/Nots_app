import 'package:flutter/material.dart';
import 'package:nots_app/Widgets/CustomNotsIteam.dart';
class NotsListView extends StatelessWidget {
  const NotsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(itemBuilder: (context,index){
        return const Padding(
          padding:  EdgeInsets.symmetric(vertical: 4),
          child:  NoteItem(),
        );
      }),
    );
  }
}