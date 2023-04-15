import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'dart:ui' show lerpDouble;

class Heating extends StatefulWidget {
  @override
  _HeatingState createState() => _HeatingState();
}

class _HeatingState extends State<Heating> {
  String _display = "No Data!";
  final _database = FirebaseDatabase.instance.ref("");

  @override
  void initState() {
    super.initState();
    _activateListeners();
  }

  void _activateListeners() {
    _database.child("Heating").onValue.listen((event) {
      final dynamic val = event.snapshot.value;
      setState(() {
        if (val == " ") {
          _display = "No Trays Heating";
        } else {
          _display = val;
        }
      });
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Heating Seats'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Column(
            children: [
              Text(
                _display,
                style: DefaultTextStyle.of(context)
                    .style
                    .apply(fontSizeFactor: 2.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
