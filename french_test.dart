import 'package:flutter/material.dart';
import 'french_test_home.dart';

class FrenchTestApp extends StatelessWidget {
  /// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        /// This is the theme of your application.
        primarySwatch: Colors.blue,
      ),
      home: FrenchTestHome(),
    );
  }
}
