
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallet_app/view/billpayments/payment.dart';

class Paybill extends StatefulWidget {
  const Paybill({super.key});
  @override
  State createState() => _PaybillState();
}

TextEditingController searchCon = TextEditingController();

class _PaybillState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 50, right: 20, bottom: 20),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_new_outlined,
                    size: 16,
                    color: Color.fromRGBO(87, 50, 191, 1),
                  ),
                ),
                Text(
                  "Back",
                  style: GoogleFonts.sora(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromRGBO(87, 50, 191, 1),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            child: Text(
              "Pay to",
              style: GoogleFonts.sora(
                fontSize: 24,
                fontWeight: FontWeight.w400,
                color: const Color.fromRGBO(0, 0, 0, 1),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.all(20),
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(230, 221, 255, 1),
                  ),
                  child: const Icon(Icons.add),
                ),
                Text(
                  "New biller",
                  style: GoogleFonts.sora(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(0, 0, 0, 1),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: [
                const Expanded(
                  child: Divider(),
                ),
                Text(
                  "  or  ",
                  style: GoogleFonts.sora(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(0, 0, 0, 1),
                  ),
                ),
                const Expanded(
                  child: Divider(),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            child: SearchBar(
              controller: searchCon,
              backgroundColor: const MaterialStatePropertyAll(Colors.white),
              constraints: const BoxConstraints(
                  minHeight: 40, minWidth: 400, maxHeight: 60, maxWidth: 420),
              shape: const MaterialStatePropertyAll(
                BeveledRectangleBorder(borderRadius: BorderRadius.zero),
              ),
              leading: const Icon(Icons.search),
              elevation: const MaterialStatePropertyAll(0),
              side: const MaterialStatePropertyAll(
                BorderSide(
                    style: BorderStyle.solid,
                    color: Color.fromRGBO(186, 194, 199, 13),
                    width: 0.5),
              ),
              hintText: "Search biller",
              hintStyle: MaterialStatePropertyAll(
                GoogleFonts.inter(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: const Color.fromRGBO(186, 194, 199, 13),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, bottom: 10, top: 10),
            child: Text(
              "Saved billers",
              style: GoogleFonts.sora(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: const Color.fromRGBO(0, 0, 0, 1),
              ),
            ),
          ),
          SizedBox(
            child: ListView.builder(
              itemCount: 3,
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.only(
                      bottom: 10, left: 20, right: 20, top: 5),
                  child: GestureDetector(
                    onTap: () {
                      showbottomsheet();
                    },
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 32,
                              width: 32,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  image: const DecorationImage(
                                      image: AssetImage("assets/Icon (12).png"),
                                      fit: BoxFit.fill)),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Electricity",
                                  style: GoogleFonts.sora(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12,
                                    color: const Color.fromRGBO(25, 25, 25, 1),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Due: \$132.32",
                                      style: GoogleFonts.sora(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: const Color.fromRGBO(
                                            120, 131, 141, 1),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const Spacer(),
                            GestureDetector(
                              onTap: () {},
                              child: const Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: Color.fromRGBO(0, 0, 0, 1),
                                size: 12,
                              ),
                            ),
                          ],
                        ),
                        const Divider(),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Future<void> showbottomsheet() async {
    return showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: const DecorationImage(
                            image: AssetImage("assets/Icon (12).png"),
                            fit: BoxFit.fill)),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Electricity",
                        style: GoogleFonts.sora(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: const Color.fromARGB(255, 9, 9, 9),
                        ),
                      ),
                      Text(
                        "Utility",
                        style: GoogleFonts.sora(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: const Color.fromRGBO(120, 131, 141, 1),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      "Done",
                      style: GoogleFonts.sora(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(29, 98, 202, 1),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 30, bottom: 30),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      padding:
                          const EdgeInsets.only(top: 15, left: 10, bottom: 15),
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(252, 237, 237, 1),
                      ),
                      child: Text(
                        "Due: \$132.32",
                        style: GoogleFonts.sora(
                          fontSize: 21,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(184, 50, 50, 1),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10, bottom: 10),
                      width: double.infinity,
                      padding:
                          const EdgeInsets.only(top: 10, left: 10, bottom: 10),
                      decoration: BoxDecoration(
                        border: Border.all(
                          style: BorderStyle.solid,
                          color: const Color.fromARGB(255, 208, 219, 230),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Due date",
                            style: GoogleFonts.sora(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: const Color.fromRGBO(120, 131, 141, 1),
                            ),
                          ),
                          Text(
                            "December 29, 2022 - 12:32 ",
                            style: GoogleFonts.sora(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: const Color.fromRGBO(83, 93, 102, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10, bottom: 10),
                      width: double.infinity,
                      padding: const EdgeInsets.only(
                          top: 10, left: 10, bottom: 10, right: 10),
                      decoration: BoxDecoration(
                        border: Border.all(
                          style: BorderStyle.solid,
                          color: const Color.fromARGB(255, 208, 219, 230),
                        ),
                      ),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Registration no.",
                                style: GoogleFonts.sora(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                  color: const Color.fromRGBO(120, 131, 141, 1),
                                ),
                              ),
                              Text(
                                "23010412432431",
                                style: GoogleFonts.sora(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                  color: const Color.fromRGBO(83, 93, 102, 1),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const Payment();
                      },
                    ),
                  );
                },
                child: Container(
                  height: 50,
                  margin: const EdgeInsets.only(
                    bottom: 30,
                  ),
                  decoration: const BoxDecoration(color: Colors.amber),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.security_rounded,
                        color: Color.fromRGBO(0, 0, 0, 1),
                      ),
                      Text(
                        "Secure payment",
                        style: GoogleFonts.sora(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: const Color.fromRGBO(0, 0, 0, 1),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
