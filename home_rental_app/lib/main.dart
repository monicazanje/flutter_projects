import 'package:flutter/material.dart';
import 'package:home_rental_app/controller/productcontroller.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers:[
      Provider(create: (context){
        return ProductController();
      })
    ]
    child: const MaterialApp(debugShowCheckedModeBanner: false,
  ),
    );
  }
}
