import 'package:flutter/material.dart';
import 'package:pfe_managment/Screens/registerStudent.dart';

class studentDrawer extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return studentDrawerState();
  }

}

class studentDrawerState extends State<studentDrawer>{
  final minimumPadding= 5.0;
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text('PFE Report Management'),
     ),
     body: Center(child: Text('Welcome to: PFE Report Management By Manel BELHAJ GLSI3B')),
     drawer: Drawer(
       child: ListView(
         padding: EdgeInsets.only(top: minimumPadding, bottom: minimumPadding),
         children: <Widget>[
           DrawerHeader(
             child: Text('PFE Report Management'),
              decoration: BoxDecoration(
                color: Colors.amber.shade100,
              ),
           ),
           ListTile(
             title: Text('Register Student'),
             onTap: (){
               Navigator.push(context,MaterialPageRoute(builder: (context)=>registerStudent()));
             },
           ),
           ListTile(
             title: Text('Get Student'),
             onTap: (){
             },
           )
         ],
       ),
     ),
   );
  }

}