import 'package:flutter/material.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  Map data = {};
  @override
  Widget build(BuildContext context) {
    data = data.isNotEmpty ? data: ModalRoute.of(context)?.settings.arguments as Map;
    print(data);
    String backgroundImage = data['isDayTime'] ? 'day.png' : 'night.png';
    Color backgroundColor = data['isDayTime'] ? Colors.blue : Colors.indigo;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/$backgroundImage'),
              fit: BoxFit.cover
            ),
          ),
          child: Padding(
            padding: EdgeInsets.fromLTRB(8,120,8,8),
            child: Center(
              child: Column(
                children: [
                  MaterialButton(
                    color: Colors.grey[300],
                    onPressed: () {
                      Navigator.pushNamed(context, '/choose_location');

                    },
                    child: Text("Edit Location"),
                  ),
                  SizedBox(height: 30.0,),

                  Text(data['location'],style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0
                  ),),
                  SizedBox(height: 20.0,),
                  Text(data['time'],
                  style: TextStyle(
                    fontSize: 60.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
