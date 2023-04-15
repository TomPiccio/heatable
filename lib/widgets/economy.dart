import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:heatable/widgets/heating.dart';
import 'package:heatable/providers/seatnum.dart';
import 'package:heatable/main.dart';
import 'package:heatable/widgets/final_seat.dart';

class Economy extends StatefulWidget {
  final int row_num;

  const Economy({super.key, required this.row_num});

  @override
  State<Economy> createState() => _EconomyState();
}

class _EconomyState extends State<Economy> {
  String row_num2 = "01";
  @override
  void initState() {
    super.initState();
    int temp = widget.row_num;
    row_num2 = temp < 10 ? "0" + "$temp" : "$temp";
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FinalSeat(
          SeatNumber: (widget.row_num - 1) * 10,
        ),
        FinalSeat(
          SeatNumber: (widget.row_num - 1) * 10 + 1,
        ),
        FinalSeat(
          SeatNumber: (widget.row_num - 1) * 10 + 2,
        ),
        Expanded(child: Center(child: Text(row_num2))),
        FinalSeat(
          SeatNumber: (widget.row_num - 1) * 10 + 3,
        ),
        FinalSeat(
          SeatNumber: (widget.row_num - 1) * 10 + 4,
        ),
        FinalSeat(
          SeatNumber: (widget.row_num - 1) * 10 + 5,
        ),
        FinalSeat(
          SeatNumber: (widget.row_num - 1) * 10 + 6,
        ),
        Expanded(child: Center(child: Text(row_num2))),
        FinalSeat(
          SeatNumber: (widget.row_num - 1) * 10 + 7,
        ),
        FinalSeat(
          SeatNumber: (widget.row_num - 1) * 10 + 8,
        ),
        FinalSeat(
          SeatNumber: (widget.row_num - 1) * 10 + 9,
        ),
      ],
    );
  }
}
