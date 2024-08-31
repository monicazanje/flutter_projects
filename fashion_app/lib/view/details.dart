import 'package:fashion_app/model/fashionmodal.dart';
import 'package:fashion_app/view/cart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Details extends StatefulWidget {
  final int currentindex;
  final List<Data>imglist;

  const Details({super.key,required this.currentindex,required this.imglist});
  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  String? selectedSize;
  String? selectimg;
  @override
  Widget build(BuildContext context) {
    final img=widget.imglist[widget.currentindex];
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin:
                const EdgeInsets.only(left: 20, right: 20, top: 50, bottom: 20),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: const Icon(
                    Icons.arrow_back_ios_new,
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                Text(
                  "Details",
                  style: GoogleFonts.imprima(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
                const Spacer(
                  flex: 1,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Image.asset("assets/Group 63.png",fit: BoxFit.fill,),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 30, right: 30),
            height: MediaQuery.of(context).size.height*0.5,
            width: double.infinity,
            child: Image.asset(img.img, fit: BoxFit.fill),
          ),
          Container(
            margin: const EdgeInsets.only( left: 30, right: 20,top: 30),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 55,
                  width: 210,
                  margin: const EdgeInsets.only(right: 30),
                  child: Text(
                    img.name,
                    textAlign: TextAlign.left,
                    style: GoogleFonts.imprima(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                ),
                Container(
                 
                  margin: const EdgeInsets.only(top: 10),
                  child: Row(children: [
                  GestureDetector(
                    onTap: (){
                      selectimg="assets/Ellipse 14.png";
                    },

                    child: SizedBox(
                    height: 24,
                    width: 24,
                    child: Image.asset("assets/Ellipse 14.png"),
                                    ),
                  ),
                const SizedBox(
                  width: 8,
                ),
                GestureDetector(
                  onTap: (){
                    selectimg="assets/Ellipse 15.png";
                  },
                  child: SizedBox(
                    height: 24,
                    width: 24,
                    child: Image.asset("assets/Ellipse 15.png"),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                GestureDetector(
                  onTap: (){
                    selectimg="assets/Ellipse 16.png";
                  },
                  child: SizedBox(
                    height: 24,
                    width: 24,
                    
                    child: Image.asset("assets/Ellipse 16.png"),
                    
                  ),
                ),],),
                ),
                
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              left: 30,
              top: 10
            
            ),
            child: Text(
              "Size",
              style: GoogleFonts.imprima(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
          ),
          
          Container(
            margin: const EdgeInsets.only(right: 30, left: 30),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedSize = "S";
                    });
                  },
                  child: Container(
                    height: 35,
                    width: 35,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: selectedSize == "S"
                          ? Colors.black
                          : Colors.transparent,
                    ),
                    child: Text(
                      "S",
                      style: GoogleFonts.imprima(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: selectedSize == "S"
                            ? Colors.white
                            : const Color.fromRGBO(121, 119, 128, 1),
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedSize = "M";
                    });
                  },
                  child: Container(
                    height: 35,
                    width: 35,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: selectedSize == "M"
                          ? Colors.black
                          : Colors.transparent,
                    ),
                    child: Text(
                      "M",
                      style: GoogleFonts.imprima(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: selectedSize == "M"
                            ? Colors.white
                            : const Color.fromRGBO(121, 119, 128, 1),
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedSize = "L";
                    });
                  },
                  child: Container(
                    height: 35,
                    width: 35,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: selectedSize == "L"
                          ? Colors.black
                          : Colors.transparent,
                    ),
                    child: Text(
                      "L",
                      style: GoogleFonts.imprima(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: selectedSize == "L"
                            ? Colors.white
                            : const Color.fromRGBO(121, 119, 128, 1),
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedSize = "XL";
                    });
                  },
                  child: Container(
                    height: 35,
                    width: 35,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: selectedSize == "XL"
                          ? Colors.black
                          : Colors.transparent,
                    ),
                    child: Text(
                      "XL",
                      style: GoogleFonts.imprima(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: selectedSize == "XL"
                            ? Colors.white
                            : const Color.fromRGBO(121, 119, 128, 1),
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedSize = "XXL";
                    });
                  },
                  child: Container(
                    height: 35,
                    width: 55,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: selectedSize == "XXL"
                          ? Colors.black
                          : Colors.transparent,
                    ),
                    child: Text(
                      "XXL",
                      style: GoogleFonts.imprima(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: selectedSize == "XXL"
                            ? Colors.white
                            : const Color.fromRGBO(121, 119, 128, 1),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Spacer(flex: 1,),
          Container(
            margin: const EdgeInsets.only(left: 30, right: 30,bottom: 5),
            child: Row(
              children: [
                Text(
                  "${img.price}",
                  style: GoogleFonts.imprima(
                    fontSize: 36,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                SizedBox(
                  height: 62,
                  width: 150,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const Cart();
                          },
                        ),
                      );
                    },
                    style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                        Color.fromRGBO(255, 122, 0, 1),
                      ),
                    ),
                    child: Text(
                      "Add To Cart",
                      style: GoogleFonts.imprima(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
