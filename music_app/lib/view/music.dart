import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_app/model/cartmodel.dart';
import 'package:music_app/model/favoritemodel.dart';
import 'package:music_app/model/itemlist.dart';


class Music extends StatefulWidget {
  final AudioPlayer advancedplayer;
  final List<ItemList> musicList;
  

  final int currentIndex;


  const Music(
      {super.key,
      required this.advancedplayer,
      required this.musicList,
      required this.currentIndex,
      });
  @override
  State<Music> createState() => _MusicState();
}

class _MusicState extends State<Music> {
  bool isPlaying = true;
  late AudioPlayer player;
  late AssetSource path;
  List<ItemList> favoritelist=[];
  List<ItemList> cartlist=[];
  Duration _duration = const Duration();
  Duration _position = const Duration();
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    player = widget.advancedplayer;
    currentIndex = widget.currentIndex;
    initPlayer();
  }


  void volum() async {
    if (isPlaying == true) {
      await player.setVolume(0);
      isPlaying = false;
    } else {
      await player.setVolume(1);
      isPlaying = true;
    }
    if (mounted) {
      setState(() {});
    }
  }

  void _seek(Duration value) {
    final position = value;
    player.seek(position);
  }

  @override
  void dispose() {
    super.dispose();
    player.dispose();
  }

  Future initPlayer() async {
    final currentsong1 = widget.musicList[currentIndex];
    path = AssetSource(currentsong1.songUrl);

    player.onDurationChanged.listen((Duration d) {
      setState(() => _duration = d);
    });
    player.onPositionChanged.listen((Duration p) {
      setState(() => _position = p);
    });
    player.onPlayerComplete.listen((_) {
      setState(() => _position = _duration);
      
    });

    await player.setSource(path);
    playPause();
  }

  void playPause() async {
    if (isPlaying) {
      await player.pause();
    } else {
      await player.play(path);
    }
    setState(() {
      isPlaying = !isPlaying;
    });
  }

  void _nextSong() {
    setState(() {
      currentIndex = (currentIndex + 1) % widget.musicList.length;
      
    });
    
    initPlayer();
  }

  void _previousSong() {
    setState(() {
      currentIndex = (currentIndex - 1 + widget.musicList.length) %
          widget.musicList.length;
      
    });
   
    initPlayer();
  }

  @override
  Widget build(BuildContext context) {
    final currentSong = widget.musicList[currentIndex];
    return Container(
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
                        height: 550,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(currentSong.imageUrl),
                  fit: BoxFit.fill,
                  scale: 4),
            ),
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Stack(
                // crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Positioned(
                    bottom: 120,
                    left: 180,
                    child: Text(
                      currentSong.name,
                      style: GoogleFonts.inter(
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(230, 154, 21, 1)),
                    ),
                  ),
                  Positioned(
                    bottom: 100,
                    left: 180,
                    child: Text(
                      currentSong.description,
                      style: GoogleFonts.inter(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(255, 255, 255, 1)),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 50,
                    child: Container(
                      height: 40,
                      width: 40,
                      // padding: const EdgeInsets.only(right: 2),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(255, 192, 192, 192),
                      ),
                      child: IconButton(
                        icon: currentSong.isFavorite == true
                            ? const Icon(
                                Icons.favorite,
                                color: Colors.red,
                                size: 27,
                              )
                            : const Icon(
                                Icons.favorite_border_outlined,
                                color: Colors.red,
                                size: 27,
                              ),
                        onPressed: (){
                          setState(() {
                            currentSong.isFavorite = !currentSong.isFavorite;
                            // FavoriteModel.addfavorite(currentSong);
                             if (FavoriteModel.instance.isFavorite(currentSong)) {
                              FavoriteModel.instance.removeFavorite(currentSong);
                            } else {
                              FavoriteModel.instance.addFavorite(currentSong);
                            }
                          });
                        }
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      height: 40,
                      width: 40,
                      padding: const EdgeInsets.only(right: 5),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(255, 232, 232, 232),
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.ios_share,
                            size: 25, color: Color.fromRGBO(230, 154, 21, 1)),
                        onPressed: () {
                           setState(() {
                            CartModel.instance.addCart(currentSong);
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const  SizedBox(height: 50,),
          Container(
            margin: const EdgeInsets.all(10),
            alignment: Alignment.topLeft,
            child: Text(
              currentSong.name,
              style: GoogleFonts.inter(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: const Color.fromRGBO(255, 255, 255, 1),
              ),
            ),
          ),
          Container(
            margin:
                const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
            child: ProgressBar(
              progress: _position,
              total: _duration,
              buffered: const Duration(milliseconds: 10000),
              thumbColor: Colors.amber,
              bufferedBarColor: Colors.white,
              progressBarColor: const Color.fromRGBO(230, 154, 21, 1),
              baseBarColor: const Color.fromRGBO(217, 217, 217, 0.19),
              timeLabelTextStyle: const TextStyle(color: Colors.white),
              timeLabelLocation: TimeLabelLocation.below,
              thumbRadius: 7,
              onSeek: (duration) {
                _seek(duration);
              },
            ),
          ),
          Row(
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
                onPressed: _previousSong,
                icon: const Icon(Icons.skip_previous_rounded),
                iconSize: 25,
                color: const Color.fromRGBO(255, 255, 255, 1),
              ),
              const Spacer(
                flex: 1,
              ),
              IconButton(
                  onPressed: playPause,
                  icon: isPlaying
                      ? const Icon(
                          Icons.pause_circle_filled,
                          size: 50,
                          color: Color.fromRGBO(255, 255, 255, 1),
                        )
                      : const Icon(
                          Icons.play_circle_fill,
                          size: 50,
                          color: Color.fromRGBO(255, 255, 255, 1),
                        )),
              const Spacer(
                flex: 1,
              ),
              IconButton(
                onPressed: _nextSong,
                icon: const Icon(Icons.skip_next_rounded),
                iconSize: 25,
                color: const Color.fromRGBO(255, 255, 255, 1),
              ),
              const Spacer(
                flex: 1,
              ),
              IconButton(
                onPressed: () {
                  volum();
                },
                icon: isPlaying == true
                    ? const Icon(
                        Icons.volume_up_rounded,
                        color: Color.fromRGBO(255, 255, 255, 1),
                        size: 30,
                      )
                    : const Icon(
                        Icons.volume_off,
                        color: Color.fromRGBO(255, 255, 255, 1),
                        size: 30,
                      ),
              ),
              const Spacer(
                flex: 1,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
