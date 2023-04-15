import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:heatable/widgets/heating.dart';
import 'package:heatable/providers/seatnum.dart';
import 'package:heatable/main.dart';
import 'dart:async';
import 'package:google_fonts/google_fonts.dart';
import 'package:heatable/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';

import 'package:provider/provider.dart';

class NewSeat extends StatefulWidget {
  final int SeatNumber;
  const NewSeat({super.key, required this.SeatNumber});

  @override
  State<NewSeat> createState() => _NewSeatState();
}

class _NewSeatState extends State<NewSeat> {
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
    double baseWidth = 1366;
    double scalefactor = 0.7;
    double fem = MediaQuery.of(context).size.width * scalefactor / baseWidth;
    double ffem = fem * 0.97;
    return Expanded(
      child: Container(
        // eYqv (41:998)
        margin: EdgeInsets.fromLTRB(0 * fem, 3 * fem, 10 * fem, 2 * fem),
        child: TextButton(
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
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
          ),
          child: Container(
            padding:
                EdgeInsets.fromLTRB(17.17 * fem, 10 * fem, 14 * fem, 10 * fem),
            decoration: BoxDecoration(
              color: Cool
                  ? online
                      ? Color(0xff303e55)
                      : Colors.grey[500]
                  : Color(0xffb31a23),
              borderRadius: BorderRadius.circular(20 * fem),
              boxShadow: [
                BoxShadow(
                  color: Color(0x3f000000),
                  offset: Offset(10 * fem, 10 * fem),
                  blurRadius: 6 * fem,
                ),
              ],
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // solardangertrianglelinear1jW (41:1008)
                  margin: EdgeInsets.fromLTRB(
                      0 * fem, 0 * fem, 19.17 * fem, 0 * fem),
                  padding:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0.8 * fem, 0 * fem),
                  width: 31.67 * fem,
                  height: 28.5 * fem,
                  child: Image.asset(
                    'assets/page-1/images/solar-danger-triangle-linear-RQ4.png',
                    width: 31.67 * fem,
                    height: 28.5 * fem,
                  ),
                ),
                Text(
                  // eVeg (41:1007)
                  Decode(widget.SeatNumber),
                  textAlign: TextAlign.right,
                  style: SafeGoogleFont(
                    'Poppins',
                    fontSize: 32 * ffem,
                    fontWeight: FontWeight.w400,
                    height: 1.5 * ffem / fem,
                    color: Color(0xfff7ebda),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
