import 'dart:async';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:newapps/homepage.dart';
import 'package:pedometer/pedometer.dart';

class PedometerPage extends StatefulWidget {
  const PedometerPage({super.key});

  @override
  _PedometerPageState createState() => _PedometerPageState();
}

class _PedometerPageState extends State<PedometerPage> {
  String _stepCountValue = 'Unknown';
  StreamSubscription<StepCount>? _subscription;
  final Logger logger = Logger();

  @override
  void initState() {
    super.initState();
    initPedometer();
  }

  void initPedometer() {
    _subscription = Pedometer.stepCountStream.listen(
      (StepCount event) {
        setState(() {
          _stepCountValue = event.steps.toString();
        });
        logger.i('Step count updated: $event');
      },
      onError: (error) {
        logger.e('Error: $error');
      },
    );
  }

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return HomePage(stepCountValue: _stepCountValue);
  }
}
