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
    Data(img: "assets/other/ITechShop wireless.jpg", name: "ItechShop Wireless", price: 699.30),
    Data(
        img: "assets/kids/30 and broke.jpg", name: "30 and Broke", price: 326.73),
    Data(
        img: "assets/kids/Baby Girl Dungree.jpg",
        name: "Baby Girl Dugree",
        price: 297.80),
   
    Data(img: "assets/women/Elegant Emerald Wine Dress.jpg", name: "Wine Dress", price: 950.30),
    Data(
        img: "assets/women/midi dress.jpg",
        name: "Midi Dress",
        price: 750.32),
    Data(
        img: "assets/Rectangle 980 (1).png",
        name: "Leather Coart",
        price: 257.80),
    Data(
        img: "assets/other/samsung Galaxy wireless.jpg",
        name: "Samsung wireless",
        price: 999.32),
        Data(
        img: "assets/women/kurties1.jpg",
        name: "Kurties",
        price: 550.80),
        Data(
        img: "assets/other/apple-iphone-14-pro-max-1.jpg", name: "iPhone 14-pro", price: 75000.73),
        Data(
        img: "assets/other/headphone.jpg",
        name: "HeadPhone",
        price: 1500.80),
    Data(
        img: "assets/Rectangle 981 (1).png",
        name: "Tagerine Shirt",
        price: 240.32),
    Data(
        img: "assets/women/winter clothes.jpg", name: "Winter girl", price: 1150.73),

    Data(
        img: "assets/Rectangle 980 (1).png",
        name: "Leather Coart",
        price: 257.80),
  ];
  static List<Data>menlist=[
    Data(img: "assets/Rectangle 980.png", name: "Tagerine Shirt", price: 1457.30),
    Data(
        img: "assets/Rectangle 981 (1).png",
        name: "Tagerine Shirt",
        price: 1240.32),
    Data(
        img: "assets/Rectangle 980 (1).png",
        name: "Tagerine Coart",
        price: 1270.80),
    
    Data(
        img: "assets/Rectangle 989.png",
        name: "Leather Coart",
        price: 1730.80),
  ];
  static List<Data>womeList=[
    Data(img: "assets/women/Elegant Emerald Wine Dress.jpg", name: "Wine Dress", price: 950.30),
    Data(
        img: "assets/women/midi dress.jpg",
        name: "Midi Dress",
        price: 750.32),
    Data(
        img: "assets/women/winter clothes.jpg", name: "Winter girl", price: 1150.73),
    Data(
        img: "assets/women/kurties1.jpg",
        name: "Kurties",
        price: 550.80),
  ];
  static List<Data>kidslist=[
    Data(img: "assets/kids/2Pcs Casual cotton.jpg", name: "Casual cotton", price: 357.30),
    Data(
        img: "assets/kids/13 Rock Star ideas.jpg",
        name: "Rock Star ideas",
        price: 540.32),
     Data(
        img: "assets/kids/30 and broke.jpg", name: "30 and Broke", price: 326.73),
      Data(
        img: "assets/kids/Baby Girl Dungree.jpg",
        name: "Baby Girl Dugree",
        price: 297.80),
    Data(
        img: "assets/kids/Kid Floral Print.jpg",
        name: "Floral print",
        price: 457.80),
  ];
  static List<Data>otherlist=[
    Data(img: "assets/other/ITechShop wireless.jpg", name: "ITechShope wireless", price: 799.30),
     Data(
        img: "assets/other/samsung Galaxy wireless.jpg",
        name: "Samsung wireless",
        price: 999.32),
    Data(
        img: "assets/other/apple-iphone-14-pro-max-1.jpg", name: "iPhone 14-pro", price: 75000.73),
    Data(
        img: "assets/other/headphone.jpg",
        name: "HeadPhone",
        price: 1500.80),
  ];

}