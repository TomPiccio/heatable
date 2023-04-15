import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:heatable/widgets/heating.dart';
import 'package:heatable/providers/seatnum.dart';
import 'package:heatable/main.dart';
import 'package:heatable/widgets/new_seat.dart';

class NewEconomy extends StatefulWidget {
  final int row_num;

  const NewEconomy({super.key, required this.row_num});

  @override
  State<NewEconomy> createState() => _NewEconomyState();
}

class _NewEconomyState extends State<NewEconomy> {
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
        NewSeat(
          SeatNumber: (widget.row_num - 1) * 10,
        ),
        NewSeat(
          SeatNumber: (widget.row_num - 1) * 10 + 1,
        ),
        NewSeat(
          SeatNumber: (widget.row_num - 1) * 10 + 2,
        ),
        Expanded(child: Center(child: Text(row_num2))),
        NewSeat(
          SeatNumber: (widget.row_num - 1) * 10 + 3,
        ),
        NewSeat(
          SeatNumber: (widget.row_num - 1) * 10 + 4,
        ),
        NewSeat(
          SeatNumber: (widget.row_num - 1) * 10 + 5,
        ),
        NewSeat(
          SeatNumber: (widget.row_num - 1) * 10 + 6,
        ),
        Expanded(child: Center(child: Text(row_num2))),
        NewSeat(
          SeatNumber: (widget.row_num - 1) * 10 + 7,
        ),
        NewSeat(
          SeatNumber: (widget.row_num - 1) * 10 + 8,
        ),
        NewSeat(
          SeatNumber: (widget.row_num - 1) * 10 + 9,
        ),
      ],
    );
  }
}
