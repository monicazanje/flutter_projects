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
              child: ClipRRect(
                borderRadius:const BorderRadius.all(Radius.circular(10)),
                child: SizedBox(
                  child: Image.network(widget.imgurl),
                ),
              ),
            ),
            SizedBox(
              child: GestureDetector(
                onTap: () {
                  setwallpaper();
                },
                child: Container(
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.only(bottom: 50),
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 5,
                            color: Colors.black.withOpacity(0.1),
                            offset: const Offset(10, 4))
                      ]),
                  child: Text(
                    "Set WallPaper",
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
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
