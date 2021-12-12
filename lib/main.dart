import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.blue,
        colorScheme:
        ColorScheme.fromSwatch().copyWith(secondary: Colors.blue)),
    home: MyApp(),
  ));
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late String studentName,
      studentSpeciality,
      studentinternshipSubject,
      studentuniversitySupervisor;

  getStudentName(name) {
    this.studentName = name;
  }

  getStudentSpeciality(speciality) {
    this.studentSpeciality = speciality;
  }

  getStudentInternshipSubject(internshipSubject) {
    this.studentinternshipSubject = internshipSubject;
  }

  getStudentUniversitySupervisor(universitySupervisor) {
    this.studentuniversitySupervisor = universitySupervisor;
  }

  createData(){
    print("Created");
    DocumentReference documentReference = FirebaseFirestore.instance.collection
      ("IsticStudents").doc(studentName);

    //create Map
    Map<String, dynamic> students = {
      "studentName" : studentName,
      "studentSpeciality" : studentSpeciality,
      "studentinternshipSubject" : studentinternshipSubject,
      "studentuniversitySupervisor" : studentuniversitySupervisor
    };

    //send the map to documentReference
    documentReference.set(students).whenComplete((){
      print("$studentName created");
    });
  }

  readData(){
    print("Read");
    FirebaseFirestore? _instance;


    DocumentReference documentReference = FirebaseFirestore.instance.collection
      ("IsticStudents").doc(studentName);

    documentReference.get().then((datasnapshot){
      print(datasnapshot.data()["studentName"]);
      print(datasnapshot.data()["studentSpeciality"]);
      print(datasnapshot.data()["studentinternshipSubject"]);
      print(datasnapshot.data()["studentuniversitySupervisor"]);

    });
  }


  updateData(){
    print("Updated");
    DocumentReference documentReference = FirebaseFirestore.instance.collection
      ("IsticStudents").doc(studentName);

    //create Map
    Map<String, dynamic> students = {
      "studentName" : studentName,
      "studentSpeciality" : studentSpeciality,
      "studentinternshipSubject" : studentinternshipSubject,
      "studentuniversitySupervisor" : studentuniversitySupervisor
    };

    //send the map to documentReference
    documentReference.set(students).whenComplete((){
      print("$studentName updated");
    });
  }

  deleteData(){
    print("Deleted");
    DocumentReference documentReference = FirebaseFirestore.instance.collection
      ("IsticStudents").doc(studentName);

    documentReference.delete().whenComplete((){
      print("$studentName deleted!");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gestion Rapport PFE"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(children: <Widget>[
          Padding(
            padding: EdgeInsets.only(bottom: 8.0),
            child: TextFormField(
              decoration: InputDecoration(
                  labelText: "Full Name",
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 2.0))),
              onChanged: (String name) {
                getStudentName(name);
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 8.0),
            child: TextFormField(
              decoration: InputDecoration(
                  labelText: "Speciality",
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 2.0))),
              onChanged: (String speciality) {
                getStudentSpeciality(speciality);
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 8.0),
            child: TextFormField(
              decoration: InputDecoration(
                  labelText: "Internship Subject",
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 2.0))),
              onChanged: (String internshipSubject) {
                getStudentInternshipSubject(internshipSubject);
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 8.0),
            child: TextFormField(
              decoration: InputDecoration(
                  labelText: "University Supervisor",
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 2.0))),
              onChanged: (String universitySupervisor) {
                getStudentUniversitySupervisor(universitySupervisor);
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RaisedButton(
                  color: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16 )
                  ),
                  child: Text("Create"),
                textColor: Colors.white,
                onPressed: (){
                  createData();
                },
              ),
              RaisedButton(
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16 )
                ),
                child: Text("Read"),
                textColor: Colors.white,
                onPressed: (){
                  readData();
                },
              ),
              RaisedButton(
                color: Colors.orange,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16 )
                ),
                child: Text("Update"),
                textColor: Colors.white,
                onPressed: (){
                  updateData();
                },
              ),
              RaisedButton(
                color: Colors.red,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16 )
                ),
                child: Text("Delete"),
                textColor: Colors.white,
                onPressed: (){
                  deleteData();
                },
              ),
            ],
          ),
          StreamBuilder(
            stream: FirebaseFirestore.instance.collection("IsticStudents").snapshots(),
            builder: (context , snapshot){
                return ListView.builder(
                  shrinkWrap: true,
                    itemCount : (snapshot.data! as QuerySnapshot).docs.length,
                    itemBuilder: (context, index){
                      DocumentSnapshot documentSnapshot = (snapshot.data! as QuerySnapshot).docs[index];
                      return Row(
                        children: <Widget>[
                          Expanded(
                              child: Text(documentSnapshot["studentName"]),
                          ),
                          Expanded(
                            child: Text(documentSnapshot["studentSpeciality"]),
                          ),
                          Expanded(
                            child: Text(documentSnapshot["studentinternshipSubject"]),
                          ),
                          Expanded(
                            child: Text(documentSnapshot["studentuniversitySupervisor"]),
                          ),
                        ],
                      );
                    },
                );


            },
          )
        ]),
      ),
    );
  }
}

