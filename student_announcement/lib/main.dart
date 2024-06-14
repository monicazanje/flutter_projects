import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:student_announcement/productfirstscreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  QuerySnapshot snapshot =
      await FirebaseFirestore.instance.collection("student").get();

  for (var doc in snapshot.docs) {
    print(doc.data().toString());
  }
// for a singular document
  //DocumentSnapshot snapshot =
  //     await FirebaseFirestore.instance.collection("student").doc("VsvI0irniIYOjYN8Fk6R").get();
  //print(snapshot.data().toString());

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstScreen(),
    );
  }
}
