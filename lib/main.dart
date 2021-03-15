import 'package:flutter/material.dart';

import 'front/Home.dart';
// import 'front/Calculated.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      // home: Calculated(),
    );
  }
}
