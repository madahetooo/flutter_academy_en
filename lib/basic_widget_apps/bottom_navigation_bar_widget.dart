import 'package:flutter/material.dart';
import 'package:flutter_academy_en/basic_widget_apps/basic_widgets.dart';
import 'package:flutter_academy_en/basic_widget_apps/grid_image_widget.dart';
import 'package:flutter_academy_en/basic_widget_apps/toast_widget.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {

  int selectedIndex = 0;

  void onItemTapped(int index){
    setState(() {
      selectedIndex = index;
    });
  }

  final _listOfWidgetScreens = [
    GridImagesWidget(),
    BasicWidgetScreen(),
    ToastWidget()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _listOfWidgetScreens[selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        iconSize: 25,
        elevation: 5,
        currentIndex: selectedIndex,
        onTap: onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_3x3),
            label: 'Grid View'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: 'List View'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.touch_app_sharp),
              label: 'Toast'
          ),
        ],
      ),
    );
  }
}
