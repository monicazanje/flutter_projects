// import 'package:fashion_app/model/fashionmodal.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class Categories extends StatelessWidget {
//   final Function(int) oncatselected;
//   final int selectindex;
//   const Categories({super.key,required this.oncatselected,required this.selectindex});
//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: Container(
//         margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
//         child: ListView.separated(
//           padding: EdgeInsets.zero,
//           itemCount: Categorymodel.catlist.length,
//           scrollDirection: Axis.horizontal,
//           separatorBuilder: (context, index) {
//             return SizedBox(width: MediaQuery.of(context).size.width * 0.03);
//           },
//           itemBuilder: (context, index) {
//             final isSelected = selectedIndex == index;
//             final item=Categorymodel.catlist[index];
//             return GestureDetector(
//               onTap: () {
//                 oncatselected(index);
//               },
//               child: Container(
//                 padding: const EdgeInsets.only(left: 20, right: 20),
//                 decoration: BoxDecoration(
//                   color: isSelected ? const Color.fromRGBO(255, 122, 0, 1) : Colors.white,
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 child: Center(
//                   child: Text(
//                     Categorymodel.catlist[index].name,
//                     style: GoogleFonts.imprima(
//                       fontSize: 15,
//                       fontWeight: FontWeight.w600,
//                       color: isSelected ? Colors.white : Colors.black,
//                     ),
//                   ),
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }

  
// }
import 'package:fashion_app/model/fashionmodal.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Categories extends StatelessWidget {
  final Function(int) oncatselected;
  final int selectedIndex; // Add this line to track the selected category

  const Categories({
    super.key,
    required this.oncatselected,
    required this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
        height: 50,
        child: ListView.separated(
          padding: EdgeInsets.zero,
          itemCount: Categorymodel.catlist.length,
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context, index) {
            return SizedBox(width: MediaQuery.of(context).size.width * 0.03);
          },
          itemBuilder: (context, index) {
            final isSelected = selectedIndex == index; // Check if this category is selected
      
            return GestureDetector(
              onTap: () {
                oncatselected(index);
              },
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: isSelected
                      ? const Color.fromRGBO(255, 122, 0, 1)
                      : Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    Categorymodel.catlist[index].name,
                    style: GoogleFonts.imprima(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: isSelected ? Colors.white : Colors.black,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
