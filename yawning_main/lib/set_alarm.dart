import 'package:flutter/material.dart';
import 'package:yawning_main/minutes.dart';
import 'minutes.dart';
import 'am_pm.dart';
import 'hours.dart';
import 'global.dart' as globals;

class SetAlarm extends StatefulWidget {
  const SetAlarm({super.key});

  @override
  State<SetAlarm> createState() => _SetAlarmState();
}

class _SetAlarmState extends State<SetAlarm> {
  // static int setHour = 0;
  // static int setMin = 0;
  // static String setAm = "am";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(globals.setHour.toString() +
            ":" +
            globals.setMin.toString() +
            globals.setAm),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //hours wheel
          Container(
            width: 70,
            child: ListWheelScrollView.useDelegate(
              onSelectedItemChanged: (value) {
                //save the set hour
                setState(() {
                  globals.setHour = value;
                });
              },
              itemExtent: 40,
              physics: FixedExtentScrollPhysics(),
              childDelegate: ListWheelChildBuilderDelegate(
                  childCount: 13,
                  builder: (context, index) {
                    return MyHours(
                      hours: index,
                    );
                  }),
            ),
          ),

          SizedBox(
            child: Text(":",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                )),
          ),
          //min wheel
          Container(
            width: 70,
            child: ListWheelScrollView.useDelegate(
              onSelectedItemChanged: (value) {
                //save the set hour
                setState(() {
                  globals.setMin = value;
                });
              },
              itemExtent: 40,
              physics: FixedExtentScrollPhysics(),
              childDelegate: ListWheelChildBuilderDelegate(
                  childCount: 60,
                  builder: (context, index) {
                    return MyMinutes(
                      mins: index,
                    );
                  }),
            ),
          ),

          //am or pm
          Container(
            width: 70,
            child: ListWheelScrollView.useDelegate(
              onSelectedItemChanged: (value) {
                //save the set hour
                setState(() {
                  if (value == 0) {
                    globals.setAm = "am";
                  } else {
                    globals.setAm = "pm";
                  }
                });
              },
              itemExtent: 50,
              physics: FixedExtentScrollPhysics(),
              childDelegate: ListWheelChildBuilderDelegate(
                  childCount: 2,
                  builder: (context, index) {
                    if (index == 0) {
                      return AmPm(
                        isAm: true,
                      );
                    } else {
                      return AmPm(
                        isAm: false,
                      );
                    }
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
