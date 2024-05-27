import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:respiro_projectfltr/AQI/AQI_check.dart';
import 'package:respiro_projectfltr/apiresponse/response_weather.dart';
import 'package:respiro_projectfltr/AQI/pollutedcities.dart';
import 'package:respiro_projectfltr/Admin/Ad_AQI.dart';
import 'package:respiro_projectfltr/Admin/Ad_General.dart';
import 'package:respiro_projectfltr/Admin/Ad_home.dart';
import 'package:respiro_projectfltr/Admin/Ad_notification.dart';
import 'package:respiro_projectfltr/Admin/Ad_sign_in.dart';
import 'package:respiro_projectfltr/Admin/layout.dart';
import 'package:respiro_projectfltr/Diseases/Asthma_page.dart';
import 'package:respiro_projectfltr/Login/welcome.dart';
import 'package:respiro_projectfltr/Login/signin.dart';
import 'package:respiro_projectfltr/businesslogic/firebase_options.dart';
import 'package:respiro_projectfltr/daily.dart';
import 'package:respiro_projectfltr/first.dart';
import 'package:respiro_projectfltr/general.dart';
import 'package:respiro_projectfltr/AQI/graph.dart';
import 'package:respiro_projectfltr/home1.dart';
import 'package:respiro_projectfltr/home2.dart';
import 'package:respiro_projectfltr/news.dart';
import 'package:respiro_projectfltr/news_page1.dart';
import 'package:respiro_projectfltr/settings/settings.dart';

main() async {
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
    return const MaterialApp(debugShowCheckedModeBanner: false, home: login()
        // home: signin()
        // home: forgot(),
        // home: otp(),
        // home: resetpass(),
        //    home: signup_ph(),
        //  home: success(),
        // home:first(),
        //  home: General_page(),

        // home: home2()
        //  home: home1(),

        // home: AQIscale(),
        //  home:Diseases(indexnumber: 0,) ,
        // home:PollutedCities(),
        //  home: Asthmapage(),
        //home: setting(),
        // home: notification(),
        //  home: Advices(),
        //  home: farmers_page()

        //  home: Settings_page(),
        //  home: Appinfo(),
        // home: Invite_page(),
        // home: COPD_page(),
        // home: daily(),
        //  home: Aqicheck_page(),
        // home: graph(),
        // home: Pneumonia_page(),
        // home: HeartAttack_page(),
        // home: ParkinsonDisease_page(),
        // home: Stroke_page(),
        // home: LungCancer_page(),
        // home: Dementia_page(),
        //  home: SkinDiseases_page(),
        //  home: news_page(indexnumber: 0,),
        // home: newspage1()
        // home: General_page(),
        // home: Ad_Sign_in(),

        // home: LayoutBuilderCheck()
        //  home: Ad_Home(),
        //  home: Ad_notification(),
        // home: Ad_AQI(),
        //  home: Ad_General(),

        );
  }
}
