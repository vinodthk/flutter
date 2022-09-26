import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
TodaysPromo() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: const [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Text(
          "Today's Promo",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 25, color: Colors.black87),
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Text(
          "See all",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17,
              color: Colors.redAccent),
        ),
      ),
    ],
  );
}
