import 'package:flutter/material.dart';

class Headers extends StatefulWidget {
  const Headers({super.key});

  @override
  State<Headers> createState() => _HeadersState();
}

class _HeadersState extends State<Headers> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Center(
            child: Text("A"),
          ),
        ),
        Expanded(
          child: Center(
            child: Text("B"),
          ),
        ),
        Expanded(
          child: Center(
            child: Text("C"),
          ),
        ),
        Expanded(
          child: Center(
            child: Text(" "),
          ),
        ),
        Expanded(
          child: Center(
            child: Text("D"),
          ),
        ),
        Expanded(
          child: Center(
            child: Text("E"),
          ),
        ),
        Expanded(
          child: Center(
            child: Text("F"),
          ),
        ),
        Expanded(
          child: Center(
            child: Text("G"),
          ),
        ),
        Expanded(
          child: Center(
            child: Text(" "),
          ),
        ),
        Expanded(
          child: Center(
            child: Text("H"),
          ),
        ),
        Expanded(
          child: Center(
            child: Text("J"),
          ),
        ),
        Expanded(
          child: Center(
            child: Text("K"),
          ),
        ),
      ],
    );
  }
}
