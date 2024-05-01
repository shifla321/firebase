import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:respiro_projectfltr/AQI_check.dart';
import 'package:respiro_projectfltr/AQIscale.dart';
import 'package:respiro_projectfltr/Advices/Advices.dart';
import 'package:respiro_projectfltr/Appinfo.dart';
import 'package:respiro_projectfltr/Diseases/Asthma_page.dart';
import 'package:respiro_projectfltr/Diseases/COPD.dart';
import 'package:respiro_projectfltr/Diseases/Dementia_pahe.dart';
import 'package:respiro_projectfltr/Diseases/Diseases.dart';
import 'package:respiro_projectfltr/Diseases/HeartAttack_page.dart';
import 'package:respiro_projectfltr/Login/Loginpage.dart';
import 'package:respiro_projectfltr/Diseases/LungCancer_page.dart';
import 'package:respiro_projectfltr/Diseases/Parkinson%E2%80%99s%20Diseases.dart';
import 'package:respiro_projectfltr/Diseases/Pneumonia_page.dart';
import 'package:respiro_projectfltr/Diseases/SkinDiseases_page.dart';
import 'package:respiro_projectfltr/Diseases/Stroke.dart';
import 'package:respiro_projectfltr/businesslogic/firebase_options.dart';
import 'package:respiro_projectfltr/daily.dart';
import 'package:respiro_projectfltr/Advices/farmers_page.dart';
import 'package:respiro_projectfltr/aqi.dart';
import 'package:respiro_projectfltr/graph.dart';
import 'package:respiro_projectfltr/home2.dart';
import 'package:respiro_projectfltr/home1.dart';

import 'package:respiro_projectfltr/first.dart';

import 'package:respiro_projectfltr/Login/forgotpass.dart';
import 'package:respiro_projectfltr/invite.dart';
import 'package:respiro_projectfltr/news.dart';
import 'package:respiro_projectfltr/notification.dart';


import 'package:respiro_projectfltr/Login/otp.dart';
import 'package:respiro_projectfltr/pollutedcities.dart';
import 'package:respiro_projectfltr/Login/resetpass.dart';
import 'package:respiro_projectfltr/settings.dart';
import 'package:respiro_projectfltr/settings_page.dart';

import 'package:respiro_projectfltr/Login/signin.dart';

import 'package:respiro_projectfltr/Login/signup_ph.dart';
import 'package:respiro_projectfltr/Login/success.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(debugShowCheckedModeBanner: false,
      
          //  home: login()
              //  home: signin() 
        // home: forgot(),
        // home: otp(),
      // home: resetpass(),
          //  home: signup_ph(),
      //  home: success(),
      // home:first(),
      
      
        //  home: home2(),
            //  home: home1(),
      
      
      // home: AQIscale(),
            //  home:Diseases(indexnumber: 0,) ,
        //  home:PollutedCities(),
            //  home: Asthmapage(),
        //  home: setting(),
        // home: notification(),
              home: Advices(),
        //  home: farmers_page()
        // home: News_page(),
        //  home: Settings_page(),
        //  home: Appinfo(),
        // home: Invite_page(),
        // home: COPD_page(),
        // home: daily(),
          // home: Aqicheck_page(),
        // home: graph(),
        // home: Pneumonia_page(),
        // home: HeartAttack_page(),
        // home: ParkinsonDisease_page(),
        // home: Stroke_page(),
        // home: LungCancer_page(),
        // home: Dementia_page(),
        //  home: SkinDiseases_page(),
        
      
      
      

    );
  }
}

