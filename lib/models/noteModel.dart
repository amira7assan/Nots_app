import "package:flutter/material.dart";
import 'package:hive/hive.dart';
part 'noteModel.g.dart';
@HiveType(typeId: 0)
class NoteModel extends HiveObject{
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String subTitle;
  @HiveField(2)
  final String date;
  @HiveField(3)
  final int color;

NoteModel({
  required this.title,
  required this.subTitle,
  required this.date,
  required this.color,});
}