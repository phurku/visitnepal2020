import 'package:flutter/material.dart';
class PubsPage extends StatefulWidget {
  @override
  _PubsPageState createState() => _PubsPageState();
}

class _PubsPageState extends State<PubsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pubs"),
        centerTitle: true,
      ),
    );
  }
}