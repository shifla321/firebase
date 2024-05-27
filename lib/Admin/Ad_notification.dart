import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Ad_notification extends StatefulWidget {
  const Ad_notification({super.key});

  @override
  State<Ad_notification> createState() => _Ad_notificationState();
}

class _Ad_notificationState extends State<Ad_notification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: const Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/images/res.jpg"),
            ),
          ),
          title: Text('RESPIRO',
              style: GoogleFonts.elsie(
                  color: const Color.fromARGB(255, 222, 170, 11)))),
      body: Column(
        children: [
          const Divider(
            thickness: 2,
            color: Colors.black,
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.waving_hand,color: Colors.amber,),
                      ),
                      Container(
                        height: 85,
                        width: 280,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black,
                          
                        ),
                        child: Icon(Icons.add,color: Colors.white,),
                      ),
                    ],
                  ),
                );
              },
              itemCount: 4,
            ),
          )
        ],
      ),
    );
  }
}
