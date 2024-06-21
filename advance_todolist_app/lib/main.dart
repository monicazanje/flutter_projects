import 'package:advance_todolist_app/controller/productcontroller.dart';
import 'package:advance_todolist_app/view/productscreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

dynamic database;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  database = openDatabase(
    join(await getDatabasesPath(), 'totodb.db'),
    version: 1,
    onCreate: (db, version) async {
      await db.execute(
          '''CREATE TABLE todolist (task INT PRIMARY KEY ,title TEXT, description TEXT, date TEXT)
    ''');
    },
  );

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (contxt) {
            return ProductController();
          },
          child: const MaterialApp(
            debugShowCheckedModeBanner: false,
            home: HomeScreen(),
          ),
        ),
      ],
    );
  }
}
