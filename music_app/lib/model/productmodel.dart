class ProductModel {
  String? img;
  int? year;
  String? singles;
  String? discrip;
  ProductModel(
      {required this.img, required this.year, this.singles, this.discrip});

  Map<String, dynamic> musicmap() {
    return {'img': img, 'year': year, 'singles': singles, 'discrip': discrip};
  }

  static List<ProductModel> musiclist() {
    return [
      ProductModel(img: 'assets/Rectangle 32.png', year: 2020),
      ProductModel(img: 'assets/Rectangle 34.png', year: 2021),
      ProductModel(img: 'assets/Rectangle 39.png', year: 2022),
      ProductModel(
          img: 'assets/Rectangle 34.png',
          year: 2023,
          singles: 'We Are Chaos',
          discrip: 'Easy Living'),
      ProductModel(
          img: 'assets/Rectangle 40.png',
          year: 2020,
          singles: 'Smile',
          discrip: 'Berrechid')
    ];
  }
}
