import 'package:flutter/foundation.dart';

class Photo {
  String catname;
  String catimg;
  Photo({required this.catname, required this.catimg});

  static Photo fromapitoapp(Map<String, dynamic> catimg) {
    return Photo(catname: "nature", catimg:  "https://api.pexels.com/v1/search?query=nature&per_page=1");
  }
        
}

