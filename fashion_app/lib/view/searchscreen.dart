import 'package:fashion_app/model/fashionmodal.dart';
import 'package:fashion_app/view/details.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Search extends StatefulWidget{
  const Search({super.key});
  @override
  State<Search>createState()=>_SearchState();
}
class _SearchState extends State<Search>{
  List<Data>_foundUser=[];
  List<Data>_combinelist=[];
  TextEditingController search = TextEditingController();
  FocusNode searchfocus = FocusNode();
  @override
  void initState(){
    super.initState();
    _combinelist=[...Data.kidslist,...Data.menlist,...Data.otherlist,...Data.womeList];
    _foundUser=_combinelist;
  }
  void searchlist(String enteredKeyWord) {
    setState(() {
      if (enteredKeyWord.isEmpty) {
        _foundUser = _combinelist;
      } else {
        _foundUser = _combinelist.where((song) {
          return song.name.toLowerCase().contains(enteredKeyWord.toLowerCase());
        }).toList();
      }
    });
  }
  @override
  Widget build(BuildContext context){
    return  Scaffold(
      body: Column(
        children: [ 
         
          Container(
              margin: const EdgeInsets.only(
                  left: 20, right: 20, bottom: 20, top: 70),
              child: SearchBar(
                controller: search,
                focusNode: searchfocus,
                backgroundColor:
                    const WidgetStatePropertyAll(Colors.transparent),
                constraints: const BoxConstraints(
                    minHeight: 50, minWidth: 400, maxHeight: 60, maxWidth: 420),
                shape: const WidgetStatePropertyAll(
                  BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                ),
                leading: const Icon(
                  Icons.search,
                  color: Color.fromRGBO(186, 194, 199, 13),
                ),
                elevation: const WidgetStatePropertyAll(0),
                side: const WidgetStatePropertyAll(
                  BorderSide(
                      style: BorderStyle.solid,
                      color:  Color.fromRGBO(255, 122, 0, 1),
                      width: 1),
                ),
                hintText: "Search ",
                hintStyle: WidgetStatePropertyAll(
                  GoogleFonts.inter(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(186, 194, 199, 13),
                  ),
                ),
                textStyle: WidgetStatePropertyAll(
                  GoogleFonts.inter(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(186, 194, 199, 13),
                  ),
                ),
                onChanged: (value) {
                  searchlist(value);
                  
                },
              ),
            ),
            Expanded(
              flex: 10,
              child: Container(
                margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: GridView.builder(
                  padding: EdgeInsets.zero,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 3 / 4,
                      mainAxisSpacing: 4,
                      crossAxisSpacing: 4),
                  scrollDirection: Axis.vertical,
                  itemCount: _foundUser.length,
                  
                  itemBuilder: (context, index) {
                    final searchitem=_foundUser[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Details(currentindex: index,imglist: _foundUser,);
                        }));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        // decoration: BoxDecoration(
                        //     border: Border.all(style: BorderStyle.solid)),
                        child: Column(
                          
                          children: [
                            Stack(
                              children: [
                                AspectRatio(
                                  aspectRatio: 0.9,
                                  child: Image.asset(
                                    searchitem.img,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                Positioned(
                                  bottom: -5,
                                  right: 30,
                                  child: Image.asset(
                                    "assets/Cart.png",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    " \$${searchitem.price}",
                                    style: GoogleFonts.imprima(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black),
                                  ),
                                  Text(
                                  searchitem.name,
                                    style: GoogleFonts.imprima(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
          ),
    );
  }
}