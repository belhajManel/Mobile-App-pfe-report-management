import 'package:flutter/material.dart';

class registerStudent extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return registerStudentState();
  }

}

class registerStudentState extends State<registerStudent>{
  final minimumPadding = 5.0;
    String selectedValue = "False";
  List<DropdownMenuItem<String>> get dropdownItems{
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("True"),value: "true"),
      DropdownMenuItem(child: Text("False"),value: "false")
    ];
    return menuItems;
  }
  TextEditingController firstController = TextEditingController();
  TextEditingController secondController = TextEditingController();
  TextEditingController thirdController = TextEditingController();
  TextEditingController forthController = TextEditingController();
  TextEditingController fifthController = TextEditingController();
  TextEditingController sixthController = TextEditingController();
  TextEditingController sevenController = TextEditingController();
  TextEditingController eightController = TextEditingController();
  TextEditingController nineController = TextEditingController();
  TextEditingController tenController = TextEditingController();
  TextEditingController lastController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    TextStyle? textStyle = Theme.of(context).textTheme.subtitle2;
    return Scaffold(
      appBar: AppBar(
        title: Text('Register Student')
      ),
      body: Form(
        child: Padding(
          padding: EdgeInsets.all(minimumPadding*2),
          child: ListView(
            children: <Widget>[
              Padding(padding: EdgeInsets.only(
                  top: minimumPadding,bottom: minimumPadding),
              child:TextFormField(
                style: textStyle,
                controller: firstController ,
                validator: ( value){
                  if (value == null || value.isEmpty){
                    return "Enter your first name!";
                  }
                },
                decoration: InputDecoration(
                  labelText: 'First Name',
                  hintText: 'Enter your First Name',
                  labelStyle: textStyle,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0)
                  )
                ),
              )
              ),

              Padding(padding: EdgeInsets.only(
                  top: minimumPadding,bottom: minimumPadding),
                  child:TextFormField(
                    style: textStyle,
                    controller: secondController ,
                    validator: ( value){
                      if (value == null || value.isEmpty){
                        return "Enter your last name!";
                      }
                    },
                    decoration: InputDecoration(
                        labelText: 'Last Name',
                        hintText: 'Enter your Last Name',
                        labelStyle: textStyle,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0)
                        )
                    ),
                  )
              ),

              Padding(padding: EdgeInsets.only(
                  top: minimumPadding,bottom: minimumPadding),
                  child:TextFormField(
                    style: textStyle,
                    controller: thirdController ,
                    validator: ( value){
                      if (value == null || value.isEmpty){
                        return "Enter your first class!";
                      }
                    },
                    decoration: InputDecoration(
                        labelText: 'Class',
                        hintText: 'Enter your Class ',
                        labelStyle: textStyle,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0)
                        )
                    ),
                  )
              ),
              Padding(padding: EdgeInsets.only(
                  top: minimumPadding,bottom: minimumPadding),
                  child:TextFormField(
                    style: textStyle,
                    controller: forthController ,
                    validator: ( value){
                      if (value == null || value.isEmpty){
                        return "Enter your speciality !";
                      }
                    },
                    decoration: InputDecoration(
                        labelText: 'Speciality',
                        hintText: 'Enter your Speciality ',
                        labelStyle: textStyle,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0)
                        )
                    ),
                  )
              ),
              Padding(padding: EdgeInsets.only(
                  top: minimumPadding,bottom: minimumPadding),
                  child:TextFormField(
                    style: textStyle,
                    controller: fifthController ,
                    validator: ( value){
                      if (value == null || value.isEmpty){
                        return "Enter your university supervisor name!";
                      }
                    },
                    decoration: InputDecoration(
                        labelText: 'University Supervisor Name',
                        hintText: 'Enter your University Supervisor name',
                        labelStyle: textStyle,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0)
                        )
                    ),
                  )
              ),
              Padding(padding: EdgeInsets.only(
                  top: minimumPadding,bottom: minimumPadding),
                  child:TextFormField(
                    style: textStyle,
                    controller: sixthController ,
                    validator: ( value){
                      if (value == null || value.isEmpty){
                        return "Enter your enterprise supervisor name!";
                      }
                    },
                    decoration: InputDecoration(
                        labelText: 'Enterprise Supervisor Name',
                        hintText: 'Enter your Enterprise Supervisor Name',
                        labelStyle: textStyle,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0)
                        )
                    ),
                  )
              ),

              Padding(padding: EdgeInsets.only(
                  top: minimumPadding,bottom: minimumPadding),
                  child:TextFormField(
                    style: textStyle,
                    controller: sevenController ,
                    validator: ( value){
                      if (value == null || value.isEmpty){
                        return "Enter your PFE Subject name!";
                      }
                    },
                    decoration: InputDecoration(
                        labelText: 'PFE Subject Name',
                        hintText: 'Enter your PFE Subject name',
                        labelStyle: textStyle,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0)
                        )
                    ),
                  )
              ),

              Padding(padding: EdgeInsets.only(
                  top: minimumPadding,bottom: minimumPadding),
                  child:TextFormField(
                    style: textStyle,
                    controller: eightController ,
                    validator: ( value){
                      if (value == null || value.isEmpty){
                        return "Enter your PFE domain!";
                      }
                    },
                    decoration: InputDecoration(
                        labelText: 'PFE domain',
                        hintText: 'Enter your PFE domain',
                        labelStyle: textStyle,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0)
                        )
                    ),
                  )
              ),

              Padding(padding: EdgeInsets.only(
                  top: minimumPadding,bottom: minimumPadding),
                  child:TextFormField(
                    style: textStyle,
                    controller: nineController ,
                    validator: ( value){
                      if (value == null || value.isEmpty){
                        return "Enter your internship Status!";
                      }
                    },
                    decoration: InputDecoration(
                        labelText: 'Have you validate your internship?',
                        hintText: 'Answer by true or false',
                        labelStyle: textStyle,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0)
                        )
                    ),
                  )
              ),

              Padding(padding: EdgeInsets.only(
                  top: minimumPadding,bottom: minimumPadding),
                  child:TextFormField(
                    style: textStyle,
                    controller: tenController ,
                    validator: ( value){
                      if (value == null || value.isEmpty){
                        return "Enter your report Status!";
                      }
                    },
                    decoration: InputDecoration(
                        labelText: 'Have you validate your report?',
                        hintText: 'Answer by true or false',
                        labelStyle: textStyle,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0)
                        )
                    ),
                  )
              ),

              Padding(padding: EdgeInsets.only(
                  top: minimumPadding,bottom: minimumPadding),
                  child:TextFormField(
                    style: textStyle,
                    controller: lastController ,
                    validator: ( value){
                      if (value == null || value.isEmpty){
                        return "Enter your report signature Status!";
                      }
                    },
                    decoration: InputDecoration(
                        labelText: 'Is your report signed?',
                        hintText: 'Answer by true or false',
                        labelStyle: textStyle,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0)
                        )
                    ),
                  )
              ),


              ElevatedButton(
                  child: Text('Submit'),
                  onPressed: (){
                  })
            ],
          ),
        ),
      ),
    );
  }

}