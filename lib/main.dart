import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:thread_clone/widgets/wrapper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Tread-clone",
      // theme: ThemeData(fontFamily: "Poppins"),
      home: Wrapper(
        isAuthenticate: false,
      ),
    );
  }
}
