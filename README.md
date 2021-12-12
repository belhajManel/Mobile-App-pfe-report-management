# Mobile App pfe report management

Building Flutter UI for pfe reports management connected with Firebase Simple Flutter Firebase Create Read Update Delete students infos App. 

I used a student internship report managment case study as a dummy database Firebase for this application, which consists of student name, student speciality , student university supervisor and student internship subject.

**Prequisites**

 -  Flutter version 2.2.2 or higher.
-   A registered Firebase account with a ready-to-use project.
 -   Setup Firebase and retrieve google-services.json
 -    A clean Flutter project with the [firebase_core](https://pub.dev/packages/firebase_core) plugin installed and correctly configured. If you don’t, see the following guide before moving to the next section: [Flutter: Configure Firebase for iOS and Android](https://www.kindacode.com/article/flutter-configure-firebase-for-ios-and-android/).

**Firebase Database Tutorial** 
- 
- Go to your Firebase project’s dashbaord, select “Firestore Database” then click on the “Create database” button
- Select “Start in test mode” then click on the “Next” button
- Select a location then click the “Enable” button.
- Click “+ Start Collection” to create a new collection
- Enter “IsticStudents” and click “Next
- Add the first documents to our “IsticStudents” collection. It has 4 fields: 
- - “studentName” (string) 
- - “studentSpeciality” (string)
- - “studentinternshipSubject” (string)
- - “studentuniversitySupervisor” (string)
- Fill in the fields then click “Save”


 **Installing cloud_firestore**
 -
 

1. Add the following to the **dependencies** block in your **pubspec.yaml**:
    
    cloud_firestore: ^0.16.0
    cupertino_icons: ^1.0.2
    firebase_core: ^0.7.0

2. Run:

    flutter pub get

**To Learn More About Firebase and Cloud Firestore**
- https://firebase.flutter.dev/docs/overview/#initializing-flutterfire
- https://firebase.flutter.dev/docs/firestore/usage/
