import 'package:flutter/material.dart';
import 'package:nots_app/Widgets/CustomTextField.dart';
import 'package:nots_app/Widgets/customButtom.dart';
class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode =AutovalidateMode.disabled;
  String ? title,subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(
            height: 32,
          ),
          Customtextfield(
            onSaved: (value){
              title = value;
            },
            hint: 'title',),
          const SizedBox(
            height: 16,
          ),
          Customtextfield(
        onSaved: (value){
         subTitle = value;},
            hint: 'subTitle',
            maxline: 5,),
          const SizedBox(
            height: 50,
          ),
          Custombuttom(
            onTap: (){
              if(formKey.currentState!.validate()){
                formKey.currentState!.save();
              }else
                {
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {
                  });
                }
            },
          ),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}

