class Categorymodel {
  String name;
  List<Data> namelist;

  Categorymodel({required this.name, required this.namelist});



  static List<Categorymodel> catlist = [
    Categorymodel(name: "All", namelist: Data.fashionlist),
    Categorymodel(name: "Men", namelist: Data.menlist),
    Categorymodel(name: "Women", namelist: Data.womeList),
    Categorymodel(name: "Kids", namelist: Data.kidslist),
    Categorymodel(name: "Other", namelist: Data.otherlist),
  ];
}



class Data {
  String name;
  String img;
  double price;
  Data({required this.img,required this.name,required this.price,});
  static List<Data> fashionlist=[
    Data(img: "assets/Rectangle 980.png", name: "Leather Coart", price: 257.30),
    Data(img: "assets/other/ITechShop wireless.jpg", name: "Leather Coart", price: 257.30),
    Data(
        img: "assets/kids/30 and broke.jpg", name: "Tagerine Shirt", price: 126.73),
    Data(
        img: "assets/kids/Baby Girl Dungree.jpg",
        name: "Leather Coart",
        price: 257.80),
   
    Data(img: "assets/women/Elegant Emerald Wine Dress.jpg", name: "Leather Coart", price: 257.30),
    Data(
        img: "assets/women/midi dress.jpg",
        name: "Tagerine Shirt",
        price: 240.32),
    Data(
        img: "assets/Rectangle 980 (1).png",
        name: "Leather Coart",
        price: 257.80),
    Data(
        img: "assets/other/samsung Galaxy wireless.jpg",
        name: "Tagerine Shirt",
        price: 240.32),
        Data(
        img: "assets/other/headphone.jpg",
        name: "Leather Coart",
        price: 257.80),
    Data(
        img: "assets/Rectangle 981 (1).png",
        name: "Tagerine Shirt",
        price: 240.32),
    Data(
        img: "assets/women/winter clothes.jpg", name: "Tagerine Shirt", price: 126.73),

    Data(
        img: "assets/Rectangle 980 (1).png",
        name: "Leather Coart",
        price: 257.80),
  ];
  static List<Data>menlist=[
    Data(img: "assets/Rectangle 980.png", name: "Leather Coart", price: 257.30),
    Data(
        img: "assets/Rectangle 981 (1).png",
        name: "Tagerine Shirt",
        price: 240.32),
    Data(
        img: "assets/Rectangle 981.png", name: "Tagerine Shirt", price: 126.73),
        Data(
        img: "assets/other/apple-iphone-14-pro-max-1.jpg", name: "Tagerine Shirt", price: 126.73),
    Data(
        img: "assets/Rectangle 980 (1).png",
        name: "Leather Coart",
        price: 257.80),
  ];
  static List<Data>womeList=[
    Data(img: "assets/women/Elegant Emerald Wine Dress.jpg", name: "Leather Coart", price: 257.30),
    Data(
        img: "assets/women/midi dress.jpg",
        name: "Tagerine Shirt",
        price: 240.32),
    Data(
        img: "assets/women/winter clothes.jpg", name: "Tagerine Shirt", price: 126.73),
    Data(
        img: "assets/Rectangle 980 (1).png",
        name: "Leather Coart",
        price: 257.80),
  ];
  static List<Data>kidslist=[
    Data(img: "assets/kids/2Pcs Casual cotton.jpg", name: "Leather Coart", price: 257.30),
    Data(
        img: "assets/kids/13 Rock Star ideas.jpg",
        name: "Tagerine Shirt",
        price: 240.32),
    Data(
        img: "assets/kids/30 and broke.jpg", name: "Tagerine Shirt", price: 126.73),
    Data(
        img: "assets/kids/Baby Girl Dungree.jpg",
        name: "Leather Coart",
        price: 257.80),
    Data(
        img: "assets/kids/Kid Floral Print.jpg",
        name: "Leather Coart",
        price: 257.80),
  ];
  static List<Data>otherlist=[
    Data(img: "assets/other/ITechShop wireless.jpg", name: "Leather Coart", price: 257.30),
    Data(
        img: "assets/other/samsung Galaxy wireless.jpg",
        name: "Tagerine Shirt",
        price: 240.32),
    Data(
        img: "assets/other/apple-iphone-14-pro-max-1.jpg", name: "Tagerine Shirt", price: 126.73),
    Data(
        img: "assets/other/headphone.jpg",
        name: "Leather Coart",
        price: 257.80),
  ];

}