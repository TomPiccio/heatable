import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class ReadDb extends StatefulWidget {
  @override
  _ReadDbState createState() => _ReadDbState();
}

class _ReadDbState extends State<ReadDb> {
  String _display = "No Data!";
  String _display2 = "No Data!";
  final _database = FirebaseDatabase.instance.ref("");

  @override
  void initState() {
    super.initState();
    _activateListeners();
  }

  void _activateListeners() {
    _database.child("FACALL").onValue.listen((event) {
      final dynamic val = event.snapshot.value;
      setState(() {
        if (val == " ") {
          _display = "No Calls";
        } else {
          _display = val;
        }
      });
    });
    _database.child("Heating").onValue.listen((event) {
      final dynamic val = event.snapshot.value;
      setState(() {
        if (val == " ") {
          _display2 = "No Calls";
        } else {
          _display2 = val;
        }
      });
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flight Attendant Calls'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Column(
            children: [
              Text(
                _display + ", " + _display2,
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
