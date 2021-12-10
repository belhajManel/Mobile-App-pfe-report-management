import 'package:flutter/material.dart';

import 'Screens/studentDrawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'PfeRapportManagement', debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: studentDrawer(),
    );
  }
}