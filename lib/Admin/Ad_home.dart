import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Ad_Home extends StatefulWidget {
  const Ad_Home({super.key});

  @override
  State<Ad_Home> createState() => _Ad_HomeState();
}

class _Ad_HomeState extends State<Ad_Home> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    appBar:   AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: AssetImage("assets/images/res.jpg"),
          ),
        ),
        title: Text('RESPIRO',style: GoogleFonts.elsie(color:Color.fromARGB(255, 222, 170, 11))),
        actions: [ VerticalDivider(color: Colors.black,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("AQI",style: TextStyle(fontSize: 24),),
        ),
        VerticalDivider(color: Colors.black,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("General",style: TextStyle(fontSize: 24),),
        ),
         VerticalDivider(color: Colors.black,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.notifications_active,size: 35,),
          ),
         
        
        ],
        
      ),
      body:Column(
        children: [
            Divider(color: Colors.black,),
            Row(
              
            )
        ],
      )
     
        

    
    );
  }
}