class Cursor {
  String img;
  String name;
  String dec;
  String detail;
  Cursor(
      {required this.img,
      required this.name,
      required this.dec,
      required this.detail});
  static List<Cursor> cursorlist = [
    Cursor(
        img: "assets/img4.png",
        name: "Life is short and the world is ",
        dec: "wide",
        detail:
            "At Friends tours and travel, we customize reliable and trut worthy educational tours to destinations"),
    Cursor(
      img: "assets/img1.png",
      name: "It’s a big world out there go ",
      dec: "explore",
      detail:
          "To get the best of your adventure you just need to leave and go where you like. we are waiting for you",
    ),
    Cursor(
      img: "assets/img3.png",
      name: "People don’t take trips, trips take ",
      dec: "people",
      detail:
          "To get the best of your adventure you just need to leave and go where you like. we are waiting for you",
    ),
  ];
}
