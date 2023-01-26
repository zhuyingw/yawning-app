import 'package:flutter/material.dart';
import 'package:yawning_main/setTeller.dart';
import 'time_in_hour_and_minute.dart';
import 'to_be.dart';
import 'global.dart' as globals;

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Spacer(),
          ToBe(), //Resting() or Yawning()

          Spacer(),
          TimeInHourAndMinute(),
          Text(
            "New York | EST",
            style: Theme.of(context).textTheme.bodyText1,
          ),
          Spacer(),
          Text(
            "Sleep is very important",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          SetTeller(),
        ],
      ),
    );
  }
}
