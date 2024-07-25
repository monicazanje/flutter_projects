import "package:flutter/material.dart";
import "package:music_app/model/itemlist.dart";
import "package:music_app/view/favoriteproduct.dart";
import "package:music_app/view/productgallery.dart";
import "package:music_app/view/profile.dart";
// import "package:music_app/view/productplayer.dart";

// ignore: must_be_immutable
class NavigatorScreen extends StatefulWidget {
  List<ItemList> favolist;
  NavigatorScreen({super.key, required this.favolist});

  @override
  State<NavigatorScreen> createState() => _NavigatorState();
}

class _NavigatorState extends State<NavigatorScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.black,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              color: Color.fromRGBO(203, 200, 200, 1),
              size: 30,
            ),
            label: "Favorite"),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
            color: Color.fromRGBO(203, 200, 200, 1),
            size: 30,
          ),
          label: "Search",
        ),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Color.fromRGBO(203, 200, 200, 1),
              size: 30,
            ),
            label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.delete_outline,
              color: Color.fromRGBO(203, 200, 200, 1),
              size: 30,
            ),
            label: "Cart"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Color.fromRGBO(203, 200, 200, 1),
              size: 30,
            ),
            label: "Profile"),
      ],
      currentIndex: selectedIndex,
      selectedItemColor: Colors.amber[800],
      onTap: (int i) {
        setState(() {
          selectedIndex = i;
        });
        if (selectedIndex == 0) {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FavoriteScreen(favorite: widget.favolist),
              ));
        } else if (selectedIndex == 1) {
          // Navigator.push(
          //     context,
          //     MaterialPageRoute(
          //       builder: (context) => const FavoriteScreen(),
          //     ));
        } else if (selectedIndex == 2) {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Gallery(),
              ));
        } else if (selectedIndex == 3) {
          // Navigator.push(
          //     context,
          //     MaterialPageRoute(
          //       builder: (context) => const Player(),
          //     ));
        } else if (selectedIndex == 4) {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Profile(),
              ));
        }
      },
    );
  }
}
