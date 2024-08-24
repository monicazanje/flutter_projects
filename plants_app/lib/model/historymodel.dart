class Historymodel {
  final String? name;
  final bool? status;
  final String? image;
  final String? ammount;
  
  Historymodel(
      {
      required this.name,
      required this.status,
      required this.ammount,
      required this.image,
    });
}

List<Historymodel> historyData = [];