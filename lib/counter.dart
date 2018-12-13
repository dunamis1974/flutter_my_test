import 'package:flutter/material.dart';
import 'state.dart';

class Counter extends StatefulWidget {
  @override
  CounterState createState() => new CounterState();
}

class CounterState extends State<Counter> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    eventBus.on<CounterData>().listen((event) {
      setState(() {
        _counter = event.getCount();
      });
    });

    return Text(
      '$_counter',
      style: TextStyle(
          fontFamily: 'RobotoMono', fontSize: 60.0, color: Colors.black54),
    );
  }
}
