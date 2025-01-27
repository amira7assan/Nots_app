import 'package:flutter/material.dart';
import 'package:nots_app/Widgets/CustomSearchIcon.dart';
class CustomAppPar extends StatelessWidget {
  const CustomAppPar({super.key, required this.title, required this.icon});
final String title;
final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Notes",style: TextStyle(
          fontSize: 25,color: Colors.white
        ),),
        Spacer(),
        CustomSearchIcon(icon: icon,),
      ],
    );
  }
}
