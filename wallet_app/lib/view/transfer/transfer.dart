import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallet_app/view/transfer/transfertobnf.dart';

class Transfer extends StatefulWidget {
  const Transfer({super.key});
  @override
  State<Transfer> createState() => _TransferState();
}

TextEditingController contactCon = TextEditingController();

class _TransferState extends State<Transfer> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 50, right: 20, bottom: 10),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios_new_outlined,
                      size: 16,
                      color: Color.fromRGBO(87, 50, 191, 1),
                    ),
                  ),
                  Text(
                    "Back",
                    style: GoogleFonts.sora(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(87, 50, 191, 1),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: Text(
                "Transfer to",
                style: GoogleFonts.sora(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  color: const Color.fromRGBO(0, 0, 0, 1),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.all(20),
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(230, 221, 255, 1),
                    ),
                    child: const Icon(Icons.add),
                  ),
                  Text(
                    "New contact",
                    style: GoogleFonts.sora(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(0, 0, 0, 1),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: [
                  const Expanded(
                    child: Divider(),
                  ),
                  Text(
                    "  or  ",
                    style: GoogleFonts.sora(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(0, 0, 0, 1),
                    ),
                  ),
                  const Expanded(
                    child: Divider(),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: SearchBar(
                controller: contactCon,
                backgroundColor: const MaterialStatePropertyAll(Colors.white),
                constraints: const BoxConstraints(
                    minHeight: 40, minWidth: 400, maxHeight: 60, maxWidth: 420),
                shape: const MaterialStatePropertyAll(
                  BeveledRectangleBorder(borderRadius: BorderRadius.zero),
                ),
                leading: const Icon(Icons.search),
                elevation: const MaterialStatePropertyAll(0),
                side: const MaterialStatePropertyAll(
                  BorderSide(
                      style: BorderStyle.solid,
                      color: Color.fromRGBO(186, 194, 199, 13),
                      width: 0.5),
                ),
                hintText: "Search contact",
                hintStyle: MaterialStatePropertyAll(
                  GoogleFonts.inter(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(186, 194, 199, 13),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, bottom: 10, top: 10),
              child: Text(
                "Frequent contacts",
                style: GoogleFonts.sora(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: const Color.fromRGBO(0, 0, 0, 1),
                ),
              ),
            ),
            SizedBox(
              child: ListView.builder(
                itemCount: 3,
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(
                        bottom: 10, left: 20, right: 20, top: 10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  image: const DecorationImage(
                                      image: AssetImage(
                                          "assets/Profile photo.png"),
                                      fit: BoxFit.fill)),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Ali Ahmed",
                                  style: GoogleFonts.sora(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12,
                                    color: const Color.fromRGBO(25, 25, 25, 1),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "+1-300-555-0161",
                                      style: GoogleFonts.sora(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: const Color.fromRGBO(
                                            120, 131, 141, 1),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const Spacer(),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return const TransfertoBnf();
                                    },
                                  ),
                                );
                              },
                              child: const Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: Color.fromRGBO(0, 0, 0, 1),
                                size: 12,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Divider(
                          height: 1,
                          thickness: 1,
                          color: Color.fromRGBO(237, 239, 246, 1),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, bottom: 10, top: 20),
              child: Text(
                "All contacts",
                style: GoogleFonts.sora(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: const Color.fromRGBO(0, 0, 0, 1),
                ),
              ),
            ),
            SizedBox(
              child: ListView.builder(
                itemCount: 3,
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(
                        bottom: 10, left: 20, right: 20, top: 10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  image: const DecorationImage(
                                      image: AssetImage(
                                          "assets/Profile photo.png"),
                                      fit: BoxFit.fill)),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Ali Ahmed",
                                  style: GoogleFonts.sora(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12,
                                    color: const Color.fromRGBO(25, 25, 25, 1),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "+1-300-555-0161",
                                      style: GoogleFonts.sora(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: const Color.fromRGBO(
                                            120, 131, 141, 1),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const Spacer(),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return const TransfertoBnf();
                                    },
                                  ),
                                );
                              },
                              child: const Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: Color.fromRGBO(0, 0, 0, 1),
                                size: 12,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Divider(
                          height: 1,
                          thickness: 1,
                          color: Color.fromRGBO(237, 239, 246, 1),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
