import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Search extends StatefulWidget{
  const Search({super.key});
  @override
  State<Search>createState()=>_SearchState();
}
class _SearchState extends State<Search>{
  TextEditingController search = TextEditingController();
  FocusNode searchfocus = FocusNode();
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
                  
                },
              ),
            ),
          ],
          ),
    );
  }
}