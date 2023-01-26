import 'package:flutter/material.dart';
import 'package:yawning_main/set_alarm.dart';
import 'size_config.dart';
import 'body.dart';
import 'alarm_item.dart';
import 'set_alarm.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
    );
  }

  AppBar buildAppBar(BuildContext context) =>
      AppBar(actions: [buildAddButton(context)]);

  Padding buildAddButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SetAlarm()),
          );
        },
        child: Container(
            width: 32,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.add,
              color: Colors.black,
            )),
      ),
    );
  }
}
