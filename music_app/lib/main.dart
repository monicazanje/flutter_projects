import 'dart:io';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:music_app/controller/productcontroller.dart';
import 'package:music_app/view/producthome.dart';

void main() {
  HttpOverrides.global = MyHttpOverrides(); 
  runApp(const MainApp());
}
class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port) => true;
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (context) {
          return ProductController();
        }),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home:HomePage(),
      ),
    );
  }
}
