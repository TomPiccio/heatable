import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class SeatNum with ChangeNotifier {
  String _seatnum = "32A";
  String get seatnum => _seatnum;
  int clicks = 0;
  bool Cool = false;
  bool Get_Cool() {
    return Cool;
  }

  void set_Cool(bool val) {
    Cool = val;
    print("Set as $Cool");
    notifyListeners();
  }

  void Change_Seat(String seat) {
    _seatnum = seat;
    notifyListeners();
  }

  String Get_Seat() {
    return _seatnum;
  }

  void Add_Click() {
    clicks++;
    notifyListeners();
  }

  int Get_Click() {
    Async_Change_Clicks();
    return clicks;
  }

  String STR_Click() {
    String output = "$clicks";
    return output;
  }

  void Reset_Click() {
    clicks = 0;
    notifyListeners();
  }

  Future<Null> Async_Change_Seat(String seat) async {
    if (seat != "UND") {
      final Map<String, String> updates = {"SeatAssign": seat};
      FirebaseDatabase.instance
          .ref("")
          .update(updates)
          .then((_) {})
          .catchError((error) {
        _seatnum = "UND";
      });
    }
    notifyListeners();
  }

  Future<Null> Async_Change_Clicks() async {
    final Map<String, int> updates = {"clicks": clicks};
    FirebaseDatabase.instance
        .ref("")
        .update(updates)
        .then((_) {})
        .catchError((error) {});
    notifyListeners();
  }

  Future<Null> Async_Assign_Seat(String seat) async {
    if (seat != "UND") {
      final Map<String, String> updates = {"SeatAssign": seat};
      FirebaseDatabase.instance
          .ref("")
          .update(updates)
          .then((_) {})
          .catchError((error) {
        _seatnum = "UND";
      });
      final Map<String, bool> updates2 = {"SeatAssignSet": true};
      FirebaseDatabase.instance
          .ref("")
          .update(updates2)
          .then((_) {})
          .catchError((error) {
        _seatnum = "UND";
      });
    }
    notifyListeners();
  }

  Future<Null> Async_Unpair_Seat(String seat) async {
    if (seat != "UND") {
      final Map<String, bool> updates = {"Paired": false};
      FirebaseDatabase.instance
          .ref(seat)
          .update(updates)
          .then((_) {})
          .catchError((error) {
        _seatnum = "UND";
      });
      notifyListeners();
    }
  }

  Future<Null> Async_Seat_Maker(String seat) async {
    if (seat != "UND") {
      final Map<String, String> updates = {"Status": "Idle"};
      FirebaseDatabase.instance
          .ref(seat)
          .set({
            "Status": "Idle",
            "Food_Sensors": true,
            "Heating": false,
            "Lid_Sensor": false,
            "OverHeat": false,
            "Paired": false,
            "RXTX_Error": false,
            "Warming": false,
            "Heat_time": 0,
            "LastUpdated": 0,
            "Temperature": -1000
          })
          .then((_) {})
          .catchError((error) {
            _seatnum = "UND";
          });
    }
  }
}
