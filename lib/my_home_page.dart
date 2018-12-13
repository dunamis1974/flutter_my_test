import 'package:flutter/material.dart';
import 'counter.dart';
import 'state.dart';

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(fit: StackFit.expand, children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network(
              "https://hillelcoren.files.wordpress.com/2018/07/dartlang-card.png",
              scale: 2.0,
            ),
            Text(
              'This is a counter:',
              style: Theme.of(context).textTheme.display1,
            ),
            Counter(),
          ],
        ),
        Positioned(
          bottom: 16.0,
          left: 16.0,
          child: FloatingActionButton(
            onPressed: StateData.incrementCounter,
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ),
        ),
        Positioned(
          bottom: 16.0,
          right: 16.0,
          child: FloatingActionButton(
            onPressed: StateData.subtractCounter,
            tooltip: 'Substract',
            child: Icon(Icons.remove),
            backgroundColor: Colors.red,
          ),
        ),
      ]),
    );
  }
}
