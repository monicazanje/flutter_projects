import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});
  @override
  State createState() => _CategoryscreenState();
}

class _CategoryscreenState extends State {
  TextEditingController imgController = TextEditingController();
  TextEditingController categoryController = TextEditingController();

  Future<dynamic> showMyDialog() async {
    return await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          title: Text(
            "Delete Category",
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              textStyle:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
          content: Text(
            "Are you sure you want to delete the selected category?",
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              textStyle:
                  const TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
            ),
          ),
          actions: [
            Row(
              children: [
                const SizedBox(
                  width: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all<Size>(
                      const Size(100.0, 35.0),
                    ),
                    backgroundColor: const MaterialStatePropertyAll(
                      Color.fromRGBO(14, 161, 125, 1),
                    ),
                  ),
                  child: Text(
                    "Delete",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all<Size>(
                      const Size(100, 35.0),
                    ),
                  ),
                  child: Text(
                    "Cancel",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
              ],
            )
          ],
        );
      },
    );
  }

  void addCategory() {
    showModalBottomSheet(
      isScrollControlled: true,
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Container(
                      height: 74,
                      width: 74,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(211, 207, 207, 1),
                      ),
                      child: Image.asset('assets/Group 45.png'),
                    ),
                    Text(
                      "Add",
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Image URL",
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
                    Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 3),
                        blurRadius: 10,
                        color: Color.fromRGBO(0, 0, 0, 0.15)),
                  ],
                ),
                child: TextField(
                  controller: imgController,
                  decoration: const InputDecoration(
                    hintText: "Enter url",
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
              Text(
                "Category",
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
                    Radius.circular(10),
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
                    hintText: "Enter Category Name",
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
                          builder: (context) => const CategoryScreen()),
                    );
                  },
                  style: ButtonStyle(
                    alignment: Alignment.center,
                    fixedSize: MaterialStateProperty.all<Size>(
                      const Size(130.0, 50.0),
                    ),
                    backgroundColor: const MaterialStatePropertyAll(
                      Color.fromRGBO(14, 161, 125, 1),
                    ),
                  ),
                  child: const Text("Add"),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        );
      },
    );
  }

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
          "Categories",
          style: GoogleFonts.poppins(
            textStyle:
                const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
        ),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          // mainAxisSpacing: 30,
          // crossAxisSpacing: 30,
        ),
        itemCount: 2,
        itemBuilder: (context, index) {
          return GestureDetector(
            onLongPress: () {
              showMyDialog();
            },
            child: Container(
              margin: const EdgeInsets.all(20),
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 1),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 3),
                      blurRadius: 10,
                      color: Color.fromRGBO(0, 0, 0, 0.15)),
                ],
              ),
              child: Column(
                children: [
                  const Spacer(
                    flex: 1,
                  ),
                  SizedBox(
                    height: 74,
                    width: 74,
                    child: Image.asset(
                      'assets/Mask group.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Text(
                    "Food",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          addCategory();
        },
        backgroundColor: Colors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(40),
          ),
        ),
        label: Text(
          "Add Categories",
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
    );
  }
}
