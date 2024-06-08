import 'package:flutter/material.dart';
import 'package:music_app/view/productgallery.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_app/view/producthome.dart';

class Player extends StatefulWidget {
  const Player({super.key});
  @override
  State createState() => _PlayerState();
}

class _PlayerState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            height: 550,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/Rectangle 38.png'),
                fit: BoxFit.fill,
              ),
            ),
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Alone in the Abyss',
                    style: GoogleFonts.inter(
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(230, 154, 21, 1)),
                  ),
                  Text(
                    'Youlakou',
                    style: GoogleFonts.inter(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(255, 255, 255, 1)),
                  ),
                  Container(
                    alignment: Alignment.bottomRight,
                    child: IconButton(
                      icon: const Icon(Icons.ios_share,
                          size: 25, color: Color.fromRGBO(230, 154, 21, 1)),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: Row(
              children: [
                Text(
                  "Dynamic Warmup |",
                  style: GoogleFonts.inter(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                Text(
                  "4 min",
                  style: GoogleFonts.inter(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 6,
            width: 370,
            margin: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              border: Border.all(
                style: BorderStyle.solid,
                color: const Color.fromARGB(255, 177, 174, 174),
              ),
            ),
            child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return Container(
                  height: constraints.maxHeight * 0.5,
                  width: constraints.maxWidth * 0.5,
                  alignment: Alignment.centerLeft,
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(230, 154, 21, 1)),
                );
              },
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            child: Row(
              children: [
                const Spacer(
                  flex: 1,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.repeat_one_rounded),
                  iconSize: 20,
                  color: const Color.fromRGBO(255, 255, 255, 1),
                ),
                const Spacer(
                  flex: 1,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.skip_previous_rounded),
                  iconSize: 25,
                  color: const Color.fromRGBO(255, 255, 255, 1),
                ),
                const Spacer(
                  flex: 1,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.play_circle_fill),
                  iconSize: 50,
                  color: const Color.fromRGBO(255, 255, 255, 1),
                ),
                const Spacer(
                  flex: 1,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.skip_next_rounded),
                  iconSize: 25,
                  color: const Color.fromRGBO(255, 255, 255, 1),
                ),
                const Spacer(
                  flex: 1,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.volume_up_rounded),
                  iconSize: 24,
                  color: const Color.fromRGBO(255, 255, 255, 1),
                ),
                const Spacer(
                  flex: 1,
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
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
                  builder: (context) => const Player(),
                ));
          } else if (selectedIndex == 1) {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Player(),
                ));
          } else if (selectedIndex == 2) {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomePage(),
                ));
          } else if (selectedIndex == 3) {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Player(),
                ));
          } else if (selectedIndex == 4) {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Player(),
                ));
          }
        },
      ),
    );
  }
}
