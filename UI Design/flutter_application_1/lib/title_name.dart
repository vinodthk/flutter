import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
TitleName() {
  return const Padding(
    padding: EdgeInsets.symmetric(horizontal: 20),
    child: Align(
      alignment: Alignment.topLeft,
      child: Text(
        "Hello Yahya",
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 40, color: Colors.black87),
      ),
    ),
  );
}
