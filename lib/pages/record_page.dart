import 'package:flutter/material.dart';

class RecordScreen extends StatelessWidget {
  final Stopwatch _stopwatch = Stopwatch();
  // late Duration _elapsedTime;
  // late String _elapsedTimeString;
  var time = '';

  void _startStopwatch() {
    if (!_stopwatch.isRunning) {
      // Start the stopwatch and update elapsed time
      _stopwatch.start();
    } else {
      // Stop the stopwatch
      _stopwatch.stop();
    }
    time = '${_stopwatch.elapsed.inMinutes.remainder(60).toString().padLeft(2, '0')}:${(_stopwatch.elapsed.inSeconds.remainder(60)).toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [TextButton(onPressed: _startStopwatch, child: Text("button")), Text(time)],
    ));
  }
}
