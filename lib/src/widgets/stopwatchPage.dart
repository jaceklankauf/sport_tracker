import 'package:flutter/material.dart';
import './stopwatchText.dart';

class StopwatchPage extends StatefulWidget {
  _StopwatchPageState createState() => _StopwatchPageState();
}

class _StopwatchPageState extends State<StopwatchPage> {
  Stopwatch stopwatch = new Stopwatch();

  void leftButtonPressed() {
    setState(() {
      if (stopwatch.isRunning) {
        print("${stopwatch.elapsedMilliseconds}");
      } else {
        stopwatch.reset();
      }
    });
  }

  void rightButtonPressed() {
    setState(() {
      if (stopwatch.isRunning) {
        stopwatch.stop();
      } else {
        stopwatch.start();
      }
    });
  }

  Widget buildFloatingButton(String text, VoidCallback callback) {
    TextStyle roundTextStyle =
        const TextStyle(fontSize: 16.0, color: Colors.white);
    return new FloatingActionButton(
        child: new Text(text, style: roundTextStyle), onPressed: callback);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[buildStopwatch(), buildButtons()],
    );
  }

  Widget buildStopwatch() {
    return Container(
      alignment: Alignment(0, 0),
      child: StopwatchText(stopwatch: stopwatch),
      margin: EdgeInsets.only(bottom: 50),
      width: 330,
      height: 200,
    );
  }

  Widget buildButtons() {
    return Row(children: <Widget>[
      Expanded(
        child: buildFloatingButton(
          stopwatch.isRunning ? "lap" : "reset", leftButtonPressed),
      ),
      Expanded(
        child: buildFloatingButton(
          stopwatch.isRunning ? "stop" : "start", rightButtonPressed)
      )
    ]);
  }
}
