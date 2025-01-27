import 'package:flutter/material.dart';
import 'package:nots_app/Widgets/const.dart';

class Customtextfield extends StatelessWidget {
  const Customtextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: KPrimaryColor,
      decoration: InputDecoration(
        hintText: "title",
       //hintStyle: TextStyle(
         // color: KPrimaryColor
        //),
        border: buildBorder(),
      enabledBorder: buildBorder(),
        focusedBorder: buildBorder(KPrimaryColor),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(
            color: color ?? Colors.white)
      );
  }}



