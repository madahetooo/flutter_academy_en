import 'package:flutter/material.dart';

class ReverseStringApp extends StatefulWidget {
  const ReverseStringApp({Key? key}) : super(key: key);

  @override
  State<ReverseStringApp> createState() => _ReverseStringAppState();
}

class _ReverseStringAppState extends State<ReverseStringApp> {
  final _reverseStringController = TextEditingController();
  String _reversed = "REVERSED STRING";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Reverse String App"),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextField(
                controller: _reverseStringController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Enter a string to reverse"),
              ),
              const SizedBox(
                height: 20.0,
              ),
              MaterialButton(
                onPressed: () {
                  if (_reverseStringController.text.isEmpty) return;
                  setState(() {
                    _reversed = reverseString(_reverseStringController.text);
                  });
                },
                color: Colors.blue,
                child: const Text(
                  "Reverse",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 50.0,
              ),
              if (_reversed != null) ...[
                Text(
                  _reversed,
                  style: const TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

String reverseString(String initialWord) {
  return initialWord.split('').reversed.join();
}
