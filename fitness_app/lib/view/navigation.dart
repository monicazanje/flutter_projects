import 'package:fitness_app/view/activity_screen.dart';
import 'package:fitness_app/view/exploral_screen.dart';
import 'package:fitness_app/view/home_screen.dart';
import 'package:fitness_app/view/workout_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavigator extends StatefulWidget {
  const BottomNavigator({super.key});
  @override
  State createState() => _BottomNavigator();
}

class _BottomNavigator extends State {
  int _selectindex = 0;
  void _onTap(index) {
    setState(() {
      _selectindex = index;
    });
    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const HomeScreen();
            },
          ),
        );
        break;

      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const ExploreScreen();
            },
          ),
        );
        break;

      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const ActivityScreen();
            },
          ),
        );
        break;

      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const WorkoutScreen();
            },
          ),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
          color: Colors.black),
      child: GNav(
        haptic: true,
        curve: Curves.easeOutExpo,
        duration: const Duration(milliseconds: 900),
        gap: 8,
        color: Colors.white,
        activeColor: Colors.black,
        iconSize: 24,
        tabBackgroundColor: const Color.fromRGBO(187, 242, 70, 1),
        padding: const EdgeInsets.all(5),
        onTabChange: _onTap,
        selectedIndex: _selectindex,
        tabs: const [
          GButton(
            icon: Icons.home,
            text: 'Home',
            // onPressed: () {
            //   Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //       builder: (context) {
            //         return const HomeScreen();
            //       },
            //     ),
            //   );
            // },
          ),
          GButton(
            icon: Icons.rocket_launch_outlined,
            text: 'Explore',
            // onPressed: () {
            //   Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //       builder: (context) {
            //         return const ExploreScreen();
            //       },
            //     ),
            //   );
            // },
          ),
          GButton(
            icon: Icons.analytics_outlined,
            text: 'Analytics',
            // onPressed: () {
            //   Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //       builder: (context) {
            //         return const ActivityScreen();
            //       },
            //     ),
            //   );
            // },
          ),
          GButton(
            icon: Icons.person_outline_rounded,
            text: 'Workout',
            // onPressed: () {
            //   Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //       builder: (context) {
            //         return const WorkoutScreen();
            //       },
            //     ),
            //   );
            // },
          )
        ],
      ),
    );
  }
}
