import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class Ad_General extends StatefulWidget {
  const Ad_General({super.key});

  @override
  State<Ad_General> createState() => _Ad_GeneralState();
}

class _Ad_GeneralState extends State<Ad_General> {
   
    //  final cont = tba

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            leading: const Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/res.jpg"),
              ),
            ),
            title: Row(
              children: [
                Text('RESPIRO',
                    style: GoogleFonts.elsie(
                        color: const Color.fromARGB(255, 222, 170, 11))),
              ],
            ),
          ),
          body: Column(children: [
            const Divider(
              color: Colors.black,
            ),
            Text(
              "General",
              style: GoogleFonts.elsie(
                fontSize: 23,
                color: const Color.fromARGB(255, 110, 60, 25),
              ),
            ),
            const Divider(
              color: Colors.black,
            ),
            TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: HexColor("F4BE6D")),
                tabs: [
                  const Tab(
                    text: "Diseases",
                  ),
                  const Tab(
                    text: "Advices",
                  ),
                  const Tab(
                    text: "News",
                  ),
                  const Tab(
                    text: "Daily",
                  )
                ]),
            Expanded(
              
                child: TabBarView(children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 60,
                          width: 290,
                          color: HexColor("BE8C39"),
                          child: Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  child: Icon(Icons.add),
                                ),
                              ),
                              Expanded(
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                      hintText: "Diseases Name"),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, right: 150),
                        child: TextFormField(
                          decoration:
                              const InputDecoration(hintText: "Diseases Name"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 110,
                          width: 180,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromARGB(255, 133, 112, 112),
                          ),
                          child: Icon(Icons.add),

                        ),
                      ),

                      Expanded(child: DefaultTabController(
                        length: 3,
                        child: Column(
                          children: [
                            Container(color: Colors.red,child:  Container(
                                                // height: 55,
                                                decoration: BoxDecoration(
                            
                            borderRadius: BorderRadius.circular(14),
                            color: const Color.fromARGB(255, 255, 255, 255),
                            boxShadow: [
                              BoxShadow(
                                color: const Color.fromARGB(255, 142, 128, 128).withOpacity(0.5),
                                blurRadius: 5.0,
                                spreadRadius: 2.0,
                                offset: const Offset(0, 3),
                                
                                
                              ),
                              
                            ],
                            
                                                ),
                                                
                                                
                                                
                                                child: TabBar(
                            indicatorSize: TabBarIndicatorSize.tab,
                            indicator: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              color:HexColor("F4BE6D")
                            ),
                            tabs: [
                            const Tab(
                              text: "Asthma",
                            ),
                            const Tab(
                              text: "Effect",
                            ),
                            const Tab(
                              text: "Overcome",
                            )
                                                ]),
                                              ),),
                          ],
                        ),
                      ))
                     
                    ],
                  ),
                  Column(
                    children: [
                   Expanded(
                     child: ListView.builder(itemBuilder: (context, index) {
                       return Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            
                            child: Container(height: 55,width: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromARGB(255, 232, 174, 50),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: "headings"
                                ),
                              ),
                            ),
                            ),
                          ),
                          Icon(Icons.arrow_circle_right,color: const Color.fromARGB(255, 79, 60, 6),),
                          
                        ],
                       );
                     },itemCount: 5,),
                   )
                    ],
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Container(margin: EdgeInsets.only(top: 10,left: 10),
                            height: 40,
                            width: 250,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                               color: Color.fromARGB(255, 89, 85, 72),
                               
                            ),
                           child: Center(child: Text("Head Line",style: TextStyle(color: Colors.white),),),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  
                                  height: 80,
                                  width: 250,
                                  color: const Color.fromARGB(255, 149, 138, 105),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: CircleAvatar(
                                          child: Icon(Icons.add),
                                          
                                        ),
                                      ),
                                      Expanded(
                                      
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: TextFormField(decoration: InputDecoration(
                                            hintText: 'head Line'
                                          ),),
                                        ),
                                      ),
                                     
                                    ],
                                  ),
                                ),
                               
                              ),
                              Icon(Icons.arrow_circle_right,color: Color.fromARGB(255, 68, 65, 59),),
                          
                            ],
                          )
                        ],
                      ),

                    ],
                  ),
                  Row(
                    children: [
                      // Container(
                      //   height: 50,
                      //   width: 110,
                      //   color: Colors.amber,
                      // ),
                         Expanded(child: DefaultTabController(
                        length: 3,
                        child: Column(
                          children: [
                            Container(color: Colors.red,child:  Container(
                                                // height: 55,
                                                decoration: BoxDecoration(
                            
                            borderRadius: BorderRadius.circular(14),
                            color: const Color.fromARGB(255, 255, 255, 255),
                            boxShadow: [
                              BoxShadow(
                                color: const Color.fromARGB(255, 142, 128, 128).withOpacity(0.5),
                                blurRadius: 5.0,
                                spreadRadius: 2.0,
                                offset: const Offset(0, 3),
                                
                                
                              ),
                              
                            ],
                            
                                                ),
                                                
                                                
                                                
                                                child: Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: TabBar(
                                                                              indicatorSize: TabBarIndicatorSize.tab,
                                                                              indicator: BoxDecoration(
                                                                                borderRadius: BorderRadius.circular(14),
                                                                                color:HexColor("F4BE6D")
                                                                              ),
                                                                              tabs: [
                                                                              const Tab(
                                                                                text: "HOME",
                                                                              ),
                                                                              const Tab(
                                                                                text: "WORK",
                                                                              ),
                                                                              const Tab(
                                                                                text: "OTHER",
                                                                              )
                                                  ]),
                                                ),
                                              ),),
                          ],
                        ),
                      ))
                     
                    ],
                  ),
                  Column(
                    children: [
                   Expanded(
                     child: ListView.builder(itemBuilder: (context, index) {
                       return Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            
                            child: Container(height: 55,width: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromARGB(255, 232, 174, 50),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: "headings"
                                ),
                              ),
                            ),
                            ),
                          ),
                          Icon(Icons.arrow_circle_right,color: const Color.fromARGB(255, 79, 60, 6),),
                          
                        ],
                       );
                     },itemCount: 5,),
                   )

                    ],
                  ),
                  
                ]
                ),
              ),
            
          ]
          ),
          
          ),

    );
  }
}
