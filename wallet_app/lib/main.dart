import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wallet_app/controller/productcontroller.dart';
import 'package:wallet_app/view/logint&reg/splash.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (create) {
            return ProductController();
          },
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Splash(),
      ),
    );
  }
}
