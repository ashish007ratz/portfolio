import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/screens/home.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: FirebaseOptions(
  //       apiKey: "AIzaSyB-QRv8vc7vbOOhOr_kk7i78267gJM0nhU",
  //       authDomain: "portfolio-ashishratz007.firebaseapp.com",
  //       projectId: "portfolio-ashishratz007",
  //       storageBucket: "portfolio-ashishratz007.appspot.com",
  //       messagingSenderId: "916908386319",
  //       appId: "1:916908386319:web:cac008f4007aa9f31fdb7a",
  //       measurementId: "G-S9NBYY0FET"
  //   )
  // );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
