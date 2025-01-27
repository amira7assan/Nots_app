import 'package:flutter/material.dart';
import 'package:nots_app/Widgets/CustomAppPar.dart';
import 'package:nots_app/Widgets/NotsListView.dart';
class NotsViewBody extends StatelessWidget {
  const NotsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppPar(),
         Expanded(child:  NotsListView(),),
        ],
      ),
    );
  }
}


