import 'package:flutter/material.dart';
class BasicWidgetScreen extends StatefulWidget {
  const BasicWidgetScreen({Key? key}) : super(key: key);

  @override
  State<BasicWidgetScreen> createState() => _BasicWidgetScreenState();
}

class _BasicWidgetScreenState extends State<BasicWidgetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListViews "),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: [
          Container(
            color: Colors.grey[200],
            child: ListTile(
              leading: Icon(Icons.directions_bike),
              title: Text("bike"),
            ),
          ),
          SizedBox(height: 5,),
          Container(
            color: Colors.grey[200],
            child: ListTile(
              leading: Icon(Icons.directions_boat),
              title: Text("boat"),
            ),
          ),
          SizedBox(height: 5,),
          Container(
            color: Colors.grey[200],
            child: ListTile(
              leading: Icon(Icons.bus_alert),
              title: Text("bus"),
            ),
          ),
          SizedBox(height: 5,),
          Container(
            color: Colors.grey[200],
            child: ListTile(
              leading: Icon(Icons.car_crash_rounded),
              title: Text("car"),
            ),
          ),
          SizedBox(height: 5,),
          Container(
            color: Colors.grey[200],
            child: ListTile(
              leading: Icon(Icons.directions_railway_filled_rounded),
              title: Text("railway"),
            ),
          ),
          SizedBox(height: 5,),
          Container(
            color: Colors.grey[200],
            child: ListTile(
              leading: Icon(Icons.run_circle),
              title: Text("run"),
            ),
          ),
          SizedBox(height: 5,),
          Container(
            color: Colors.grey[200],
            child: ListTile(
              leading: Icon(Icons.directions_bike),
              title: Text("bike"),
            ),
          ),
          SizedBox(height: 5,),
          Container(
            color: Colors.grey[200],
            child: ListTile(
              leading: Icon(Icons.directions_boat),
              title: Text("boat"),
            ),
          ),
          SizedBox(height: 5,),
          Container(
            color: Colors.grey[200],
            child: ListTile(
              leading: Icon(Icons.bus_alert),
              title: Text("bus"),
            ),
          ),
          SizedBox(height: 5,),
          Container(
            color: Colors.grey[200],
            child: ListTile(
              leading: Icon(Icons.car_crash_rounded),
              title: Text("car"),
            ),
          ),
          SizedBox(height: 5,),
          Container(
            color: Colors.grey[200],
            child: ListTile(
              leading: Icon(Icons.directions_railway_filled_rounded),
              title: Text("railway"),
            ),
          ),
          SizedBox(height: 5,),
          Container(
            color: Colors.grey[200],
            child: ListTile(
              leading: Icon(Icons.run_circle),
              title: Text("run"),
            ),
          ),

        ],
      ),
    );
  }
}
