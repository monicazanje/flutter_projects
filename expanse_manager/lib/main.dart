import 'package:flutter/material.dart';
import 'package:expanse_manager/splash_screen.dart';


void main() {
  runApp(const MainApp());
}
TextEditingController unameController = TextEditingController();
TextEditingController passController = TextEditingController();
 TextEditingController conpassController = TextEditingController();
 TextEditingController nameController=TextEditingController();

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splashscreen(),
    );
  }
}
