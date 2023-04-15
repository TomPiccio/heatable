import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  String _display = "No Data!";
  String _display2 = "No Data2!";
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
    _database.child("FACALL").onValue.listen((event) {
      final dynamic val = event.snapshot.value;
      setState(() {
        if (val == " ") {
          _display2 = "No Trays Heating";
        } else {
          _display2 = val;
        }
      });
    });
  }

  Widget build(BuildContext context) {
    return Center(
      child: Text(
        _display + ", " + _display2,
        style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 2.0),
      ),
    );
  }
}
