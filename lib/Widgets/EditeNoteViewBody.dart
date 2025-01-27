
import 'package:flutter/material.dart';
import 'package:nots_app/Widgets/CustomAppPar.dart';
class EditeNoteViewBody extends StatelessWidget {
  const EditeNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
        SizedBox(
        height: 50,
      ),
          CustomAppPar(title: 'Edite Note', icon: Icons.check,),
        ],
      ),
    );
  }
}
