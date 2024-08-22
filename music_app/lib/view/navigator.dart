import "package:flutter/material.dart";
// import "package:music_app/model/itemlist.dart";
import "package:music_app/view/favoriteproduct.dart";
import "package:music_app/view/productcart.dart";
import "package:music_app/view/productgallery.dart";
import "package:music_app/view/profile.dart";
import "package:music_app/view/search.dart";

// import "package:music_app/view/productplayer.dart";

// ignore: must_be_immutable
class NavigatorScreen extends StatefulWidget {
 

  const NavigatorScreen({super.key});

  @override
  State<NavigatorScreen> createState() => _NavigatorState();
}

class _NavigatorState extends State<NavigatorScreen> {
  int selectedIndex = 2;
  late List<Widget> screen;
  @override
  void initState() {
    super.initState();
    screen = [
      const FavoriteScreen(),
      const SearchScreen(),
      const Gallery(),
      const ProductCart(),
      const Profile(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: screen[selectedIndex],
      bottomNavigationBar: NavigationBarTheme(
        data: const NavigationBarThemeData(
          backgroundColor: Color.fromRGBO(19, 19, 19, 1),
          indicatorColor: Colors.transparent,
        ),
        child: NavigationBar(
          backgroundColor: const Color.fromRGBO(19, 19, 19, 1),
          onDestinationSelected: (int index) {
            setState(() {
              selectedIndex = index;
            });
          },
          indicatorColor: Colors.transparent,
          labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
          selectedIndex: selectedIndex,
          destinations: const [
            NavigationDestination(
              selectedIcon: Icon(
                Icons.favorite,
                size: 30,
                color: Color.fromRGBO(230, 154, 21, 1),
              ),
              icon: Icon(
                Icons.favorite_border_outlined,
                size: 30,
              ),
              label: 'Favorite',
            ),
            NavigationDestination(
              selectedIcon: Icon(
                Icons.search,
                size: 30,
                color: Color.fromRGBO(230, 154, 21, 1),
              ),
              icon: Icon(
                Icons.search,
                size: 30,
              ),
              label: 'Search',
            ),
            NavigationDestination(
              selectedIcon: Icon(
                Icons.home,
                size: 30,
                color: Color.fromRGBO(230, 154, 21, 1),
              ),
              icon: Icon(
                Icons.home,
                size: 30,
              ),
              label: 'Home',
            ),
            NavigationDestination(
              selectedIcon: Icon(
                Icons.delete_outline,
                size: 30,
                color: Color.fromRGBO(230, 154, 21, 1),
              ),
              icon: Icon(
                Icons.delete_outline,
                size: 30,
              ),
              label: 'cart',
            ),
            NavigationDestination(
              selectedIcon: Icon(
                Icons.person_sharp,
                size: 30,
                color: Color.fromRGBO(230, 154, 21, 1),
              ),
              icon: Icon(
                Icons.person_sharp,
                size: 30,
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
