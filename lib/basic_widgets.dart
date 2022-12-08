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
        title: Text("Basic Widget App"),
      ),
    );
  }
}
