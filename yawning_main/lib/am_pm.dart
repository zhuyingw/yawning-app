import 'package:flutter/material.dart';

class AmPm extends StatelessWidget {
  final bool isAm;

  AmPm({required this.isAm});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        child: Text(
          isAm == true ? 'am' : 'pm',
          style: TextStyle(
            fontSize: 15,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
