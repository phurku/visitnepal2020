import 'package:flutter/material.dart';
import 'package:visitnepal2020/ui/pages/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
primaryColor: Colors.lightGreen ),
      home: HomePage(),
    );
  }
}

