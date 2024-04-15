import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:google_fonts/google_fonts.dart';

class GraphScreen extends StatefulWidget {
  const GraphScreen({super.key});
  @override
  State createState() => _GraphScreenState();
}

class _GraphScreenState extends State {
  Map<String, double> data = {
    "Food": 30,
    "Fule": 10,
    "Medicine": 30,
    "Entertainment": 20,
    "Shopping": 40
  };
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
            "Graphs",
            style: GoogleFonts.poppins(
              textStyle:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PieChart(
                dataMap: data,
                animationDuration: const Duration(milliseconds: 2000),
                chartType: ChartType.ring,
                chartRadius: 180,
                ringStrokeWidth: 30,
                chartValuesOptions:
                    const ChartValuesOptions(showChartValues: false),
                centerWidget: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Total",
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w400),
                      ),
                    ),
                    Text(
                      "₹ 2550.00",
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Divider(),
              ListView.builder(
                itemCount: 5,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Container(
                      //margin: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset("assets/Mask group.png"),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Medicine",
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w400),
                            ),
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                          Text(
                            "₹ 650.00",
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w400),
                            ),
                          ),
                          // IconButton(
                          //   onPressed: () {},
                          //   icon: const Icon(
                          //     Icons.arrow_forward_ios_outlined,
                          //     size: 10,
                          //   ),
                          // ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 10,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(),
              const SizedBox(
                height: 30,
              ),
              Container(
                alignment: Alignment.bottomCenter,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 42,
                    ),
                    Text(
                      "Total",
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    const Icon(
                      Icons.currency_rupee,
                      size: 17,
                      weight: 600,
                    ),
                    Text(
                      "2,550.00",
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w600),
                      ),
                    ),
                    const SizedBox(
                      width: 42,
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
