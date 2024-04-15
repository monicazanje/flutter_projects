import 'package:expanse_manager/category_screen.dart';
import 'package:expanse_manager/graph_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:expanse_manager/trash_screen.dart';

class TransactionScreen extends StatefulWidget {
  const TransactionScreen({super.key});
  @override
  State createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State {
  TextEditingController dateController = TextEditingController();
  TextEditingController amountController = TextEditingController();
  TextEditingController categoryController = TextEditingController();
  TextEditingController descrController = TextEditingController();
  void bootmsheet() {
    showModalBottomSheet(
      isScrollControlled: true,
      //isDismissible: true,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      context: context,
      builder: (builder) {
        return Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            margin: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Text(
                  "  Date",
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        fontSize: 13, fontWeight: FontWeight.w400),
                  ),
                ),
                Container(
                  height: 50,
                  margin: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 3),
                          blurRadius: 10,
                          color: Color.fromRGBO(0, 0, 0, 0.15)),
                    ],
                  ),
                  child: TextField(
                    controller: dateController,
                    onTap: () async {
                      DateTime? pickedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2024),
                          lastDate: DateTime(2025));

                      String formatedDate =
                          DateFormat.yMd().format(pickedDate!);

                      setState(() {
                        dateController.text = formatedDate;
                      });
                    },
                    decoration: const InputDecoration(
                      hintText: "date",
                      hintStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      border: InputBorder.none,
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "  Amount",
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        fontSize: 13, fontWeight: FontWeight.w400),
                  ),
                ),
                Container(
                  height: 50,
                  margin: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 3),
                          blurRadius: 10,
                          color: Color.fromRGBO(0, 0, 0, 0.15)),
                    ],
                  ),
                  child: TextField(
                    controller: amountController,
                    decoration: const InputDecoration(
                      hintText: "Amount",
                      hintStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "  Category",
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        fontSize: 13, fontWeight: FontWeight.w400),
                  ),
                ),
                Container(
                  height: 50,
                  margin: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 3),
                          blurRadius: 10,
                          color: Color.fromRGBO(0, 0, 0, 0.15)),
                    ],
                  ),
                  child: TextField(
                    controller: categoryController,
                    decoration: const InputDecoration(
                      hintText: "Categoty",
                      hintStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      border: InputBorder.none,
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "  Description",
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        fontSize: 13, fontWeight: FontWeight.w400),
                  ),
                ),
                Container(
                  height: 50,
                  margin: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 3),
                          blurRadius: 10,
                          color: Color.fromRGBO(0, 0, 0, 0.15)),
                    ],
                  ),
                  child: TextField(
                    controller: descrController,
                    decoration: const InputDecoration(
                      hintText: "Description",
                      hintStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TransactionScreen()),
                      );
                    },
                    style: ButtonStyle(
                        alignment: Alignment.center,
                        fixedSize: MaterialStateProperty.all<Size>(
                          const Size(130.0, 50.0),
                        ),
                        backgroundColor: const MaterialStatePropertyAll(
                            Color.fromRGBO(14, 161, 125, 1))),
                    child: const Text("Add"),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: const Icon(Icons.menu,),
        // leading: IconButton(
        //   onPressed: () {
        //     Navigator.push(
        //       context,
        //       MaterialPageRoute(builder: (context) => const Menu_Screen()),
        //     );
        //   },
        //   icon: const Icon(Icons.menu),
        // ),
        title: Text(
          "June 2022",
          style: GoogleFonts.poppins(
            textStyle:
                const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
        ),
        actions: const [
          Icon(Icons.search),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(shape: BoxShape.circle),
                        child: Image.asset("assets/Mask group.png"),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Medicine",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  // Text(
                                  //   "Lorem Ipsum is simply dummy text of the ",
                                  //   style: TextStyle(fontSize: 13),
                                  // ),
                                  Container(
                                    child: const Text(
                                      "Lorem Ipsum is simply dummy text of the  ",
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Row(
                              children: [
                                Icon(
                                  Icons.remove_circle,
                                  color: Colors.red,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "500",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  width: 5,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
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
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          bootmsheet();
        },
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(40),
          ),
        ),
        backgroundColor: Colors.white,
        label: Text(
          "Add Transaction",
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        icon: const Icon(
          Icons.add_circle,
          color: Color.fromRGBO(14, 161, 125, 1),
          size: 40,
        ),
      ),
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            Text(
              "Expance Manager",
              style: GoogleFonts.poppins(
                textStyle:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
            Text(
              "Saves all your Transactions",
              style: GoogleFonts.poppins(
                textStyle:
                    const TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                margin: const EdgeInsets.only(right: 70),
                height: 40,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(14, 121, 125, 0.15),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    Image.asset('assets/Subtract.png'),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      " Transaction",
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //),
            const Spacer(
              flex: 1,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const GraphScreen()),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.only(right: 70),
                  height: 40,
                  decoration: const BoxDecoration(
                    //color: Color.fromRGBO(14, 121, 125, 0.15),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      Image.asset('assets/icon1.png'),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        " Graphs",
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                )),
            const Spacer(
              flex: 1,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CategoryScreen()),
                );
              },
              child: Container(
                margin: const EdgeInsets.only(right: 70),
                height: 40,
                decoration: const BoxDecoration(
                  //color: Color.fromRGBO(14, 121, 125, 0.15),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    Image.asset('assets/Subtract (1).png'),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      " Category",
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TrashScreen(),
                  ),
                );
              },
              child: Container(
                margin: const EdgeInsets.only(right: 70),
                height: 40,
                decoration: const BoxDecoration(
                  //color: Color.fromRGBO(14, 121, 125, 0.15),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    Image.asset('assets/Vector.png'),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      " Trash",
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                margin: const EdgeInsets.only(right: 70),
                height: 40,
                decoration: const BoxDecoration(
                  //color: Color.fromRGBO(14, 121, 125, 0.15),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    Image.asset('assets/Vector (1).png'),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      " About us",
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(
              flex: 15,
            ),
            const SizedBox(
              height: 15,
            )
          ],
        ),
      ),
    );
  }
}
