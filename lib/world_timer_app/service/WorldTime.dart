import 'dart:convert';

import 'package:http/http.dart';
import 'package:intl/intl.dart';

class WorldTime{
  String location ="";
  String time ="";
  String flag ="";
  String endPoint ="";
  bool isDayTime= true;


  WorldTime({required this.location, required this.flag, required this.endPoint});

  Future<void> getTime() async{
    try{
      Response response = await get(Uri.parse('http://worldtimeapi.org/api/timezone/$endPoint')); //GET REQUEST
      Map data = jsonDecode(response.body);
      String dateTime = data['utc_datetime'];
      String dateOffset = data['utc_offset'].substring(1,3);
      print("The dateTime is $dateTime");
      print("The offsetTime is $dateOffset");
      print("The offsetTime is $dateOffset");

      DateTime now = DateTime.parse(dateTime);
      now = now.add(Duration(hours: int.parse(dateOffset)));
      print(now);
      time = DateFormat.jm().format(now);
      print(time);
      isDayTime = now.hour > 6 && now.hour < 19 ? true : true ;
    }
  catch(e){
      print("Caught Error : $e");
  }

  }
}