import 'package:fitness_app/view/activity_screen.dart';
import 'package:fitness_app/view/exploral_screen.dart';
import 'package:fitness_app/view/home_screen.dart';
import 'package:fitness_app/view/workout_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomNavigator extends StatefulWidget {
  const BottomNavigator({super.key});
  @override
  State createState() => _BottomNavigator();
}

class _BottomNavigator extends State {
  int _selectindex = 0;
  bool fillhome = false;
  bool fillhistory = false;
  bool fillcard = false;
  bool fillmore = false;
  void _selectedIcon(int index) {
    setState(() {
      _selectindex = index;
    });

    switch (index) {
      case 0:
        fillhome = true;
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const HomeScreen();
            },
          ),
        );

      case 1:
        fillhistory = true;
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const ExploreScreen();
            },
          ),
        );

      case 2:
        fillcard = true;

        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const ActivityScreen();
            },
          ),
        );

      case 3:
        fillmore = true;
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

  void backstate() {
    setState(() {
      _selectindex = 0;
      fillhome = false;
      fillhistory = false;
      fillcard = false;
      fillmore = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 10),
      height: 62,
      width: MediaQuery.of(context).size.width * 0.7,
      decoration: const BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.all(Radius.circular(40)),
        boxShadow: [
          BoxShadow(
              color: Colors.black, offset: Offset(20, 20), blurRadius: 10),
          BoxShadow(
              color: Colors.black, blurRadius: 10, offset: Offset(-20, 20)),
        ],
        border: Border(
          top: BorderSide(
            width: 1,
            // color: Color.fromRGBO(225, 227, 237, 1),
          ),
        ),
      ),
      child: Row(
        children: [
          fillhome
              ? navigationData(0, "assets/Home.png", "Home")
              : navigationImg(0, "assets/Home.png"),
          const Spacer(),
          fillhistory
              ? navigationData(1, "assets/Box 5.png", "History")
              : navigationImg(1, "assets/Box 5.png"),
          const Spacer(),
          fillcard
              ? navigationData(2, "assets/box4.png", "Card")
              : navigationImg(2, "assets/box4.png"),
          const Spacer(),
          fillmore
              ? navigationData(3, "assets/Profile.png", "More")
              : navigationImg(3, "assets/Profile.png"),
          // navigationImg(0, "assets/Home.png"),
          // const Spacer(
          //   flex: 1,
          // ),
          // navigationImg(1, "assets/Box 5.png"),
          // const Spacer(
          //   flex: 1,
          // ),
          // navigationImg(2, "assets/box4.png"),
          // const Spacer(
          //   flex: 1,
          // ),
          // navigationImg(3, "assets/Profile.png")
        ],
      ),
    );
  }

  Widget navigationImg(int index, String icon) {
    // bool isselecte = _selectindex == index;
    //Size size = MediaQuery.of(context).size;

    return InkWell(
      onTap: () {
        _selectedIcon(index);
        setState(
          () {
            _selectindex = index;
          },
        );
      },
      child: Image(
        image: AssetImage(icon),
        height: 30,
        width: 30,
        fit: BoxFit.fill,
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget navigationData(int index, String icon, String label) {
    return Container(
      height: 36,
      width: 120,
      padding: const EdgeInsets.only(left: 10, top: 5, bottom: 5),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        color: Color.fromRGBO(187, 242, 70, 1),
      ),
      child: Row(
        children: [
          Image(
            image: AssetImage(icon),
            height: 30,
            width: 30,
            fit: BoxFit.fill,
            color: Colors.black,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            label,
            style: GoogleFonts.poppins(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: const Color.fromRGBO(31, 32, 41, 1),
            ),
          ),
        ],
      ),
    );
  }
}
