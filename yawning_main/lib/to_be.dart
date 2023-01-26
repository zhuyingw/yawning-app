import 'package:flutter/material.dart';
import 'dart:async';
import 'set_alarm.dart';
import 'global.dart' as globals;

class ToBe extends StatefulWidget {
  @override
  State<ToBe> createState() => _ToBeState();
}

class _ToBeState extends State<ToBe> {
  int helper = -1;
  TimeOfDay _now = TimeOfDay.now();
  String check = "yo";

  @override
  void initState() {
    super.initState();

    Timer.periodic(Duration(seconds: 1), (timer) {
      if (_now.minute != TimeOfDay.now().minute) {
        setState(() {
          _now = TimeOfDay.now();
        });
      }
    });

    String _nowPeriod = _now.period == DayPeriod.am ? "am" : "pm";

    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_now.hourOfPeriod == globals.setHour &&
            _now.minute == globals.setMin &&
            _nowPeriod == globals.setAm) {
          helper = 0;
          check = _nowPeriod;
        } else {
          helper = 1;
          check = _nowPeriod;
        }
      });
    });
  }

  Widget build(BuildContext context) {
    return Container(child: helper == 0 ? Yawning() : Resting()
        //the following works and will update with time
        // child: helper == 0
        //     ? Text("yawn works" +
        //         "${helper}" +
        //         "::" +
        //         "set" +
        //         "${globals.setHour}" +
        //         ":" +
        //         "${globals.setMin}" +
        //         "${globals.setAm}" +
        //         "::" +
        //         "now" +
        //         "${_now.hourOfPeriod}" +
        //         "${_now.minute}" +
        //         "${check}")
        //     : Text("resting works" +
        //         "${helper}" +
        //         "::" +
        //         "set" +
        //         "${globals.setHour}" +
        //         ":" +
        //         "${globals.setMin}" +
        //         "${globals.setAm}" +
        //         "::" +
        //         "now" +
        //         "${_now.hourOfPeriod}" +
        //         "${_now.minute}" +
        //        "${check}")
        );
  }
}

class Yawning extends StatefulWidget {
  const Yawning({super.key});

  @override
  State<Yawning> createState() => _YawningState();
}

class _YawningState extends State<Yawning> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      width: 300,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/icons/yawning.gif'),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}

class Resting extends StatefulWidget {
  const Resting({super.key});

  @override
  State<Resting> createState() => _RestingState();
}

class _RestingState extends State<Resting> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      width: 300,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/icons/resting.gif'),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
