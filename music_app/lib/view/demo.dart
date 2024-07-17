import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_app/model/itemlist.dart';

class Music extends StatefulWidget {
  final AudioPlayer advancedplayer;
  final List<ItemList> musicList;
  final int currentIndex;
  final VoidCallback next;
  final VoidCallback previous;

  const Music({
    super.key,
    required this.advancedplayer,
    required this.musicList,
    required this.currentIndex,
    required this.next,
    required this.previous,
  });

  @override
  State<Music> createState() => _MusicState();
}

class _MusicState extends State<Music> {
  bool isPlaying = true;
  late AudioPlayer player;
  late AssetSource path;
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
      widget.next();
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

  @override
  Widget build(BuildContext context) {
    final currentSong = widget.musicList[currentIndex];
    return Container(
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            child: Row(
              children: [
                Text(
                  currentSong.name,
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
                  "${_duration.inMinutes}:${(_duration.inSeconds % 60).toString().padLeft(2, '0')}",
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
            margin: const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
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
                onPressed: widget.previous,
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
                onPressed: widget.next,
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
        ],
      ),
    );
  }
}
