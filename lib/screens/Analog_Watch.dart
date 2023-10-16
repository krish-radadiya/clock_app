// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';
import 'dart:math';

class Analog_Watch extends StatefulWidget {
  const Analog_Watch({Key? key}) : super(key: key);

  @override
  State<Analog_Watch> createState() => _Analog_WatchState();
}

class _Analog_WatchState extends State<Analog_Watch> {
  List<String> day = [
    "MONDAY",
    "TUESDAY",
    "WEDNESDAY",
    "THURSDAY",
    "FRIDAY",
    "SATURDAY",
    "SUNDAY",
  ];
  List<String> month = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December",
  ];
  String a = '';
  String p = 'AM';
  String q = 'PM';
  String r = '';
  int s = 0;
  int m = 0;
  int h = 0;
  int d = 0;
  int mm = 0;
  int w = 0;

  myClock() {
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        s = DateTime.now().second;
        m = DateTime.now().minute;
        h = DateTime.now().hour;
        d = DateTime.now().day;
        mm = DateTime.now().month;
        w = DateTime.now().weekday;
        if (h > 12) {
          h -= 12;
        }
      });
      myClock();
    });
  }

  @override
  void initState() {
    myClock();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: ListTile(
                  title: const Text("Analog Watch"),
                  onTap: () {
                    Navigator.of(context).pushNamed('/Strap');
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 200),
                child: ListTile(
                  title: const Text("Strap Watch"),
                  onTap: () {
                    Navigator.of(context).pushNamed('/Strap');
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ListTile(
                  title: const Text("Digital Watch"),
                  onTap: () {
                    Navigator.of(context).pushNamed('/Digital');
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "${DateTime.now().hour}:${DateTime.now().minute}:${DateTime.now().second} ${(DateTime.now().hour >= 12) ? q : p}",
                    style: const TextStyle(fontSize: 35, color: Colors.black),
                  ),
                  Text(
                    "${DateTime.now().day}-${month[mm - 1]}-${DateTime.now().year}",
                    style: const TextStyle(fontSize: 35, color: Colors.black),
                  ),
                  Text(
                    "${day[w - 1]}",
                    style: const TextStyle(fontSize: 35, color: Colors.black),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                // ...List.generate(
                //   60,
                //   (index) => Transform.rotate(
                //     angle: (index / 60) * (2 * pi),
                //     child: Stack(
                //       children: [
                //         Divider(
                //           thickness: (index % 5 == 0)
                //               ? (index % 15 == 0)
                //                   ? 12
                //                   : 7
                //               : 2,
                //           endIndent: MediaQuery.of(context).size.width * 0.90,
                //           color:
                //               (index % 15 == 0) ? Colors.blueAccent : Colors.grey,
                //         ),
                // Transform.rotate(
                //   angle: (pi * 2),
                //   child: Padding(
                //     padding: const EdgeInsets.only(left: 10),
                //     child: Transform.scale(
                //       scale: 2,
                //       child: Text(
                //         (index == 0) ? "9" : "",
                //         style: const TextStyle(
                //           // fontSize: 20,
                //           fontWeight: FontWeight.bold,
                //           color: Colors.white,
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
                // Transform.rotate(
                //   angle: (3 * pi / 2),
                //   child: Padding(
                //     padding: const EdgeInsets.only(top: 10),
                //     child: Transform.scale(
                //       scale: 2,
                //       child: Text(
                //         (index == 15) ? "12" : "",
                //         style: const TextStyle(
                //           // fontSize: 20,
                //           fontWeight: FontWeight.bold,
                //           color: Colors.white,
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
                // Transform.rotate(
                //   angle: (pi),
                //   child: Padding(
                //     padding: const EdgeInsets.only(right: 10),
                //     child: Transform.scale(
                //       scale: 2,
                //       child: Text(
                //         (index == 30) ? "3" : "",
                //         style: const TextStyle(
                //           // fontSize: 20,
                //           fontWeight: FontWeight.bold,
                //           color: Colors.white,
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
                // Transform.rotate(
                //   angle: (pi / 2),
                //   child: Padding(
                //     padding: const EdgeInsets.only(bottom: 10),
                //     child: Transform.scale(
                //       scale: 2,
                //       child: Text(
                //         (index == 45) ? "6" : "",
                //         style: const TextStyle(
                //           // fontSize: 20,
                //           fontWeight: FontWeight.bold,
                //           color: Colors.white,
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
                //       ],
                //     ),
                //   ),
                // ),

                Center(
                  child: Container(
                    height: 320,
                    width: 320,
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(800),
                    ),
                    child: Center(
                      child: Stack(
                        children: [
                          Center(
                            child: Container(
                              height: 230,
                              width: 230,
                              decoration: BoxDecoration(
                                color: Colors.black87,
                                borderRadius: BorderRadius.circular(800),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: const EdgeInsets.only(left: 183),
                            child: SingleChildScrollView(
                              child: const Column(
                                children: [
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  const Text(
                                    "12",
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 210,
                                  ),
                                  Text(
                                    "6",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const Padding(
                            padding: const EdgeInsets.only(top: 200),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: const [
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "9",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 250,
                                  ),
                                  Text(
                                    "3",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Transform.rotate(
                  angle: (pi / 2),
                  child: Transform.rotate(
                    angle: (pi * 2) * (s / 60),
                    child: Row(
                      children: [
                        Container(
                          height: 15,
                          width: 15,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        Divider(
                          color: Colors.orange,
                          thickness: 2,
                          endIndent: MediaQuery.of(context).size.width * 0.2,
                          indent: MediaQuery.of(context).size.width * 0.2,
                        ),
                      ],
                    ),
                  ),
                ),
                Transform.scale(
                  scale: 6,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    color: Colors.greenAccent,
                    value: DateTime.now().minute / 60,
                  ),
                ),
                // Transform.rotate(
                //   angle: (3 * pi / 2),
                //   child: Transform.rotate(
                //     angle: (pi * 2) * (m / 60),
                //     child: const Divider(
                //       color: Colors.white,
                //       thickness: 4,
                //       endIndent: 80,
                //       indent: 200,
                //     ),
                //   ),
                // ),
                Transform.rotate(
                  angle: (3 * pi / 2),
                  child: Transform.rotate(
                    angle: (pi * 2) * (h / 12),
                    child: const Divider(
                      color: Colors.white,
                      thickness: 6,
                      endIndent: 110,
                      indent: 200,
                    ),
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.only(left: 50),
                //   child: Text(
                //     "$d/$mm",
                //     style: const TextStyle(
                //       color: Colors.white,
                //       fontWeight: FontWeight.bold,
                //       fontSize: 30,
                //     ),
                //   ),
                // ),
                // Padding(
                //   padding: const EdgeInsets.only(left: 100),
                //   child: Text(
                //     a,
                //     style: const TextStyle(
                //       fontWeight: FontWeight.bold,
                //       fontSize: 30,
                //       color: Colors.white,
                //     ),
                //   ),
                // )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
