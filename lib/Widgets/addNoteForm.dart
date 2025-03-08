import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nots_app/Widgets/CustomTextField.dart';
import 'package:nots_app/Widgets/customButtom.dart';
import 'package:nots_app/cubits/AddNoteCubit/add_note_cubit.dart';
import 'package:nots_app/models/noteModel.dart';
import 'package:intl/intl.dart';
class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String ? title, subTitle;

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
            onSaved: (value) {
              title = value;
            },
            hint: 'title',),
          const SizedBox(
            height: 16,
          ),
          Customtextfield(
            onSaved: (value) {
              subTitle = value;
            },
            hint: 'subTitle',
            maxline: 5,
          ),
          const SizedBox(
            height: 50,
          ),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return Custombuttom(
                isLoading: state is AddNoteLoading ? true : false,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    var currentDate = DateTime.now();
                    var formattedCurrentDate = DateFormat("MM-dd-yyyy").format(currentDate);
                    var noteModel = NoteModel(title: title!,
                        subTitle: subTitle!,
                        date: formattedCurrentDate,
                        color: Colors.amberAccent.value);
                    BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
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

