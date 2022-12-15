import 'package:flutter/material.dart';
import 'package:flutter_academy_en/world_timer_app/service/WorldTime.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: SpinKitHourGlass(
          color: Colors.white,
          size: 80.0,
        ),
      ),

    );
  }

String time = "Loading";
  void setupWorldTime()  async{
    WorldTime instance = WorldTime(location: 'Cairo', flag: 'egypt.png', endPoint: 'Africa/Cairo');
   await instance.getTime();
    Navigator.pushNamed(context, '/landing_page',arguments: {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
      'isDayTime': instance.isDayTime,
    });
    setState(() {
      time = instance.time;
    });
  }
  void initState(){
    super.initState();
    setupWorldTime();
  }
}
