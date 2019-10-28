import 'package:flutter/material.dart';
class RestaurentPage extends StatefulWidget {
  @override
  _RestaurentPageState createState() => _RestaurentPageState();
}

class _RestaurentPageState extends State<RestaurentPage> {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(
        
        title: Text("Restaurent"),
        centerTitle: true,
      ),
    );
  }
}