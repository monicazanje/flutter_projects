import 'package:advance_quize_app/view/firstview.dart';
import 'package:flutter/material.dart';
import 'package:advance_quize_app/view/ho.dart';
import 'package:provider/provider.dart';
import 'package:advance_quize_app/controller/quizecontroller.dart';
import 'package:advance_quize_app/view/quizescreen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) {
            return QuizeController();
          },
        )
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: QuizeScreen(),
      ),
    );
  }
}
