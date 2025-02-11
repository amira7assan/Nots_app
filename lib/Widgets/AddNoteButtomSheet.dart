import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nots_app/Widgets/addNoteForm.dart';
import 'package:nots_app/cubits/AddNoteCubit/add_note_cubit.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
class AddNoteButtomSheet extends StatelessWidget {
   const AddNoteButtomSheet({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state){
            if(state is AddNoteFailure){
             print("error");
            }
            if(state is AddNoteSuccess){
              Navigator.pop(context);
            }
          } ,
          builder: (context, state) {
            return ModalProgressHUD(
                inAsyncCall: state is AddNoteLoading?true:false,
                child:const AddNoteForm());
          },
        ),
      ),
    );
  }
}

