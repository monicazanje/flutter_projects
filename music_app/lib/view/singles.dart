import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_app/model/itemlist.dart';
import 'package:music_app/view/navigator.dart';
import 'package:music_app/view/productplayer.dart';
// import 'package:music_app/view/productplayer.dart';

class Singles extends StatefulWidget {
  final List<ItemList> singleList;
  const Singles({super.key, required this.singleList});
  @override
  State<Singles> createState() => _SinglesState();
}

class _SinglesState extends State<Singles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 45, 45, 45),
      body: Container(
        margin: const EdgeInsets.only(top: 70, left: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Popular singles",
              style: GoogleFonts.inter(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: const Color.fromRGBO(203, 200, 200, 1),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: widget.singleList.length,
                  // padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    final item = widget.singleList[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Player(
                                  currentIndex: index,
                                  songList: widget.singleList),
                            ));
                      },
                      child: Container(
                        margin: const EdgeInsets.only(right: 15, bottom: 15),
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 34, 34, 34),
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: SizedBox(
                                height: 100,
                                width: 100,
                                child: Image.asset(
                                  item.imageUrl,
                                  fit: BoxFit.fill,
                                  scale: 4,
                                ),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(left: 15),
                                  child: Text(
                                    item.name,
                                    style: GoogleFonts.inter(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: const Color.fromRGBO(
                                          203, 200, 200, 1),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                      left: 15, right: 15),
                                  child: Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: item.year,
                                          style: GoogleFonts.inter(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: const Color.fromRGBO(
                                                134, 133, 133, 1),
                                          ),
                                        ),
                                        TextSpan(
                                          text: " * ",
                                          style: GoogleFonts.inter(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: const Color.fromRGBO(
                                                134, 133, 133, 1),
                                          ),
                                        ),
                                        TextSpan(
                                          text: item.description,
                                          style: GoogleFonts.inter(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: const Color.fromRGBO(
                                                134, 133, 133, 1),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(
                              flex: 1,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                padding: const EdgeInsets.all(15),
                                child: Column(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(top: 5),
                                      height: 5,
                                      width: 5,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color.fromRGBO(203, 200, 200, 1),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(top: 5),
                                      height: 5,
                                      width: 5,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color.fromRGBO(203, 200, 200, 1),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(top: 5),
                                      height: 5,
                                      width: 5,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color.fromRGBO(203, 200, 200, 1),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
      bottomNavigationBar:  NavigatorScreen(favolist:widget. singleList,),
    );
  }
}
