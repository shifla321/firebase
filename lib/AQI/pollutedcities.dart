import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:respiro_projectfltr/custom_round.dart';
import 'package:respiro_projectfltr/frame.dart';

class PollutedCities extends StatefulWidget {
  const PollutedCities({super.key});

  @override
  State<PollutedCities> createState() => _PollutedCitiesState();
}

class _PollutedCitiesState extends State<PollutedCities> {
  @override
  Widget build(BuildContext context) {
    final List countries=["india","japan","uk","spain"];
    String? values;
    return  Scaffold(
      body: Column(
        children: [
          SizedBox(
              child: Stack(
                children: [
                 CustomPaint(
              size: Size(double.maxFinite,200),
                painter: RPSCustomPainter() ,
            ),
            CustomRound(),
            Padding(
              padding: const EdgeInsets.only(top: 50,left: 12),
              child: Container(
                height: 55,
                width: 335,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: HexColor("F4EAB6")
                ),
                child: Column(
                  children: [
                    DropdownButton(
                      isExpanded: true,
                      icon: Icon(Icons.arrow_drop_down),
                      hint: Center(child: Text("Select Your Country",style: TextStyle(fontSize: 20),)),
                      value: values,
                      onChanged: (newvalue) {
                        setState(() {
                          values=newvalue as String?;
                        });
                        
                      },
                      items: countries.map((valueitem) => DropdownMenuItem(value: valueitem,
                      child: Text(valueitem),)).toList()
)                  ],
                ),
              ),
            )
            
      

                ]
              ),
              
          )
        ]
      )
    );
  }
}