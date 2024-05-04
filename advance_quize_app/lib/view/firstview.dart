import 'package:advance_quize_app/view/home.dart';
import 'package:flutter/material.dart';

class FirstView extends StatefulWidget {
  const FirstView({super.key});
  @override
  State createState() => _FirstViewState();
}

class _FirstViewState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            child: Image.asset("assets/image 1.png"),
          ),
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/image 1.png"),
                // fit: BoxFit.fill,
                // scale: 4,
              ),
            ),
            alignment: Alignment.bottomCenter,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
              },
              //child: Image.asset("assets/Logo.png"),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "q",
                    style: TextStyle(
                      color: Color.fromRGBO(131, 76, 52, 1),
                      fontWeight: FontWeight.w900,
                      fontSize: 40,
                    ),
                  ),
                  const Text(
                    "u",
                    style: TextStyle(
                      color: Color.fromRGBO(131, 76, 52, 1),
                      fontWeight: FontWeight.w900,
                      fontSize: 40,
                    ),
                  ),
                  const Text(
                    "i",
                    style: TextStyle(
                      color: Color.fromRGBO(131, 76, 52, 1),
                      fontWeight: FontWeight.w900,
                      fontSize: 40,
                    ),
                  ),
                  const Text(
                    "z",
                    style: TextStyle(
                      color: Color.fromRGBO(131, 76, 52, 1),
                      fontWeight: FontWeight.w900,
                      fontSize: 40,
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 50,
                    transform: Matrix4.rotationZ(0.20),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: const BorderRadius.only(
                        //topLeft: Radius.circular(50),
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),
                      border: Border.all(
                        color: const Color.fromRGBO(255, 255, 255, .10),
                        width: 2,
                      ),
                      color: const Color.fromRGBO(251, 193, 55, 1),
                    ),
                    child: const Icon(
                      Icons.question_mark,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 50,
                    transform: Matrix4.rotationZ(0.40),
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(166, 214, 49, 1),
                        shape: BoxShape.circle),
                    child: const Icon(
                      Icons.check,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 50,
                    transform: Matrix4.rotationZ(0.50),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: const BorderRadius.only(
                        //topLeft: Radius.circular(50),
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),
                      border: Border.all(
                        color: const Color.fromRGBO(255, 255, 255, .10),
                        width: 2,
                      ),
                      color: const Color.fromRGBO(251, 193, 55, 1),
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      "!",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ),

                  // Image(
                  //   image: AssetImage("assets/Vector (8).png"),

                  // ),
                  // Image(
                  //   image: AssetImage("assets/Vector (5).png"),
                  // ),
                  // Image(
                  //   image: AssetImage("assets/Vector (4).png"),
                  // ),
                  // Image(
                  //   image: AssetImage("assets/Vector (3).png"),
                  // ),
                  // Image(
                  //   image: AssetImage("assets/Vector (2).png"),
                  // ),
                  // Image(
                  //   image: AssetImage("assets/Vector.png"),
                  // ),
                  // Image(
                  //   image: AssetImage("assets/Vector.png"),
                  // ),
                ],
              ),
            ),
          ),
          SizedBox(
            child: Image.asset("assets/image 1.png"),
          ),
          SizedBox(
            child: Image.asset("assets/image 1.png"),
          ),
        ],
      ),
    ));
  }
}
