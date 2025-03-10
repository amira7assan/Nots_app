import 'package:flutter/material.dart';
import 'package:nots_app/Widgets/CustomAppPar.dart';
import 'package:nots_app/Widgets/NotsListView.dart';
class NotsViewBody extends StatelessWidget {
  const NotsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppPar(title: 'Notes', icon: Icons.search,),
         Expanded(child:  NotsListView(),),
        ],
      ),
    );
  }
}


