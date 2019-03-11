import 'package:flutter/material.dart';
import './widgets/stopwatchPage.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'stop watch',
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              stops: [0.15, 0.9],
              colors: [
                Colors.white,
                Colors.grey[700],
              ],
              tileMode: TileMode.repeated,
            ),
          ),
          child: Center(
            child: StopwatchPage(),
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.grey[800],
          title: Text('fabulous stopwatch'),
        ),
      ),
    );
  }
}
