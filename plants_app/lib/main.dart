import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter/material.dart';
import 'package:plants_app/firebase_options.dart';
import 'package:plants_app/view/get_start_page.dart';
import 'package:provider/provider.dart';
import 'package:plants_app/controller/productcontroller.dart';
import 'package:firebase_core/firebase_core.dart';
// import 'package:sqflite/sqflite.dart';
// import 'package:path/path.dart' as p;
// import 'package:plants_app/model/plantsqimodel.dart';

dynamic database;

void main()  async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ); 
  Dio dio = createDio();
  runApp(const MyApp());
  
  
}

Dio createDio() {
  Dio dio = Dio();

  (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
      (HttpClient client) {
    client.badCertificateCallback =
        (X509Certificate cert, String host, int port) => true;
    return client;
  };

  return dio;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // final Database database;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) {
          return ProductController();
        })
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: GetStarted(),
      ),
    
    );
  }
}
