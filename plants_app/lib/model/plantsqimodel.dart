import 'package:sqflite/sqflite.dart';
import 'package:plants_app/main.dart';

class Plant {
  final int mobileno;
  final String plantname;
  final double price;

  Plant({
    required this.mobileno,
    required this.plantname,
    required this.price,
  });

  Map<String, dynamic> plantmap() {
    return {
      'mobileno': mobileno,
      'plantname': plantname,
      'price': price,
    };
  }

  @override
  String toString() {
    return '{mobileno:$mobileno,plantname:$plantname,price:$price}';
  }
}

Future<void> insertOrder(Plant obj) async {
  final localDB = await database;
  await localDB.insert(
    "plantorder",
    // obj.plantmap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
  await getOrderData();
  //print(getOrderData());
}

Future<List<Plant>> getOrderData() async {
  final localDb = await database;
  List<Map<String, dynamic>> orderMap = await localDb.query("plantorder");
  return List.generate(orderMap.length, (i) {
    return Plant(
      mobileno: orderMap[i]['mobileno'],
      plantname: orderMap[i]['plantname'],
      price: orderMap[i]['price'],
    );
  });
}

Future<void> deleteOrder(int data) async {
  final localDb = await database;

  await localDb.delete(
    "plantorder",
    where: "mobileno:?",
    whereArgs: [data],
  );
  await getOrderData();
}

Future<void> updateorder(Plant obj) async {
  final localDb = await database;

  await localDb.update(
    "plantorder",
    obj.plantmap(),
    where: 'mobileno=?',
    whereArgs: [obj.mobileno],
  );
  await getOrderData();
}

List<Plant> plantlist = [
  Plant(mobileno: 1234567890, plantname: "asdfgh", price: 350)
];
