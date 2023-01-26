import 'package:flutter/material.dart';
import 'theme.dart';
import 'my_theme_provider.dart';

import './home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yawning Clock',
      theme: themeData(context), //light theme
      darkTheme: darkThemeData(context), //dark theme
      themeMode: ThemeMode.dark,
      home: HomeScreen(),
    );
  }
}
