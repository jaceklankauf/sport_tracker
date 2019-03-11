import 'dart:async';
import 'package:flutter/material.dart';

class StopwatchText extends StatefulWidget {
  StopwatchText({this.stopwatch});
  final Stopwatch stopwatch;

  _StopwatchTextState createState() =>
      new _StopwatchTextState(stopwatch: stopwatch);
}

class _StopwatchTextState extends State<StopwatchText> {
  Timer timer;
  final Stopwatch stopwatch;

  _StopwatchTextState({this.stopwatch}) {
    timer = new Timer.periodic(new Duration(milliseconds: 30), callback);
  }

  void callback(Timer timer) {
    if (stopwatch.isRunning) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    final TextStyle timerTextStyle =
        const TextStyle(fontSize: 60.0, fontFamily: "Lato");
    String formattedTime =
        TimerTextFormatter.format(stopwatch.elapsedMilliseconds);
    return Container(
        child: Text(
          formattedTime, 
          style: timerTextStyle,
          ), 
        width: 280,
        alignment: FractionalOffset.center,
    );
  }
}

class TimerTextFormatter {
  static String format(int milliseconds) {
    int hundreds = (milliseconds / 10).truncate();
    int seconds = (hundreds / 100).truncate();
    int minutes = (seconds / 60).truncate();

    String minutesStr = (minutes % 60).toString().padLeft(2, '0');
    String secondsStr = (seconds % 60).toString().padLeft(2, '0');
    String hundredsStr = (hundreds % 100).toString().padLeft(2, '0');

    return "$minutesStr:$secondsStr.$hundredsStr";
  }
}
