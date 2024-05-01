import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:respiro_projectfltr/custom_round.dart';
import 'package:respiro_projectfltr/frame.dart';

class News_page extends StatefulWidget {
  const News_page({super.key});

  @override
  State<News_page> createState() => _News_pageState();
}

class _News_pageState extends State<News_page> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          Stack(
                children: [
                 CustomPaint(
              size: Size(double.maxFinite,200),
                painter: RPSCustomPainter() ,
            ),
            CustomRound(),
            Padding(
              padding: const EdgeInsets.only(top: 110,left: 37),
              child: Container(
                height: 70,
                width: 290,
                child: Column(children: [
                  Center(child: Text("News",style: TextStyle(fontSize: 36,color: HexColor("553504"),fontWeight: FontWeight.bold),)),
                  
                 
                

                ],),
                
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: HexColor("F4EAB6"),
                  

                ),
              
              ),
              
              
            ),
          
                ],
              ),
              Expanded(
                child: ListView.builder(itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 150,
                      width: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: HexColor("F4BE6D"),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15),
                              child: Container(
                                height: 100,
                                width: 100,
                                color: Colors.black,
                              ),
                            ),
                            Text("Delhi Struggles to Breathe \n Again:",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)
                          ],
                          
                        ),

                    ),
                  );
                  
                },),
              )
        ],
      ),

    );
  }
}