import 'package:flutter/material.dart';
import 'package:nots_app/Widgets/const.dart';

class Custombuttom extends StatelessWidget {
  const Custombuttom({super.key, this.onTap, this.isLoading = false});
  final void Function()? onTap;
  final bool isLoading ;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap
    ,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 60,
        decoration: BoxDecoration(
          color: KPrimaryColor,
          borderRadius: BorderRadius.circular(8)
        ),
        child: Center(
          child: isLoading
              ?
          CircularProgressIndicator(color: Colors.black,)
              :
          Text("Add",style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),),
        ),
      ),
    );
  }
}
