import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:bearbook_art/screens/splash_screen.dart';
import 'package:provider/provider.dart';

import 'models/model_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) => FirebaseAuthProvider(),
    child : MaterialApp(
      title: 'Book App',
      home: SplashScreen(),
    )
    );
  }
}