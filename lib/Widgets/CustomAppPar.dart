import 'package:flutter/material.dart';
import 'package:nots_app/Widgets/CustomSearchIcon.dart';
class CustomAppPar extends StatelessWidget {
  const CustomAppPar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Notes",style: TextStyle(
          fontSize: 25,
        ),),
        Spacer(),
        CustomSearchIcon(),
      ],
    );
  }
}
