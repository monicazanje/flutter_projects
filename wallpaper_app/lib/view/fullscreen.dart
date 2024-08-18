import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_wallpaper_manager/flutter_wallpaper_manager.dart';
import 'package:google_fonts/google_fonts.dart';

class FullScreen extends StatefulWidget {
  final String imgurl;

  const FullScreen({required this.imgurl, super.key});
  @override
  State<FullScreen> createState() => _FullScreenState();
}

class _FullScreenState extends State<FullScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: Column(
          children: [
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(
                    left: 30, right: 30, bottom: 30, top: 60),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 10,
                        spreadRadius: 5,
                        color: Colors.black.withOpacity(1),
                        offset: const Offset(10, 10))
                  ],
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  child: Image.network(
                    widget.imgurl,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            SizedBox(
              child: GestureDetector(
                onTap: () {
                  setwallpaper();
                },
                child: Container(
                  padding: const EdgeInsets.all(15),
                  margin: const EdgeInsets.only(bottom: 50, top: 100),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 2,
                          color: Colors.white.withOpacity(0.1),
                          offset: const Offset(5, 5))
                    ],
                  ),
                  child: Text(
                    "Set WallPaper",
                    style: GoogleFonts.aclonica(
                      fontSize: 20,
                      fontWeight: FontWeight.w200,
                      color: const Color.fromARGB(255, 232, 232, 232),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<void> setwallpaper() async {
    int location = WallpaperManager.HOME_SCREEN;

    var file = await DefaultCacheManager().getSingleFile(widget.imgurl);
    bool result =
        await WallpaperManager.setWallpaperFromFile(file.path, location);
  }
}
