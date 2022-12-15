import 'package:flutter/material.dart';
import 'package:flutter_academy_en/world_timer_app/service/WorldTime.dart';
class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  List<WorldTime> locations = [
    WorldTime(location: 'Cairo', flag: 'egypt.png', endPoint: 'Africa/Cairo'),
    WorldTime(location: 'London', flag: 'uk.png', endPoint: 'Europe/London'),
    WorldTime(location: 'Athens', flag: 'greece.png', endPoint: 'Europe/Berlin'),
    WorldTime(location: 'Nairobi', flag: 'kenya.png', endPoint: 'Africa/Nairobi'),
    WorldTime(location: 'Chicago', flag: 'usa.png', endPoint: 'America/Chicago'),
    WorldTime(location: 'New York', flag: 'usa.png', endPoint: 'America/New_York'),
    WorldTime(location: 'Seoul', flag: 'south_korea.png', endPoint: 'Asia/seoul'),
    WorldTime(location: 'Jakarta', flag: 'indonesia.png', endPoint: 'Asia/Jakarta'),
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text("Choose Location"),
        elevation: 5,
      ),
      body: ListView.builder(
        itemCount: locations.length,
          itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 1.0,horizontal: 4.0),
              child: Card(
                child: ListTile(
                  onTap: (){
                    updateTime(index);
                  },
                  title: Text(locations[index].location),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/${locations[index].flag}'),
                  ),
                ),
              ),
            );
          }
      ),

    );
  }

  void updateTime(index) async{
    WorldTime instance = locations[index];
    await instance.getTime();
    Navigator.pushNamed(context, '/landing_page',arguments: {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
      'isDayTime': instance.isDayTime,
    });
  }

}
