import 'package:flutter/material.dart';
import 'global.dart' as globals;
import 'dart:async';

//doesnt seem to work as set time does not update - might be a response really slow thing

class SetTeller extends StatefulWidget {
  @override
  State<SetTeller> createState() => _SetTellerState();
}

class _SetTellerState extends State<SetTeller> {
  TimeOfDay _timeOfDay = TimeOfDay.now();
  int repHour = 9;
  int repMin = 9;
  String repAm = "am";

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 1), (timer) {
      if (_timeOfDay.minute != TimeOfDay.now().minute) {
        setState(() {
          repHour = globals.setHour;
          repMin = globals.setMin;
          repAm = globals.setAm;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "Your Sleep Timer is ...  " +
            "${repHour}" +
            ":" +
            "${repMin}" +
            "${repAm}",
        style: Theme.of(context).textTheme.bodyText1,
      ),
    );
  }
}
