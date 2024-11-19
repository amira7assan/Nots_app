import 'package:flutter/material.dart';
//import 'package:nots_app/Widgets/CustomNotsIteam.dart';
import 'package:nots_app/Widgets/NotsViewBody.dart';

class NotsView extends StatelessWidget {
  const NotsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blueGrey, // Set the background color here
        child: Icon(
          Icons.add,
          color: Colors.white, // Icon color
        ),
      ),
      body: NotsViewBody(),
    );
  }
}
