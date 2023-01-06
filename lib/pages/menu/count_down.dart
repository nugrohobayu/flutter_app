import 'dart:async';
import 'dart:ffi';

import 'package:custom_timer/custom_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/countdown_timer_controller.dart';
import 'package:flutter_countdown_timer/current_remaining_time.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';

class CountDown extends StatefulWidget {
  const CountDown({Key? key}) : super(key: key);

  @override
  State<CountDown> createState() => _CountDown();
}

class _CountDown extends State<CountDown> {
  final CustomTimerController _controller = CustomTimerController();

  @override
  void initState() {
    super.initState();
    _controller.start();
  }

  //step1
  Timer? countdownTimer;
  Duration duration = Duration(seconds: 60);
  //step2
  // @override
  // void initState() {
  //   super.initState();
  // }

  //step3
  void startTimer() {
    countdownTimer =
        Timer.periodic(Duration(seconds: 1), (_) => setCountDown());
  }

  //step4
  void stopTimer() {
    setState(() {
      return countdownTimer!.cancel();
    });
  }

  //step5
  void resetTimer() {
    stopTimer();
    setState(() {
      duration = Duration(seconds: 60);
    });
  }

  void setCountDown() {
    final reduceSeconds = 1;
    setState(() {
      final seconds = duration.inSeconds - reduceSeconds;
      if (seconds < 0) {
        countdownTimer!.cancel();
      } else {
        duration = Duration(seconds: seconds);
      }
    });
  }

  late CountdownTimerController controller;
  int endTime = DateTime.now().millisecondsSinceEpoch +
      Duration(minutes: 2).inMilliseconds;

  // @override
  // void onEnd() {
  //   print('onEnd');
  // }

  @override
  Widget build(BuildContext context) {
    String strDigits(int n) => n.toString().padLeft(2, '0');
    final seconds = strDigits(duration.inSeconds.remainder(60));
    final minutes = strDigits(duration.inMinutes.remainder(1));
    print('seconds ${seconds}');

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Count Down Page'),
        ),
        body: Column(
          children: [
            Text('$minutes : $seconds'),
            ElevatedButton(onPressed: startTimer, child: Text("start count")),
            ElevatedButton(onPressed: stopTimer, child: Text("Stop")),
            CountdownTimer(
              // controller: controller,
              endTime: endTime,
              widgetBuilder: (context, time) {
                if (time == null) {
                  return Text('data');
                } else {
                  return Text(
                      'days: [ ${time.days} ], hours: [ ${time.hours} ], min: [ ${time.min} ], sec: [ ${time.sec} ]');
                }
              },
            ),
            CustomTimer(
                controller: _controller,
                begin: Duration(seconds: 30),
                end: Duration(),
                builder: (time) {
                  return Text('${time.minutes} ${time.seconds}');
                })
          ],
        ),
      ),
    );
  }
}
