import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:respiro_projectfltr/Diseases/Asthma_page.dart';
import 'package:respiro_projectfltr/Diseases/COPD.dart';
import 'package:respiro_projectfltr/Diseases/Dementia_pahe.dart';
import 'package:respiro_projectfltr/Diseases/HeartAttack_page.dart';
import 'package:respiro_projectfltr/Diseases/LungCancer_page.dart';
import 'package:respiro_projectfltr/Diseases/Parkinson%E2%80%99s%20Diseases.dart';
import 'package:respiro_projectfltr/Diseases/Pneumonia_page.dart';
import 'package:respiro_projectfltr/Diseases/SkinDiseases_page.dart';
import 'package:respiro_projectfltr/Diseases/Stroke.dart';
import 'package:respiro_projectfltr/custom_round.dart';

import 'package:respiro_projectfltr/frame.dart';

class Diseases extends StatefulWidget {
  int indexnumber = 0;

  Diseases({super.key, required this.indexnumber});

  @override
  State<Diseases> createState() => _DiseasesState();
}

class _DiseasesState extends State<Diseases> {
  @override
  Widget build(BuildContext context) {
    // final List _diseaseslist = ["Asthma", "COPD", "Stroke", "Skin"];
    List _diseaseslist = [
      {'title': 'Asthma', 'img': 'images/res.jpg'},
      {'title': 'COPD', 'img': 'images/COPD.png'},
      {'title': 'Pneumonia', 'img': 'images/profile.png'},
      {'title': 'Heart Attack', 'img': 'images/res.jpg'},
       {'title': 'Stroke', 'img': 'images/res.jpg'},
      {'title': 'Lung Cancer', 'img': 'images/COPD.png'},
      {'title': 'Dementia', 'img': 'images/profile.png'},
      {'title': ' Parkinsons ', 'img': 'images/res.jpg'},
      {'title': ' Skin Diseases', 'img': 'images/res.jpg'}
    ];
    final _pages = [const Asthmapage(), const COPD_page(),const Pneumonia_page(), const HeartAttack_page(),const Stroke_page(), const LungCancer_page(),const Dementia_page(), const ParkinsonDisease_page(),const SkinDiseases_page(),];
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 195,
            child: Stack(children: [
              CustomPaint(
                size: const Size(double.maxFinite, 200),
                painter: RPSCustomPainter(),
              ),
              const CustomRound(),
              Padding(
                padding: const EdgeInsets.only(left: 110, top: 90),
                child: Text(
                  "Diseases",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                      color: HexColor("553504")),
                ),
              )
            ]),
          ),
          Expanded(
              child: ListView.builder(
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  switch (index) {
                    case 0:
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: ((context) => const Asthmapage())));
                      break;
                    case 1:
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: ((context) => const COPD_page())));
                      break;
                    case 2:
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: ((context) => const Pneumonia_page())));
                      break;
                    case 3:
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: ((context) => const HeartAttack_page())));
                          case 4:
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: ((context) => const Stroke_page())));
                      break;
                    case 5:
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: ((context) => const LungCancer_page())));
                      break;
                    case 6:
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: ((context) => const Dementia_page())));
                    case 7:
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: ((context) => const ParkinsonDisease_page())));
                      break;
                    case 8:
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: ((context) => const SkinDiseases_page())));
                      break;
                  }
                },
                child: Container(
                  margin: const EdgeInsets.only(top: 50),
                  height: 100,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: HexColor("BE8C39"),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 12),
                        child: CircleAvatar(
                          radius: 35,
                          backgroundImage: AssetImage(
                            '${_diseaseslist[index]['img']}',
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 50,
                      ),
                      Text(
                        '${_diseaseslist[index]['title']}',
                        style: const TextStyle(fontSize: 26),
                      )
                    ],
                  ),
                ),
              );
            },
            itemCount: _diseaseslist.length,
          ))
        ],
      ),
    );
  }
}
