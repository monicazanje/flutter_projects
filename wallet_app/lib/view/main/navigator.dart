import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallet_app/view/cards/productcard.dart';
import 'package:wallet_app/view/main/history.dart';
import 'package:wallet_app/view/main/home.dart';
import 'package:wallet_app/view/main/more.dart';

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
              return const Home();
            },
          ),
        );
      case 1:
        fillhistory = true;
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const History();
            },
          ),
        );
      case 2:
        fillcard = true;

        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const ProductCard();
            },
          ),
        );
      case 3:
        fillmore = true;
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const More();
            },
          ),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 10),
      height: 62,
      width: MediaQuery.of(context).size.width * 0.7,
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(
            width: 1,
            // color: Color.fromRGBO(225, 227, 237, 1),
          ),
        ),
      ),
      child: Row(
        children: [
          // fillhome
          //     ? navigationData(0, "assets/home-3-line.png", "Home")
          //     : navigationData(0, "assets/home-3-fill.png", "Home"),
          // const Spacer(),
          // fillhistory
          //     ? navigationData(1, "assets/file-list-3-line.png", "History")
          //     : navigationData(1, "assets/file-list-3-fill.png", "History"),
          // const Spacer(),
          // fillcard
          //     ? navigationData(2, "assets/bank-card-2-line.png", "Card")
          //     : navigationData(2, "assets/bank-card-2-fill.png", "Card"),
          // const Spacer(),
          // fillmore
          //     ? navigationData(3, "assets/wallet-line.png", "More")
          //     : navigationData(3, "assets/wallet-fill.png", "More"),
          navigationData(0, "assets/home-3-line.png", "Home"),
          const Spacer(
            flex: 1,
          ),
          navigationData(1, "assets/file-list-3-line.png", "History"),
          const Spacer(
            flex: 1,
          ),
          navigationData(2, "assets/bank-card-2-line.png", "Card"),
          const Spacer(
            flex: 1,
          ),
          navigationData(3, "assets/wallet-line.png", "More")
        ],
      ),
    );
  }col

  Widget navigationData(int index, String icon, String lable) {
    bool isselecte = _selectindex == index;
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Container(
          //   height: 2,
          //   decoration: BoxDecoration(
          //     color: isselecte
          //         ? const Color.fromRGBO(111, 69, 233, 1)
          //         : const Color.fromRGBO(255, 255, 255, 1),
          //   ),
          // ),
          const Spacer(),
          Image(
            image: AssetImage(icon),
            height: 24,
            width: 24,
            fit: BoxFit.fill,
            color: isselecte
                ? const Color.fromRGBO(111, 69, 233, 1)
                : const Color.fromRGBO(83, 93, 102, 1),
          ),
          const Spacer(),
          Text(
            lable,
            style: GoogleFonts.sora(
              fontWeight: FontWeight.w600,
              fontSize: 12,
              color: isselecte
                  ? const Color.fromRGBO(111, 69, 233, 1)
                  : const Color.fromRGBO(83, 93, 102, 1),
            ),
          ),
          const Spacer()
        ],
      ),
    );
  }
}
