import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:respiro_projectfltr/AQI/aqi.dart';
import 'package:respiro_projectfltr/custom_round.dart';
import 'package:respiro_projectfltr/frame.dart';
import 'package:respiro_projectfltr/general.dart';
import 'package:respiro_projectfltr/home2.dart';
import 'package:respiro_projectfltr/settings/settings.dart';

class home1 extends StatefulWidget {
  const home1({super.key});

  @override
  State<home1> createState() => _demoState();
}

class _demoState extends State<home1> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: Column(
        children: [
          SizedBox(
            height: 400,
            child: Stack(
              children: [
                
            CustomPaint(
              size: Size(double.maxFinite,200),
                painter: RPSCustomPainter() ,
            ),
            
            Positioned(
              top: 15,
              left: 1,
              right: 1,
              child: Padding(
                padding: const EdgeInsets.only(left: 50,right: 50,top: 100),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => home2()),
);
                  },
                  child: Container(
                    
                    height: 159,
                    width: 360,
                    decoration: BoxDecoration(
                      color: HexColor("FCD594"),
                      
                      
                      
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20,top: 33),
                      child: Text("Chech Air Quality",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 32,color: HexColor("D2891B"),shadows: [
                        Shadow(
                          offset: Offset(5, 5),
                          blurRadius: 7,
                          color: Colors.black
                        )
                      ] ),),
                    ),
                  ),
                ),
              ),
            ),
            CustomRound(),
            Padding(
              padding: const EdgeInsets.only(left: 310,top: 7),
              child: CircleAvatar(backgroundColor: HexColor("D2891B"),

                 child:IconButton(onPressed: (){
                   Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=> setting())
              );

                 }, icon:  Icon(Icons.person,color: HexColor("FCD594"),),)
                
              ),
            )
            
            
          
            // Align(
            //   alignment: Alignment.topRight,
            //   child: Container(height: 100,width: 170,
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.only(bottomLeft: Radius.elliptical(200, 150)),color: HexColor("FCD594"),
            //   ),),),
              ]
          
            ),
            
          ),
          
         SizedBox(height:3 ,),
         Padding(
           padding: const EdgeInsets.only(left: 30 ),
           child: Row(
            children: [
              Container(
                height: 149,
                width: 149,
                
                decoration: BoxDecoration(
                  color: HexColor("F4EAB6"),
                  borderRadius: BorderRadius.circular(15),
                  
                ),
                 child: Center(child: TextButton(onPressed: (){
                  Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=> Aqipage())

              );
                 }, child: Text("AQI",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 32,color: HexColor("D2891B")),)))
                // 
              ),
              SizedBox(
                width: 9,
              ),
              
              Container(
                height: 149,
                width: 149,
                decoration: BoxDecoration(
                  color: HexColor("F4EAB6"),
                  borderRadius: BorderRadius.circular(15),
                ),
                  child: Center(child: TextButton(onPressed: (){
                  Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=> General_page())

              );
                 }, child: Text("General",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 32,color: HexColor("D2891B")),)))
              )
            ],
           ),
         ),
         SizedBox(
          height: 150,
         ),



         Container(
          height: 38,
          width: double.infinity,
          
          decoration: BoxDecoration(
         color: HexColor("F4BE6D"),
         borderRadius: BorderRadius.circular(12)
          ),
         )
      
      
        ],
        

      ),);

}
}


