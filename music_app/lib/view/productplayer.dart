import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:music_app/model/itemlist.dart';
import 'package:music_app/view/music.dart';

class Player extends StatefulWidget {
  final List<ItemList> songList;
  final int initialindex;
  const Player({super.key, required this.initialindex, required this.songList});
  @override
  State<Player> createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  late int currenIndex = widget.initialindex;
  bool audiovolum = true;
  late AudioPlayer advancedplayer;
  @override
  void initState() {
    super.initState();
    advancedplayer = AudioPlayer();
  }


  @override
  void dispose() {
    advancedplayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // final currentSong = widget.songList[currenIndex];
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [

          Music(
            advancedplayer: advancedplayer,
            musicList: widget.songList,
            currentIndex: currenIndex,
           
          ),
        ],
      ),
      
    );
  }
}
