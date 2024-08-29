import 'package:fashion_app/view/cart.dart';
import 'package:fashion_app/view/home.dart';
import 'package:fashion_app/view/profile.dart';
import 'package:fashion_app/view/searchscreen.dart';
import 'package:flutter/material.dart';

class Navigation extends StatefulWidget{
  const Navigation({super.key});
  @override
  State<Navigation>createState()=>_NavigationState();

}
class _NavigationState extends State<Navigation>{
  int selectindex=0;
  late List<Widget>screens;
  @override
  void initState(){
    super.initState();
    screens=[
      const Home(),
      const Search(),
      const Cart(),
      const Profile()
    ];
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: screens[selectindex],
      bottomNavigationBar:  NavigationBarTheme(
        data:const  NavigationBarThemeData(
          backgroundColor: Colors.white
        ),
        child:  NavigationBar(
          onDestinationSelected: (int index) {
            setState(() {
              selectindex = index;
            });
          },
          indicatorColor: Colors.white,
          labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
          selectedIndex: selectindex,
          destinations: const [
            NavigationDestination(
              selectedIcon: Icon(
                Icons.home,
                color: Colors.orange,
              ),
              icon: Icon(
                Icons.home_outlined,
                color: Colors.black,
              ),
              label: 'Home',
            ),
            NavigationDestination(
              selectedIcon: Icon(
                Icons.search,
                color: Colors.orange,
              ),
              icon: Icon(
                Icons.search_outlined,
                color: Colors.black,
              ),
              label: 'Search',
            ),
            NavigationDestination(
              selectedIcon: Icon(
                Icons.shopping_bag,
                color: Colors.orange,
              ),
              icon: Icon(
                Icons.shopping_bag_outlined,
                color: Colors.black,
              ),
              label: 'Cart',
            ),
            NavigationDestination(
              selectedIcon: Icon(
                Icons.settings_outlined,
                color: Colors.orange,
              ),
              icon: Icon(
                Icons.settings,
                color: Colors.black,
              ),
              label: 'Profile',
            ),
          ],
        )

         
        )
    );
  }
}