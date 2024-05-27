import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:respiro_projectfltr/model/wether.dart';

class GetWeather{
final key="0da9f698b4e248edb9a44252242705";
String place="America";
  Future fetchweather(lat,lon)async{

    final url = Uri.parse("http://api.weatherapi.com/v1/current.json?key=$key&q=lat=${lat}&lon=${lon}&aqi=yes");
    final response = await http.get(url);
    final  body = jsonDecode(response.body);
    if (response.statusCode == 200) {
      // log(body.toString());
      return wether.fromJsone(body);
    }else{
      log("Erro");
    }
  }
  



  
  }