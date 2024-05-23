import 'package:flutter/material.dart';
import 'package:plants_app/model/modelview.dart';

class ProductController with ChangeNotifier {
  List<ProductModel> imglist = ProductModel.imagelist();

  void addproduct(ProductModel obj) {
    imglist.add(obj);
  }

  void addtocart({required int index}) {
    imglist[index].addtocart = !imglist[index].addtocart;
    notifyListeners();
  }

  // void addquentity({required int index}) {
  //   imglist[index].quentity = imglist[index].quentity + 1;
  //   notifyListeners();
  // }

  // void removequentity({required int index}) {
  //   imglist[index].quentity = imglist[index].quentity - 1;
  //   notifyListeners();
  // }
}
