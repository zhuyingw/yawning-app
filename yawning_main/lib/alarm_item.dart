import 'package:flutter/material.dart';
import 'size_config.dart';
import 'set_alarm.dart';

class alarmItem extends StatelessWidget {
  const alarmItem({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Setting Alarm"),
      ),
      body: Column(
        children: [
          //Spacer(),
          SetAlarm(),
          //buildButton(context: context), // for the current version, button is not used - 11.21 night
          //Spacer(),
          // Text(
          //   "Yo, Sleep is very important indeed",
          //   style: Theme.of(context).textTheme.bodyLarge,
          // ),
        ],
      ),
    );
  }
}

// class SetAlarm extends StatefulWidget {
//   const SetAlarm({super.key});

//   @override
//   State<StatefulWidget> createState() => _SetAlarmState();
// }

// class _SetAlarmState extends State<SetAlarm> {
//   TimeOfDay _timeOfDay = TimeOfDay.now();
//   @override
//   Widget build(BuildContext context) {
//     String _period = _timeOfDay.period == DayPeriod.am ? "AM" : "PM";
//     return Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
//       Container(
//         child: Text(
//           ":",
//           style: Theme.of(context).textTheme.headline1,
//         ),
//       ),
//       SizedBox(
//         child: Column(
//           children: [
//             Container(
//               child: Text(
//                 "0",
//                 style: Theme.of(context).textTheme.headline1,
//               ),
//             ),
//             Container(
//               child: Text(
//                 "1",
//                 style: Theme.of(context).textTheme.headline1,
//               ),
//             ),
//             Container(
//               child: Text(
//                 "2",
//                 style: Theme.of(context).textTheme.headline1,
//               ),
//             ),
//             Container(
//               child: Text(
//                 "3",
//                 style: Theme.of(context).textTheme.headline1,
//               ),
//             ),
//             Container(
//               child: Text(
//                 "3",
//                 style: Theme.of(context).textTheme.headline1,
//               ),
//             ),
//             Container(
//               child: Text(
//                 "3",
//                 style: Theme.of(context).textTheme.headline1,
//               ),
//             )
//           ],
//         ),
//       ),
//       SizedBox(
//         child: Column(
//           children: [
//             Container(
//               child: Text(
//                 "0",
//                 style: Theme.of(context).textTheme.headline1,
//               ),
//             ),
//             Container(
//               child: Text(
//                 "1",
//                 style: Theme.of(context).textTheme.headline1,
//               ),
//             ),
//             Container(
//               child: Text(
//                 "2",
//                 style: Theme.of(context).textTheme.headline1,
//               ),
//             ),
//             Container(
//               child: Text(
//                 "3",
//                 style: Theme.of(context).textTheme.headline1,
//               ),
//             ),
//           ],
//         ),
//       ),
//       SizedBox(
//           width: 40,
//           child: Column(
//             children: [
//               Container(
//                   child: Text(
//                 "AM",
//                 style: TextStyle(fontSize: 16),
//               )),
//               Container(
//                   child: Text(
//                 "PM",
//                 style: TextStyle(fontSize: 16),
//               ))
//             ],
//           )),
//     ]);
//   }
// }

class buildButton extends StatelessWidget {
  const buildButton({
    Key? key,
    required this.context,
  }) : super(key: key);

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: const EdgeInsets.only(right: 10.0),
      margin: const EdgeInsets.only(left: 200.0),
      child: InkWell(
        onTap: () {},
        child: Container(
            width: 32,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              shape: BoxShape.rectangle,
            ),
            child: Icon(
              Icons.check,
              color: Colors.white,
            )),
      ),
    );
  }
}
