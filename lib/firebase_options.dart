// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    // ignore: missing_enum_constant_in_switch
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
    }

    throw UnsupportedError(
      'DefaultFirebaseOptions are not supported for this platform.',
    );
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBWAFGKGFtLzF6M768fDO0pmIRGBLoYIW8',
    appId: '1:244744896992:android:027fa394e1e3ad694aeb85',
    messagingSenderId: '244744896992',
    projectId: 'exammobilemanel',
    storageBucket: 'exammobilemanel.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBPopTudd1z7lnjCsEOLyl5yrHr8tBiP18',
    appId: '1:244744896992:ios:b32a3d47f3d4c0844aeb85',
    messagingSenderId: '244744896992',
    projectId: 'exammobilemanel',
    storageBucket: 'exammobilemanel.appspot.com',
    iosClientId: '244744896992-rkc3l6d0ganuhk81iq97rtleotucd4ts.apps.googleusercontent.com',
    iosBundleId: 'com.example.manel',
  );
}
