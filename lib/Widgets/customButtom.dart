import 'package:flutter/material.dart';
import 'package:nots_app/Widgets/const.dart';

class Custombuttom extends StatelessWidget {
  const Custombuttom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 60,
      decoration: BoxDecoration(
        color: KPrimaryColor,
        borderRadius: BorderRadius.circular(8)
      ),
      child: Center(
        child: Text("Add",style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),),
      ),
    );
  }
}
