import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:music_app/model/itemlist.dart';
import 'package:music_app/view/music.dart';
import 'package:music_app/view/navigator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_app/view/productgallery.dart';
import 'package:path/path.dart';

class Player extends StatefulWidget {
  final List<ItemList> songList;
  int currentIndex;
  Player({super.key, required this.currentIndex, required this.songList});
  @override
  State<Player> createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  // Duration progress = const Duration(minutes: 1);
  // Duration total = const Duration(minutes: 5, seconds: 30);
  late AudioPlayer advancedplayer;
  @override
  void initState() {
    super.initState();
    advancedplayer = AudioPlayer();
  }

  @override
  Widget build(BuildContext context) {
    final currentSong = widget.songList[widget.currentIndex];
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            height: 500,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(currentSong.imageUrl),
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
                    currentSong.name,
                    style: GoogleFonts.inter(
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(230, 154, 21, 1)),
                  ),
                  Text(
                    currentSong.description,
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
          // Container(
          //   margin: const EdgeInsets.all(10),
          //   child: Row(
          //     children: [
          //       Text(
          //         "Dynamic Warmup |",
          //         style: GoogleFonts.inter(
          //           fontSize: 14,
          //           fontWeight: FontWeight.w400,
          //           color: const Color.fromRGBO(255, 255, 255, 1),
          //         ),
          //       ),
          //       const Spacer(
          //         flex: 1,
          //       ),
          //       Text(
          //         "4 min",
          //         style: GoogleFonts.inter(
          //           fontSize: 15,
          //           fontWeight: FontWeight.w400,
          //           color: const Color.fromRGBO(255, 255, 255, 1),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          // Container(
          //   margin:
          //       const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
          //   child: ProgressBar(
          //     progress: progress,
          //     total: total,
          //     buffered: const Duration(milliseconds: 10000),
          //     thumbColor: Colors.amber,
          //     // baseBarColor: Colors.red,
          //     bufferedBarColor: Colors.white,
          //     progressBarColor: const Color.fromRGBO(230, 154, 21, 1),
          //     baseBarColor: const Color.fromRGBO(217, 217, 217, 0.19),
          //     timeLabelTextStyle: const TextStyle(color: Colors.white),
          //     timeLabelLocation: TimeLabelLocation.below,

          //     thumbRadius: 7,
          //     onSeek: (duration) {
          //       progress = duration;
          //     },
          //   ),
          // ),
          Music(
            advancedplayer: advancedplayer,
            musicList: widget.songList,
            currentIndex: currentindex,
          ),

          //*************************************************************************************************************************** */
          // Container(
          //   margin: const EdgeInsets.all(10),
          //   child: Row(
          //     children: [
          //       const Spacer(
          //         flex: 1,
          //       ),
          //       IconButton(
          //         onPressed: () {},
          //         icon: const Icon(Icons.repeat_one_rounded),
          //         iconSize: 20,
          //         color: const Color.fromRGBO(255, 255, 255, 1),
          //       ),
          //       const Spacer(
          //         flex: 1,
          //       ),
          //       IconButton(
          //         onPressed: () {},
          //         icon: const Icon(Icons.skip_previous_rounded),
          //         iconSize: 25,
          //         color: const Color.fromRGBO(255, 255, 255, 1),
          //       ),
          //       const Spacer(
          //         flex: 1,
          //       ),
          //       IconButton(
          //         onPressed: () {},
          //         icon: const Icon(Icons.play_circle_fill),
          //         iconSize: 50,
          //         color: const Color.fromRGBO(255, 255, 255, 1),
          //       ),
          //       const Spacer(
          //         flex: 1,
          //       ),
          //       IconButton(
          //         onPressed: () {},
          //         icon: const Icon(Icons.skip_next_rounded),
          //         iconSize: 25,
          //         color: const Color.fromRGBO(255, 255, 255, 1),
          //       ),
          //       const Spacer(
          //         flex: 1,
          //       ),
          //       IconButton(
          //         onPressed: () {},
          //         icon: const Icon(Icons.volume_up_rounded),
          //         iconSize: 24,
          //         color: const Color.fromRGBO(255, 255, 255, 1),
          //       ),
          //       const Spacer(
          //         flex: 1,
          //       ),
          //     ],
          //   ),
          // )
        ],
      ),
      bottomNavigationBar: const NavigatorScreen(),
      // bottomNavigationBar: BottomNavigationBar(
      //   type: BottomNavigationBarType.fixed,
      //   backgroundColor: Colors.black,
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.favorite,
      //           color: Color.fromRGBO(203, 200, 200, 1),
      //           size: 30,
      //         ),
      //         label: "Favorite"),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.search,
      //         color: Color.fromRGBO(203, 200, 200, 1),
      //         size: 30,
      //       ),
      //       label: "Search",
      //     ),
      //     BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.home,
      //           color: Color.fromRGBO(203, 200, 200, 1),
      //           size: 30,
      //         ),
      //         label: "Home"),
      //     BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.delete_outline,
      //           color: Color.fromRGBO(203, 200, 200, 1),
      //           size: 30,
      //         ),
      //         label: "Cart"),
      //     BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.person,
      //           color: Color.fromRGBO(203, 200, 200, 1),
      //           size: 30,
      //         ),
      //         label: "Profile"),
      //   ],
      //   currentIndex: selectedIndex,
      //   selectedItemColor: Colors.amber[800],
      //   onTap: (int i) {
      //     setState(() {
      //       selectedIndex = i;
      //     });
      //     if (selectedIndex == 0) {
      //       Navigator.push(
      //           context,
      //           MaterialPageRoute(
      //             builder: (context) => const Player(),
      //           ));
      //     } else if (selectedIndex == 1) {
      //       Navigator.push(
      //           context,
      //           MaterialPageRoute(
      //             builder: (context) => const Player(),
      //           ));
      //     } else if (selectedIndex == 2) {
      //       Navigator.push(
      //           context,
      //           MaterialPageRoute(
      //             builder: (context) => const HomePage(),
      //           ));
      //     } else if (selectedIndex == 3) {
      //       Navigator.push(
      //           context,
      //           MaterialPageRoute(
      //             builder: (context) => const Player(),
      //           ));
      //     } else if (selectedIndex == 4) {
      //       Navigator.push(
      //           context,
      //           MaterialPageRoute(
      //             builder: (context) => const Player(),
      //           ));
      //     }
      //   },
      // ),
    );
  }
}
