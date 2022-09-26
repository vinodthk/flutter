import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
LowerTitle() {
  return const Padding(
    padding: EdgeInsets.symmetric(horizontal: 20),
    child: Align(
      alignment: Alignment.topLeft,
      child: Text(
        "What do you want to eat ?",
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black54),
      ),
    ),
  );
}
