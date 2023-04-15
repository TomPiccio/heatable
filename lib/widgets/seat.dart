import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:heatable/widgets/heating.dart';
import 'package:heatable/providers/seatnum.dart';
import 'package:heatable/main.dart';

import 'package:provider/provider.dart';

class Seat extends StatefulWidget {
  final String SeatNumber;
  const Seat({super.key, required this.SeatNumber});

  @override
  State<Seat> createState() => _SeatState();
}

class _SeatState extends State<Seat> {
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

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () {
          String SNNN = widget.SeatNumber;

          loadSeat(SNNN);
          String yup = context.read<SeatNum>().Get_Seat();
          if (yup == SNNN) {
            context.read<SeatNum>().Add_Click();
          } else {
            context.read<SeatNum>().Reset_Click();
          }
          context.read<SeatNum>().Change_Seat(SNNN);
        },
        child: Center(
            child: Text(
          widget.SeatNumber,
          style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 0.9),
        )),
      ),
    );
  }
}
