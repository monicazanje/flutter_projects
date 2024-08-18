import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:wallpaper_app/model/photomodel.dart';

class ProductController {
  static List<Photo> trendinglist = [];
  static List<Photo> getCategoriesList() {
    List<Map<String, String>> categories = [
      {
        "name": "Cars",
        "imgUrl":
            "https://img.freepik.com/free-photo/luxurious-car-parked-highway-with-illuminated-headlight-sunset_181624-60607.jpg",
      },
      {
        "name": "Nature",
        "imgUrl":
            "https://img.freepik.com/free-photo/painting-mountain-lake-with-mountain-background_188544-9126.jpg?size=626&ext=jpg&ga=GA1.1.1141335507.1719532800&semt=sph"
      },
      {
        "name": "Bikes",
        "imgUrl":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAxoyQI6_NadGWQSKcFXq8NgWhcms96p0SKw&s"
      },
      {
        "name": "Street",
        "imgUrl":
            "https://cdn.pixabay.com/photo/2018/06/04/16/00/street-3453557_640.jpg"
      },
      {
        "name": "City",
        "imgUrl":
            "https://media.istockphoto.com/id/1356118511/photo/smart-city-and-abstract-dot-point-connect-with-gradient-line.jpg?s=612x612&w=0&k=20&c=GJldTyxDEt0GodKxGONHz9PrN9QcQQAGKONUM0vBvYc="
      },
      {
        "name": "Flowers",
        "imgUrl":
            "https://img.freepik.com/free-photo/natures-beauty-captured-colorful-flower-close-up-generative-ai_188544-8593.jpg?size=626&ext=jpg&ga=GA1.1.1141335507.1719532800&semt=sph"
      },
      {
        "name": "Animal",
        "imgUrl":
            "https://c02.purpledshub.com/uploads/sites/62/2022/01/GettyImages-534978766-e950348.jpg?webp=1&w=1200"
      },
      {
        "name": "Fruits",
        "imgUrl": "https://thumbs.dreamstime.com/b/fruit-background-4270990.jpg"
      },
      {
        "name": "Pets",
        "imgUrl":
            "https://www.shutterstock.com/image-photo/furry-friends-red-cat-corgi-260nw-1992708143.jpg"
      },
      {
        "name": "Neon",
        "imgUrl":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGyg4DkG5vlN5-MX0H8pV5xM7PhD7phM83aQ&s"
      },
      {
        "name": "Birds",
        "imgUrl":
            "https://media.istockphoto.com/id/1243410279/photo/portrait-of-two-cute-cuddling-budgies-perched-on-branch-with-blue-background-as-symbol-of.jpg?s=612x612&w=0&k=20&c=d3YXfJpe6GS1qqs6V-bQVQpLNKv2Dd6Yvh7unm1KeGU="
      },
      {
        "name": "Cool",
        "imgUrl":
            "https://i.pinimg.com/736x/a9/25/aa/a925aa898f32996abb6cc0c7e955b171.jpg"
      },
      {
        "name": "Beaches",
        "imgUrl":
            "https://cityfurnish.com/blog/wp-content/uploads/2023/08/beach-near-hotel-min.jpg"
      },
      {
        "name": "Floral",
        "imgUrl":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTc4tK6pC09brTvIVhwj1EYtK6Q3fUIuQBA7w&s"
      },
    ];
    trendinglist.clear();
    categories.forEach((category) {
      trendinglist
          .add(Photo(catimg: category["imgUrl"]!, catname: category["name"]!));
    });

    return trendinglist;
  }

  static Future<List<String>> fetchImages(String category) async {
    Uri url = Uri.parse(
        'https://api.pexels.com/v1/search?query=$category&per_page=100');
    http.Response response = await http.get(
      url,
      headers: {
        'Authorization':
            'YCAOi5EDyJehI6DZTdlA8LXUgC37jxfndTMyezGIMN0uC8KiUOzIvo0R',
      },
    );

    if (response.statusCode == 200) {
      Map<String, dynamic> data = json.decode(response.body);
      List<dynamic> photos = data['photos'];
      return photos.map((item) => item['src']['medium'] as String).toList();
    } else {
      throw Exception('Failed to load images');
    }
  }
}
