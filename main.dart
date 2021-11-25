import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _turns = 0;
  double _value = 0.0;

  void _onChanged(double value) {
    setState(() {
      _value = value;
      _turns = value.toInt();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(80.0),
          child: Container(
            child: Column(
              children: [
                Slider(
                  value: _value,
                  onChanged: _onChanged,
                  min: 0.0,
                  max: 4.0,
                ),
                RotatedBox(
                  quarterTurns: _turns,
                  child: Text('Hello World'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
