import 'package:flutter/material.dart';
import 'package:nots_app/Widgets/CustomTextField.dart';
class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 32,
          ),
          Customtextfield(hint: 'title',),
          SizedBox(
            height: 16,
          ),
          Customtextfield(hint: 'content',
          maxline: 5,),
        ],
      ),
    );
  }
}

