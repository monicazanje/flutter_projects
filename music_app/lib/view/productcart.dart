import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_app/model/cartmodel.dart';


class ProductCart extends StatefulWidget{
  const ProductCart({super.key});
  @override
  State<ProductCart> createState()=>_ProductCartState();
}
class _ProductCartState extends State<ProductCart>{
  
  @override
  Widget build(BuildContext context){
    final cartList = CartModel.instance.Carts;
    return  Scaffold(
      backgroundColor: const Color.fromARGB(255, 45, 45, 45),
      body: Container(
        margin: const EdgeInsets.only(left: 20, right: 20, top: 50, bottom: 20),
        child: Column(children: [
          Container(
            // margin: const EdgeInsets.all(10),
            padding:
                const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [    
                  Color.fromRGBO(203, 200, 200, 1),
                  Color.fromARGB(255, 105, 105, 105),
                  Color.fromRGBO(203, 200, 200, 1),
                  
                ],
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              
            ),
            child: Row(
              children: [
                Text(
                  " Carts",
                  style: GoogleFonts.inter(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromARGB(255, 26, 25, 25),
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                const Icon(
                  Icons.download,
                  color: Color.fromRGBO(40, 40, 40, 1),
                  size: 25,
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: cartList.length,
                // padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                 final item = cartList[index];
                  return GestureDetector(
                    onTap: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //       builder: (context) => Player(
                      //           currentIndex: index,
                      //           songList: widget.singleList),
                      //     ));
                    },
                    child: Container(
                      margin: const EdgeInsets.only(right: 15, bottom: 15),
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 34, 34, 34),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
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
                                    color:
                                        const Color.fromRGBO(203, 200, 200, 1),
                                  ),
                                ),
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.only(left: 15, right: 15),
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
        ]),
      ),
    );
  }
}