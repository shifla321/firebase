class wether {
  String? cityname;
  String? aqi;
  String? lat;
  String? lon;
  String? locationtime;
  String? temp;
  String? co;
  String? no2;
  String? o3;
  String? so3;
  String? pm2_5;
  String? pm110;

  wether({
      this.cityname,
      this.aqi,
     this.lat,
     this.lon,
     this.locationtime,
     this.temp,
     this.co,
     this.no2,
     this.o3,
     this.so3,
     this.pm110,
     this.pm2_5,
  });

  wether.fromJsone(Map<String,dynamic> json){
    cityname = json['location']['name'];
    lat = json['location']['lat'];
    lon = json['location']['lon'];
    
  }

}