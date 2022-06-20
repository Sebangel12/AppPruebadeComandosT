import 'package:firebase/app/injectdependences.dart';
import 'package:firebase/app/myapp.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'app/myapp.dart';
//import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  injectdependences();
  runApp(
    const myapp()
  );
}
