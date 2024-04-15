import 'package:basic_to_do_list_app/login.dart';
import 'package:flutter/material.dart';

bool homePage = false;
void main() {
  return runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "To_Do_List",
      home: LoginPage(),
    );
  }
}
