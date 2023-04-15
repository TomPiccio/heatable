import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:heatable/providers/seatnum.dart';
import 'package:heatable/main.dart';
import 'package:provider/provider.dart';

class Grid_View extends StatefulWidget {
  const Grid_View({super.key});

  @override
  State<Grid_View> createState() => _Grid_ViewState();
}

class _Grid_ViewState extends State<Grid_View> {
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
      body: GridView.count(
        crossAxisCount: 3,
        children: [
          Container(height: 50, width: 50, color: Colors.blue),
          Container(height: 50, width: 50, color: Colors.blue),
          Container(height: 50, width: 50, color: Colors.blue),
          Container(height: 50, width: 50, color: Colors.blue),
          Container(height: 50, width: 50, color: Colors.blue),
        ],
      ),
    );
  }
}
