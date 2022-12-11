import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastWidget extends StatefulWidget {
  const ToastWidget({Key? key}) : super(key: key);

  @override
  State<ToastWidget> createState() => _ToastWidgetState();
}

class _ToastWidgetState extends State<ToastWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Toast Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: MaterialButton(
            color: Colors.greenAccent,
            onPressed:showToast,
            child: const Text(
              "Show a Custom Toast",
              style: TextStyle(
                color: Colors.black,
                fontSize: 12.0,
              ),
            ),
          ),
        ),
      ),
    );
  }

  void showToast() {
    Fluttertoast.showToast(
      msg: "This is a custom Toast",
      toastLength: Toast.LENGTH_SHORT,
      timeInSecForIosWeb: 3,
      fontSize: 12.0,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.greenAccent,
      textColor: Colors.black,
    );
  }
}
