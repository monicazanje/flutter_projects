import 'package:fitness_app/view/navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});
  @override
  State<ExploreScreen> createState() => _ExploreState();
}

class _ExploreState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(),
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.height * 0.3,
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 1,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Image.asset(
                      "assets/image (2).png",
                      fit: BoxFit.fill,
                      color: Colors.black.withOpacity(0.3),
                      colorBlendMode: BlendMode.softLight,
                    ),
                  ),
                ),
                // Positioned(
                //   right: 150,
                //   left: 0,
                //   top: 0,
                //   child: Container(
                //     // height: 500.0,
                //     height: MediaQuery.of(context).size.height * 0.207,
                //     // width: MediaQuery.of(context).size.width * 0.1,
                //     decoration: BoxDecoration(
                //       color: Colors.black,
                //       borderRadius: const BorderRadius.all(Radius.circular(20)),
                //       gradient: LinearGradient(
                //         begin: Alignment.topLeft,
                //         end: Alignment.bottomLeft,
                //         colors: [
                //           Colors.black.withOpacity(0),
                //           Colors.black,
                //         ],
                //         stops: const [
                //           0.3,
                //           1.0,
                //         ],
                //       ),
                //     ),
                //   ),
                // ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigator(),
    );
  }
}
