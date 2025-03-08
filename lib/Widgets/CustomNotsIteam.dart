import 'package:flutter/material.dart';
import 'package:nots_app/Widgets/EditeNoteViewBody.dart';
import 'package:nots_app/models/noteModel.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});
final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
        return const EditeNoteViewBody();
        }));
      },
      child: Container(
        padding: const EdgeInsets.only(top: 24 , bottom: 24,left: 16),
        decoration:
        BoxDecoration(
            color: Color(note.color),
            borderRadius: BorderRadius.circular(16)
        ),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(note.title,
                style: TextStyle(
                 color: Colors.black,
                fontSize: 26,
              ),),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16,bottom: 12),
                child: Text(note.subTitle,style: TextStyle(
                    color: Colors.black.withOpacity(.5),
                  fontSize: 16,
                ),
                ),
              ),
              trailing: IconButton(onPressed: (){},
              icon: const Icon(Icons.delete,color: Colors.black,size: 30,),),
            ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(note.date,style: TextStyle(fontSize:13,color: Colors.black.withOpacity(.5),
                ),),
          )
          ],
        ),
      ),
    );
  }
}

