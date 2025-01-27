import 'package:flutter/material.dart';
import 'package:nots_app/Widgets/CustomAppPar.dart';
import 'package:nots_app/Widgets/CustomTextField.dart';

class EditeNoteViewBody extends StatelessWidget {
  const EditeNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            const CustomAppPar(
              title: 'Edit Note',
              icon: Icons.check,
            ),
            const Customtextfield(
              hint: 'Title',
            ),
            const SizedBox(
              height: 50,
            ),
            const Customtextfield(
              hint: 'Content',
              maxline: 5,
            ),
          ],
        ),
      ),
    );
  }
}
