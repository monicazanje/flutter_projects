import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 45, 45, 45),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: const BoxDecoration(shape: BoxShape.circle),
              child: Image.asset(
                "assets/imgprofile.png",
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Monica Zanje",
              style: GoogleFonts.inter(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: const Color.fromARGB(255, 243, 238, 238)),
            ),
            Text(
              "@Monica",
              style: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 249, 244, 244)),
            ),
            Container(
              margin: const EdgeInsets.only(top: 50, bottom: 50),
              height: 40,
              width: 100,
              child: ElevatedButton(
                onPressed: () {},
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.grey),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))))),
                child: Text(
                  "Edit",
                  style: GoogleFonts.inter(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromARGB(255, 240, 238, 238)),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                  left: 30, right: 30, top: 30, bottom: 30),
              child: Row(
                children: [
                  SizedBox(
                    child: Column(
                      children: [
                        Text(
                          "15",
                          style: GoogleFonts.inter(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromARGB(255, 240, 238, 238)),
                        ),
                        Text(
                          "Saved",
                          style: GoogleFonts.inter(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromARGB(255, 240, 238, 238)),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    child: Column(
                      children: [
                        Text(
                          "230",
                          style: GoogleFonts.inter(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromARGB(255, 240, 238, 238)),
                        ),
                        Text(
                          "Followers",
                          style: GoogleFonts.inter(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromARGB(255, 240, 238, 238)),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    child: Column(
                      children: [
                        Text(
                          "233",
                          style: GoogleFonts.inter(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromARGB(255, 240, 238, 238)),
                        ),
                        Text(
                          "Following",
                          style: GoogleFonts.inter(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromARGB(255, 240, 238, 238)),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const Divider(),
            Container(
              margin: const EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Text(
                      "Notifications",
                      style: GoogleFonts.inter(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromARGB(255, 246, 243, 243)),
                    ),
                  ),
                  const Divider(),
                  Container(
                    margin: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Text(
                      "About",
                      style: GoogleFonts.inter(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromARGB(255, 248, 245, 245)),
                    ),
                  ),
                  const Divider(),
                  Container(
                    margin: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Text(
                      "Settings",
                      style: GoogleFonts.inter(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromARGB(255, 240, 237, 237)),
                    ),
                  ),
                  const Divider(),
                  Container(
                    margin: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Text(
                      "Logout",
                      style: GoogleFonts.inter(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromARGB(255, 244, 240, 240)),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
