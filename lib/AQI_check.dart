import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:respiro_projectfltr/custom_round.dart';
import 'package:respiro_projectfltr/frame.dart';

class Aqicheck_page extends StatefulWidget {
  const Aqicheck_page({super.key});

  @override
  State<Aqicheck_page> createState() => _Aqicheck_pageState();
}

class _Aqicheck_pageState extends State<Aqicheck_page> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          body: SingleChildScrollView(
            child: Column(children: [
              Stack(
                children: [
                  CustomPaint(
                    size: const Size(double.maxFinite, 200),
                    painter: RPSCustomPainter(),
                  ),
                  const CustomRound(),
                  const Padding(
                    padding: EdgeInsets.only(top: 110, left: 37),
                  ),
                ],
              ),
              Container(
                height: 170,
                width: 330,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color.fromARGB(255, 255, 255, 255),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          blurRadius: 05,
                          offset: const Offset(0.5, 0.5)),
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const Row(
                        children: [
                          Text(
                            "Angadipuram",
                            style: TextStyle(fontSize: 26),
                          ),
                        ],
                        mainAxisAlignment: MainAxisAlignment.start,
                      ),
                      const SizedBox(
                        height: 19,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            color: const Color.fromARGB(255, 177, 174, 163),
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10, top: 6),
                            child: Text(
                              "AQI",
                              style: TextStyle(fontSize: 19),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 80,
                width: 333,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color.fromARGB(255, 255, 255, 255),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          blurRadius: 05,
                          offset: const Offset(0.5, 0.5))
                    ]),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Universal AQI:",
                        style: TextStyle(fontSize: 26),
                      ),
                    ),
                    Text("_________")
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Pollutions",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                  height: 350,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: HexColor("F4EAB6"),
                  ),
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 16),
                      child: Row(children: [
                        Container(
                          height: 90,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: HexColor("F4BE6D"),
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 90,
                                width: 13,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14),
                                  color: Colors.green,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 20),
                                      child: Text("PM2.5",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 13)),
                                    ),
                                    Text(
                                      "317",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Container(
                              height: 90,
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: HexColor("F4BE6D"),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    height: 90,
                                    width: 13,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(14),
                                      color:
                                          const Color.fromARGB(255, 206, 200, 16),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(top: 20),
                                          child: Text("PM10",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 13)),
                                        ),
                                        Text(
                                          "486.5",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              )),
                        )
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16, top: 15),
                      child: Row(
                        children: [
                          Container(
                            height: 90,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: HexColor("F4BE6D"),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  height: 90,
                                  width: 13,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(14),
                                    color: const Color.fromARGB(255, 198, 54, 32),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(top: 20),
                                        child: Text("O3",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 13)),
                                      ),
                                      Text(
                                        "31.7",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 13),
                            child: Container(
                                height: 90,
                                width: 150,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: HexColor("F4BE6D"),
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 90,
                                      width: 13,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(14),
                                        color: const Color.fromARGB(
                                            255, 149, 55, 12),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(top: 20),
                                            child: Text("CO",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 13)),
                                          ),
                                          Text(
                                            "150",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                )),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 16, top: 15),
                        child: Row(
                          children: [
                            Container(
                              height: 90,
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: HexColor("F4BE6D"),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    height: 90,
                                    width: 13,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(14),
                                      color:
                                          const Color.fromARGB(255, 205, 15, 126),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(top: 20),
                                          child: Text("NO2",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 13)),
                                        ),
                                        Text(
                                          "31.4",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 13),
                              child: Container(
                                  height: 90,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: HexColor("F4BE6D"),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 90,
                                        width: 13,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(14),
                                          color: const Color.fromARGB(
                                              255, 230, 23, 203),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                top: 20,
                                              ),
                                              child: Text("SO3",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 13)),
                                            ),
                                            Text(
                                              "9.5",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  )),
                            )
                          ],
                        ))
                  ])),
              Container(
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: const Color.fromARGB(255, 255, 255, 255),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 142, 128, 128)
                          .withOpacity(0.5),
                      blurRadius: 5.0,
                      spreadRadius: 2.0,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Expanded(
                  child: Container(
                    child: TabBar(
                        indicatorSize: TabBarIndicatorSize.tab,
                        indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            color: HexColor("F4BE6D")),
                        tabs: [
                          const Tab(
                            text: "Hourly",
                          ),
                          const Tab(
                            text: "Daily",
                          ),
                        ]),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
                     Container(height: 400,
              child: TabBarView(children: [
                Card(elevation: 2,
                  child: Container(
                    height: 20,
                    width: 60,
                    
                    child: Text(
                      '13/feb 2024'
                    ),
                  ),
                ),
                  Card(
                  child: Container(
                    height: 20,
                    width: 60,
                  
                    child: Text(
                      'bbbbbb'
                    ),
                  ),
                ),
              ]),
            )
         ]),
          )),
    );
  }
}
