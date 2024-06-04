import 'package:flutter/material.dart';
import 'package:plants_app/view/get_start_page.dart';
import 'package:provider/provider.dart';
import 'package:plants_app/controller/productcontroller.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart' as p;
import 'package:plants_app/model/plantsqimodel.dart';

dynamic database;

void main() async {
  //final database = await initialisedatabase();

  runApp(MainApp(
    database: database,
  ));

  database = openDatabase(
    p.join(await getDatabasesPath(), "plant1db.db"),
    version: 1,
    onCreate: (db, version) async {
      await db.execute('''
       CREATE TABLE plantorder (
          mobileno INTEGER PRIMARY KEY,
          plantname TEXT,
          price REAL
        )

      ''');
    },
  );
  plantlist = await getOrderData();
}

class MainApp extends StatelessWidget {
  const MainApp({super.key, required this.database});
  final Database database;

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
