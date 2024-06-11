import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:student_announcement/controller/productcontroller.dart';
import 'package:student_announcement/view/productfirstscreen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) {
        return ProductController();
      },
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: FirstScreen(),
      ),
    );
  }
}
