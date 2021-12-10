import 'package:flutter/material.dart';
import 'package:pfe_managment/Screens/getStudents.dart';

class deleteStudent extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return deleteStudentState();
  }

}

class deleteStudentState extends State<deleteStudent>{
  @override
  Widget build(BuildContext context) {
    return getStudents();
  }

}