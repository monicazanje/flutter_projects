import 'package:fashion_app/view/onbording.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget{
  const Profile({super.key});
  @override
  State<Profile>createState()=>_ProfileState();
}
class _ProfileState extends State<Profile>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 45, 45, 45),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 30,),
            Container(
              height: 100,
              width: 100,
              decoration: const BoxDecoration(shape: BoxShape.circle),
              child: Image.asset(
                "assets/Ellipse 901 (1).png",
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
                  color: const Color.fromARGB(255, 249, 244, 244)),
            ),
            Container(
              margin: const EdgeInsets.only(
                  top: 50, bottom: 10, left: 20, right: 20),
              child: Row(
                children: [
                  Container(
                    height: 32,
                    width: 32,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/Icon (8).png"),
                          fit: BoxFit.fill),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Full name",
                        style: GoogleFonts.sora(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: const Color.fromARGB(255, 248, 247, 247),
                        ),
                      ),
                      Text(
                        "Monika Zanje",
                        style: GoogleFonts.sora(
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                          color: const Color.fromARGB(255, 248, 247, 247),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Edit",
                      style: GoogleFonts.sora(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: const Color.fromARGB(255, 250, 89, 245),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                  top: 10, bottom: 10, left: 20, right: 20),
              child: Row(
                children: [
                  Container(
                    height: 32,
                    width: 32,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/Icon (9).png"),
                          fit: BoxFit.fill),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Mobile",
                        style: GoogleFonts.sora(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: const Color.fromARGB(255, 248, 247, 247),
                        ),
                      ),
                      Text(
                        "+962 79 890 50 14",
                        style: GoogleFonts.sora(
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                          color: const Color.fromARGB(255, 248, 247, 247),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Edit",
                      style: GoogleFonts.sora(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: const Color.fromARGB(255, 250, 89, 245),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                  top: 10, bottom: 10, left: 20, right: 20),
              child: Row(
                children: [
                  Container(
                    height: 32,
                    width: 32,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/Icon (11).png"),
                          fit: BoxFit.fill),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Email",
                        style: GoogleFonts.sora(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: const Color.fromARGB(255, 248, 247, 247),
                        ),
                      ),
                      Text(
                        "abdgfx@gmail.com",
                        style: GoogleFonts.sora(
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                          color: const Color.fromARGB(255, 248, 247, 247),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Edit",
                      style: GoogleFonts.sora(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: const Color.fromARGB(255, 250, 89, 245),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                  top: 10, bottom: 10, left: 20, right: 20),
              child: Row(
                children: [
                  Container(
                    height: 32,
                    width: 32,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/Icon (10).png"),
                          fit: BoxFit.fill),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Change password",
                    style: GoogleFonts.sora(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                      color: const Color.fromARGB(255, 248, 247, 247),
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Edit",
                      style: GoogleFonts.sora(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: const Color.fromARGB(255, 250, 89, 245),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(),
            Container(
              margin: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.notifications_none_outlined,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Notifications",
                          style: GoogleFonts.inter(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromARGB(255, 246, 243, 243)),
                        ),
                      ],
                    ),
                  ),
                  const Divider(),
                  Container(
                    margin: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "About",
                          style: GoogleFonts.inter(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromARGB(255, 248, 245, 245)),
                        ),
                      ],
                    ),
                  ),
                  const Divider(),
                  Container(
                    margin: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.settings,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Settings",
                          style: GoogleFonts.inter(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromARGB(255, 240, 237, 237)),
                        ),
                      ],
                    ),
                  ),
                  const Divider(),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const Onbording()));
                    },
                    child: Container(
                      margin: const EdgeInsets.only(top: 10, bottom: 10),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.logout,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Logout",
                            style: GoogleFonts.inter(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromARGB(255, 244, 240, 240)),
                          ),
                        ],
                      ),
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