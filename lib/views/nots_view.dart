import 'package:flutter/material.dart';
//import 'package:nots_app/Widgets/CustomNotsIteam.dart';
import 'package:nots_app/Widgets/NotsViewBody.dart';
import 'package:nots_app/Widgets/AddNoteButtomSheet.dart';
class NotsView extends StatelessWidget {
  const NotsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16)
              ),
              context: context, builder: (context){
            return const AddNoteButtomSheet();
          });
        },
        backgroundColor: Colors.blueGrey, 
        child: Icon(
          Icons.add,
          color: Colors.white, // Icon color
        ),
      ),
      body: NotsViewBody(),
    );
  }
}
