import 'package:flutter/material.dart';
import 'package:nots_app/Widgets/const.dart';

class Customtextfield extends StatelessWidget {
  const Customtextfield ({super.key, required this.hint, this.maxline=1, this.onSaved});

  final String hint;
  final int maxline;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value){
        if(value?.isEmpty ?? true){
          return 'EMPTY';
        }else{
          return null;
        }
      },
      onSaved: onSaved,
      cursorColor: KPrimaryColor,
      maxLines: maxline,
      decoration: InputDecoration(
        hintText: hint,
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



