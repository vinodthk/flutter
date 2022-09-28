import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
MyCard() {
  return Padding(
    padding: const EdgeInsets.all(08),
    child: Container(
      width: 350,
      height: 250,
      // padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.deepPurple[300],
        borderRadius: const BorderRadius.all(Radius.circular(20.0)),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20), // Image border
        child: SizedBox.fromSize(
          size: const Size.fromRadius(48), // Image radius
          child: Image.asset('assets/images/02.jpg', fit: BoxFit.cover),
        ),
      ),
    ),
  );
}
