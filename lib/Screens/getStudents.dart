import 'package:flutter/material.dart';

class getStudents extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return getAllStudentsStates();
  }

}

class getAllStudentsStates extends State<getStudents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("All Students Details"),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
          ),
          onPressed: () {  },
        ),
      ),
    );
  }

}