
import 'package:flutter/material.dart';
import 'package:music_app/model/productmodel.dart';


class ProductController extends ChangeNotifier{
    List<ProductModel> listofmusic = ProductModel.musiclist();
    void addproduct(ProductModel obj) {
    listofmusic.add(obj);
  }



  
}