import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
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
                ], // whitish to gray
                tileMode:
                    TileMode.repeated, // repeats the gradient over the canvas
              ),
            ),
            
          ),
          appBar: AppBar(
            backgroundColor: Colors.grey[800],
            title: Text('fabulous stopwatch'),
          ),
          // title: Text('fabulous stopwatch'),
          // backgroundColor: Colors.amber,
          ),
    );
  }
}
