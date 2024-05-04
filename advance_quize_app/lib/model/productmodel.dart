class ProductModel {
  String first;
  String name;
  ProductModel({required this.first, required this.name});

  static List<ProductModel> productlist() {
    return [
      ProductModel(first: 'M', name: 'Math'),
      ProductModel(first: 'H', name: 'History'),
      ProductModel(first: 'G', name: 'Geography'),
      ProductModel(first: 'B', name: 'Biology'),
      ProductModel(first: 'S', name: 'Sports'),
    ];
  }
}
