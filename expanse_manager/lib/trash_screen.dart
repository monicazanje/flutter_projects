import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:expanse_manager/transaction_screen.dart';

class TrashScreen extends StatefulWidget {
  const TrashScreen({super.key});
  @override
  State createState() => _TrashScreenState();
}

class _TrashScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.menu),
        ),
        title: Text(
          "Trash",
          style: GoogleFonts.poppins(
            textStyle:
                const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(top: 5, bottom: 5),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.remove_circle,
                      color: Color.fromRGBO(204, 210, 227, 1),
                      size: 30,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Medicine",
                            textAlign: TextAlign.start,
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w400),
                            ),
                          ),
                          Text(
                            "Lorem Ipsum is simply dummy text of the printing and as typesetting industry... more",
                            textAlign: TextAlign.start,
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "500",
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w400),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    )
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "3 June | 11:50 AM",
                      style: TextStyle(fontSize: 13),
                    ),
                    SizedBox(
                      width: 10,
                    )
                  ],
                ),
                const Divider(),
              ],
            ),
          );
        },
      ),
    );
  }
}
