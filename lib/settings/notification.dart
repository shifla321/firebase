import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class notification extends StatefulWidget {
  const notification({super.key});

  @override
  State<notification> createState() => _notificationState();
}

class _notificationState extends State<notification> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView.builder(itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Icon(Icons.waving_hand,color: Colors.yellow,),
                      ),
                      SizedBox(width: 20),
                      Container(
                        height: 70,
                        width: 270,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.black,
                        ),
                        child: Center(child: Text("Hey ,Welcome to Respiro",style: TextStyle(color: Colors.white,fontSize: 18),)),
                      )
                    ],
                  ),
                ),
        );
      },itemCount: 6,)
      


      

    );
  }
}