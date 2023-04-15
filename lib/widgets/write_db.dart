import 'package:flutter/material.dart';

class WriteDb extends StatefulWidget {
  @override
  _WriteDbState createState() => _WriteDbState();
}

class _WriteDbState extends State<WriteDb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Write on Database'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
