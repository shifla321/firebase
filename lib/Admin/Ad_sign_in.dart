import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class Ad_Sign_in extends StatefulWidget {
  const Ad_Sign_in({super.key});

  @override
  State<Ad_Sign_in> createState() => _Ad_Sign_inState();
}

class _Ad_Sign_inState extends State<Ad_Sign_in> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
 body: Container(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              // color: Colors.red,
              image: DecorationImage(
                  image: AssetImage(
                    "assets/images/res.jpg",
                  ),
                  fit: BoxFit.cover)
                  ),
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 90),
                      child: Text('Air Quality Checker',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 38,color: Colors.white),),
                    ),
                    
                    Stack(
                      children: [Column(
                        children: [
                           Center(
                             child: Container(
                                                       height: 490,
                                                       width: 620,
                                                       color: HexColor("5A3E10").withOpacity(0.7),
                                                       child: Column(
                                                        children: [
                                                          Padding(
                                                            padding: const EdgeInsets.only(left: 40,top: 60),
                                                            child: Align(alignment: Alignment.topLeft,
                                                              child: Text("UserName",style: TextStyle(fontSize: 28,color: Colors.white),)),
                                                          ),
                                                          Padding(
                                                            padding: const EdgeInsets.only(right: 60,top: 20,left: 40),
                                                            child: TextFormField(
                                                              decoration: InputDecoration(
                                                                fillColor: Colors.white,
                                                                filled: true,
                                                              ),
                                                            ),
                                                          ),
                                                            Padding(
                                                            padding: const EdgeInsets.only(left: 40,top: 20),
                                                            child: Align(alignment: Alignment.topLeft,
                                                              child: Text("Password",style: TextStyle(fontSize: 28,color: Colors.white),)),
                                                          ),
                                                          Padding(
                                                            padding: const EdgeInsets.only(right: 60,top: 20,left: 40),
                                                            child: TextFormField(
                                                              decoration: InputDecoration(
                                                                fillColor: Colors.white,
                                                                filled: true,
                                                                suffixIcon: Icon(Icons.remove_red_eye),
                                                              ),
                                                              obscureText: true,
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding: const EdgeInsets.only(top: 60),
                                                            child: ElevatedButton(onPressed: (){}, child: Text("SUBMIT")),
                                                          )
                                                        ],
                                                       ),
                                                     ),
                                                     
                           ),
                       
                  ]
                      ),
                      
                      ]
                    )
                  ]
                  ),
        ),
 )
    );
 
 
    
    
}
}
