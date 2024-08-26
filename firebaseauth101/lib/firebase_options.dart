// ignore_for_file: unused_shown_name

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
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
      // TODO: Handle this case.
      case TargetPlatform.fuchsia:
      // TODO: Handle this case.
      case TargetPlatform.linux:
      // TODO: Handle this case.
      case TargetPlatform.windows:
      // TODO: Handle this case.
    }

    throw UnsupportedError(
      'DefaultFirebaseOptions are not supported for this platform.',
    );
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: "AIzaSyBXJ-jG4XljBM_xz3JpUA6Pjmjynl8gLl4",
    authDomain: "auth-sandbox-f1a0e.firebaseapp.com",
    projectId: "auth-sandbox-f1a0e",
    storageBucket: "auth-sandbox-f1a0e.appspot.com",
    messagingSenderId: "846254679094",
    appId: "1:846254679094:web:0e68fc5ec853db53d2e497",
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBuIlruUU_I4tcsrX8_xzEuGaGWgcsP-rY',
    appId: '1:762202793958:android:fb971c6643af682ba51827',
    messagingSenderId: '762202793958',
    projectId: 'maestro-sandbox-ab534',
    storageBucket: 'maestro-sandbox-ab534.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB7bfqTIY4nVw9n3FXqMxRPB6ly2sLB8-8',
    appId: '1:762202793958:ios:7fc4f9ef5bb2da94a51827',
    messagingSenderId: '762202793958',
    projectId: 'maestro-sandbox-ab534',
    storageBucket: 'maestro-sandbox-ab534.appspot.com',
    iosBundleId: 'com.example.firebaseauth101',
  );
}
