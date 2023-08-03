import 'package:flutter/material.dart';
import 'dart:async';

class PomodoroScreen extends StatefulWidget {
  const PomodoroScreen({super.key});

  @override
  State<PomodoroScreen> createState() => _PomodoroScreenState();
}

class _PomodoroScreenState extends State<PomodoroScreen> {
  static var twentyFiveMinutes = 2;
  int totalSecods = twentyFiveMinutes;
  bool isRunning = false;
  int totalPomodoros = 0;
  int goal = 0;
  late Timer timer;
  bool change = false;

  void onTick(Timer timer) {
    if (totalSecods == 0) {
      setState(() {
        totalPomodoros = totalPomodoros + 1;
        totalSecods = twentyFiveMinutes;
      });
    } else if (totalPomodoros == 4) {
      setState(() {
        totalPomodoros = 0;
        goal = goal + 1;
      });
      timer.cancel();
    } else {
      setState(() {
        totalSecods = totalSecods - 1;
      });
    }
  }

  void OneFive() {
    timer.cancel();
    setState(() {
      twentyFiveMinutes = 900;
      change = false;
      totalSecods = 900;
      isRunning = false;
    });
  }

  void TwoZero() {
    timer.cancel();
    setState(() {
      twentyFiveMinutes = 1200;
      change = false;
      totalSecods = 1200;
      isRunning = false;
    });
  }

  void TwoFive() {
    timer.cancel();
    setState(() {
      twentyFiveMinutes = 1500;
      change = false;
      totalSecods = 1500;
      isRunning = false;
    });
  }

  void ThreeZero() {
    timer.cancel();
    setState(() {
      twentyFiveMinutes = 1800;
      change = false;
      totalSecods = 1800;
      isRunning = false;
    });
  }

  void ThreeFive() {
    timer.cancel();
    setState(() {
      twentyFiveMinutes = 2100;
      change = false;
      totalSecods = 2100;
      isRunning = false;
    });
  }

  void onStartPressed() {
    timer = Timer.periodic(const Duration(seconds: 1), onTick);
    setState(() {
      isRunning = true;
    });
  }

  void onPausePressed() {
    timer.cancel();
    setState(() {
      isRunning = false;
    });
  }

  void onResetPressed() {
    timer.cancel();
    setState(() {
      isRunning = false;
      totalSecods = twentyFiveMinutes;
    });
  }

  String format(int seconds) {
    var duration = Duration(seconds: seconds);

    return duration.toString().split(".").first.substring(2, 7);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).colorScheme.background,
        foregroundColor: Colors.white,
        title: const Text('POMOTIMER'),
        centerTitle: false,
      ),
      body: Column(
        children: [
          Flexible(
            fit: FlexFit.tight,
            flex: 1,
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Text(
                format(totalSecods),
                style: TextStyle(
                  color: Theme.of(context).cardColor,
                  fontSize: 89,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Flexible(
            fit: FlexFit.tight,
            flex: 1,
            child: Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 25,
                    ),
                    TextButton(
                        onPressed: isRunning ? OneFive : OneFive,
                        style: TextButton.styleFrom(
                          foregroundColor: const Color(0xffe7626c),
                          backgroundColor: Colors.white,
                          textStyle: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w900),
                        ),
                        child: const Text('15')),
                    const SizedBox(
                      width: 25,
                    ),
                    TextButton(
                        onPressed: isRunning ? TwoZero : TwoZero,
                        style: TextButton.styleFrom(
                          foregroundColor: const Color(0xffe7626c),
                          backgroundColor: Colors.white,
                          textStyle: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w900),
                        ),
                        child: const Text('20')),
                    const SizedBox(
                      width: 25,
                    ),
                    TextButton(
                        onPressed: isRunning ? TwoFive : TwoFive,
                        style: TextButton.styleFrom(
                          foregroundColor: const Color(0xffe7626c),
                          backgroundColor: Colors.white,
                          textStyle: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w900),
                        ),
                        child: const Text('25')),
                    const SizedBox(
                      width: 25,
                    ),
                    TextButton(
                        onPressed: isRunning ? ThreeZero : ThreeZero,
                        style: TextButton.styleFrom(
                          foregroundColor: const Color(0xffe7626c),
                          backgroundColor: Colors.white,
                          textStyle: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w900),
                        ),
                        child: const Text('30')),
                    const SizedBox(
                      width: 25,
                    ),
                    TextButton(
                        onPressed: isRunning ? ThreeFive : ThreeFive,
                        style: TextButton.styleFrom(
                          foregroundColor: const Color(0xffe7626c),
                          backgroundColor: Colors.white,
                          textStyle: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w900),
                        ),
                        child: const Text('35'))
                  ],
                ),
              ),
            ),
          ),
          Flexible(
            fit: FlexFit.tight,
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: IconButton(
                    onPressed: isRunning ? onPausePressed : onStartPressed,
                    icon: Icon(isRunning
                        ? Icons.pause_circle_outline
                        : Icons.play_circle_outline),
                    iconSize: 120,
                    color: Theme.of(context).cardColor,
                  ),
                ),
                Container(
                  child: IconButton(
                    onPressed: onResetPressed,
                    icon: const Icon(Icons.stop_circle_outlined),
                    iconSize: 120,
                    color: Theme.of(context).cardColor,
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            fit: FlexFit.tight,
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).cardColor,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '$totalPomodoros / 4',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w600,
                                color: Theme.of(context)
                                    .textTheme
                                    .displayLarge!
                                    .color,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              'ROUND',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Theme.of(context)
                                    .textTheme
                                    .displayLarge!
                                    .color,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '$goal / 12',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w600,
                                color: Theme.of(context)
                                    .textTheme
                                    .displayLarge!
                                    .color,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              'GOAL',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Theme.of(context)
                                    .textTheme
                                    .displayLarge!
                                    .color,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
