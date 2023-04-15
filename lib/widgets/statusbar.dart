import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:heatable/widgets/heating.dart';
import 'package:heatable/providers/seatnum.dart';
import 'package:heatable/main.dart';

import 'package:provider/provider.dart';

class StatusBar extends StatefulWidget {
  final String seatnum;
  const StatusBar({super.key, required this.seatnum});

  @override
  State<StatusBar> createState() => _StatusBarState();
}

class _StatusBarState extends State<StatusBar> {
  String _status = "Idle";
  String _temperature = "Temp: -1.11 \u2103";
  String _lid = "Lid Closed";
  String _food = "Present";
  String _SeatNum = "";
  DatabaseReference _database = FirebaseDatabase.instance.ref("");
  int counter = 0;

  @override
  void initState() {
    super.initState();
    _SeatNum = widget.seatnum;
    rootFirebaseIsExists(FirebaseDatabase.instance.ref(widget.seatnum));
  }

  bool Cool = false;
  Future<bool> rootFirebaseIsExists(DatabaseReference databaseReference) async {
    final snapshot = await databaseReference.get();
    if (!snapshot.exists) {
      Cool = false;
      context.read<SeatNum>().set_Cool(false);
    } else {
      Cool = true;
      context.read<SeatNum>().set_Cool(true);
      _activateListeners();
    }

    return snapshot.exists;
  }

  bool Paired = false;

  String SN = "UND";
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

  void _activateListeners() {
    Cool = context.read<SeatNum>().Get_Cool();
    print(Cool);
    print(_SeatNum);
    if (Cool) {
      _database.child(_SeatNum).child("Status").onValue.listen((event) {
        final dynamic val = event.snapshot.value;
        setState(() {
          if (val == " ") {
            _status = "No Connection";
          } else {
            _status = '$val';
          }
        });
      });
      _database.child(_SeatNum).child("Temperature").onValue.listen((event) {
        final dynamic val = event.snapshot.value;
        setState(() {
          if (val < -200.0) {
            _temperature = "Temp: ERROR";
          } else {
            _temperature = "Temp $val" + " \u2103";
          }
        });
      });
      _database.child(_SeatNum).child("Lid_Sensor").onValue.listen((event) {
        final dynamic val = event.snapshot.value;
        setState(() {
          if (val) {
            _lid = "Lid Closed";
          } else {
            _lid = "Lid Open";
          }
        });
      });
      _database.child(_SeatNum).child("Paired").onValue.listen((event) {
        final dynamic val = event.snapshot.value;
        setState(() {
          Paired = val;
        });
      });
      _database.child(_SeatNum).child("Food_Sensors").onValue.listen((event) {
        final dynamic val = event.snapshot.value;
        setState(() {
          if (val) {
            _food = "Food Present";
          } else {
            _food = "Food Absent";
          }
        });
      });
    }
  }

  Widget build(BuildContext context) {
    return Cool
        ? Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.grey[200],
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 2.0),
                        child: Text(
                          _SeatNum,
                          textAlign: TextAlign.left,
                          style: DefaultTextStyle.of(context)
                              .style
                              .apply(fontSizeFactor: 3.5),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                        child: Text(
                          "Status: " + _status,
                          style: DefaultTextStyle.of(context)
                              .style
                              .apply(fontSizeFactor: 1),
                        ),
                      ),
                    ]),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(8.0, 0.0, 0.0, 0.0),
                        height: 100,
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                padding: const EdgeInsets.fromLTRB(
                                    2.0, 10.0, 2.0, 5.0),
                                child: Text(
                                  _temperature,
                                  textAlign: TextAlign.left,
                                  style: DefaultTextStyle.of(context)
                                      .style
                                      .apply(fontSizeFactor: 1),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                padding: const EdgeInsets.fromLTRB(
                                    2.0, 5.0, 2.0, 5.0),
                                child: Text(
                                  _lid,
                                  textAlign: TextAlign.left,
                                  style: DefaultTextStyle.of(context)
                                      .style
                                      .apply(fontSizeFactor: 1),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                padding: const EdgeInsets.fromLTRB(
                                    2.0, 5.0, 2.0, 5.0),
                                child: Text(
                                  _food,
                                  textAlign: TextAlign.left,
                                  style: DefaultTextStyle.of(context)
                                      .style
                                      .apply(fontSizeFactor: 1),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 5.0),
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              width: double.infinity,
                              padding: EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 5.0),
                              child: ElevatedButton(
                                  onPressed: () {
                                    if (Paired) {
                                      Paired = false;
                                      context
                                          .read<SeatNum>()
                                          .Async_Unpair_Seat(widget.seatnum);
                                    } else {
                                      context
                                          .read<SeatNum>()
                                          .Async_Assign_Seat(widget.seatnum);
                                    }
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.blue,
                                      foregroundColor: Colors.white),
                                  child: Text(Paired ? "Unpair" : "Pair")),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              width: double.infinity,
                              padding: EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 5.0),
                              child: ElevatedButton(
                                  onPressed: () {
                                    String SNNN = "UND";

                                    loadSeat(SNNN);
                                    String yup =
                                        context.read<SeatNum>().Get_Seat();
                                    if (yup == SNNN) {
                                      context.read<SeatNum>().Add_Click();
                                    } else {
                                      context.read<SeatNum>().Reset_Click();
                                    }
                                    context.read<SeatNum>().Change_Seat(SNNN);
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.red,
                                      foregroundColor: Colors.white),
                                  child: Text("Close")),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        : Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.grey[200],
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 2.0),
                        child: Text(
                          _SeatNum,
                          textAlign: TextAlign.left,
                          style: DefaultTextStyle.of(context)
                              .style
                              .apply(fontSizeFactor: 3.5),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                        child: Text(
                          "Status: NA",
                          style: DefaultTextStyle.of(context)
                              .style
                              .apply(fontSizeFactor: 1),
                        ),
                      ),
                    ]),
                  ),
                  Expanded(
                    child: Center(child: Text("No Connection!")),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 5.0),
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              width: double.infinity,
                              padding: EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 5.0),
                              child: ElevatedButton(
                                  onPressed: () {
                                    context
                                        .read<SeatNum>()
                                        .Async_Assign_Seat(widget.seatnum);
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.blue,
                                      foregroundColor: Colors.white),
                                  child: const Text("Pair")),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              width: double.infinity,
                              padding: EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 5.0),
                              child: ElevatedButton(
                                  onPressed: () {
                                    String SNNN = "UND";

                                    loadSeat(SNNN);
                                    String yup =
                                        context.read<SeatNum>().Get_Seat();
                                    if (yup == SNNN) {
                                      context.read<SeatNum>().Add_Click();
                                    } else {
                                      context.read<SeatNum>().Reset_Click();
                                    }
                                    context.read<SeatNum>().Change_Seat(SNNN);
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.red,
                                      foregroundColor: Colors.white),
                                  child: Text("Close")),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
  }
}

void Pair(String SeatNumber) {}
