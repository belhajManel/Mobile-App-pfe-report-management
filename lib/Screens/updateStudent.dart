import 'package:flutter/material.dart';

class updateStudent extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return updateStudentState();
  }

}

class updateStudentState extends State<updateStudent>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text('Update Student'),
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