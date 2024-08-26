import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'app.dart';
import 'firebase_options.dart';

const clientId =
    '846254679094-5c7stnskrr53q0s3qkeds66mendarp1s.apps.googleusercontent.com';

const useLocalFirebaseEmu = true;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  if (useLocalFirebaseEmu) {
    try {
      await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
    } catch (e) {
      // ignore: avoid_print
      print(e);
    }
  }

  runApp(const MyApp());
}
