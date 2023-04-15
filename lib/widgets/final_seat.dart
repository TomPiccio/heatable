import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:heatable/widgets/heating.dart';
import 'package:heatable/providers/seatnum.dart';
import 'package:heatable/main.dart';
import 'dart:async';

import 'package:provider/provider.dart';

class FinalSeat extends StatefulWidget {
  final int SeatNumber;
  const FinalSeat({super.key, required this.SeatNumber});

  @override
  State<FinalSeat> createState() => _FinalSeatState();
}

class _FinalSeatState extends State<FinalSeat> {
  String SN = "UND";
  bool online = false;
  Future loadSeat(String SNum) async {
    showDialog(
      context: context,
      builder: (context) {
        return Center(child: CircularProgressIndicator());
      },
    );

    await context.read<SeatNum>().Async_Change_Seat(SNum);

    SN = SNum;
    Navigator.of(context).pop();
  }

  @override
  void initState() {
    super.initState();
    initTimer();
    rootFirebaseIsExists(
        FirebaseDatabase.instance.ref(Decode(widget.SeatNumber)));
  }

  Timer? timer;

  void initTimer() {
    if (timer != null && timer!.isActive) return;

    timer = Timer.periodic(const Duration(seconds: 5), (timer) {
      if (Cool) {
        setState(() {
          if (curr_time - old_time > 200) {
            print("Online");
            online = true;
            old_time = curr_time;
          } else {
            online = false;
            print("Offline");
          }
        });
      }
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  bool Cool = false;
  Future<bool> rootFirebaseIsExists(DatabaseReference databaseReference) async {
    final snapshot = await databaseReference.get();

    if (!snapshot.exists) {
      print("Item doesn't exist in the db");
      context.read<SeatNum>().set_Cool(false);
      Cool = false;
      print(Decode(widget.SeatNumber));
    } else {
      context.read<SeatNum>().set_Cool(true);
      Cool = true;
      _activateListeners();
    }
    return snapshot.exists;
  }

  int old_time = -2;
  int curr_time = -1;
  void _activateListeners() {
    if (Cool) {
      dynamic db = FirebaseDatabase.instance.ref(Decode(widget.SeatNumber));
      db.child("LastUpdated").onValue.listen((event) {
        final dynamic val = event.snapshot.value;
        setState(() {
          if (val > curr_time) {
            curr_time = val;
          } else {}
        });
      });
    }
  }

  String Decode(int sn) {
    int a = (sn ~/ 10) + 1;
    int b = sn % 10;
    List<String> letters = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J'];
    String output = "";
    if (a < 10) {
      output += "0";
    }
    output += "$a";
    output += letters[b];
    return output;
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
          onPressed: () {
            //print(Cool);

            String SNNN = Decode(widget.SeatNumber);

            loadSeat(SNNN);
            String yup = context.read<SeatNum>().Get_Seat();
            if (yup == SNNN) {
              context.read<SeatNum>().Add_Click();
            } else {
              context.read<SeatNum>().Reset_Click();
            }
            context.read<SeatNum>().Change_Seat(SNNN);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Cool
                ? online
                    ? Colors.blueGrey
                    : Colors.grey[500]
                : Colors.grey[300], // Background color
          ),
          child: Text(Decode(widget.SeatNumber))),
    );
  }
}
