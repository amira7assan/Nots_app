import 'package:flutter/material.dart';
import 'package:nots_app/Widgets/CustomSearchIcon.dart';
class CustomAppPar extends StatelessWidget {
  const CustomAppPar({super.key, required this.title, required this.icon, this.onPressed});
final String title;
final IconData icon;
  final void Function()? onPressed  ;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Notes",style: TextStyle(
          fontSize: 25,color: Colors.white
        ),),
        //Spacer(),
        CustomIcon.CustomIcon(onPressed: onPressed ,icon: icon,),
      ],
    );
  }
}
