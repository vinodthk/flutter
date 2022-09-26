import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
FovoriteBar() {
  return Padding(
    padding: const EdgeInsets.all(2),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10),
              ),
              height: 80,
              width: 80,
              child: Icon(
                Icons.favorite_border,
                size: 40,
                color: Colors.deepOrange[500],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Fovorite',
                style: TextStyle(color: Colors.black54, fontSize: 17),
              ),
            )
          ],
        ),
        Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10),
              ),
              height: 80,
              width: 80,
              child: Icon(
                Icons.call_made_sharp,
                size: 40,
                color: Colors.deepOrange[500],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Cheap',
                style: TextStyle(color: Colors.black54, fontSize: 17),
              ),
            )
          ],
        ),
        Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10),
              ),
              height: 80,
              width: 80,
              child: Icon(
                Icons.trending_up,
                size: 40,
                color: Colors.deepOrange[500],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Trend',
                style: TextStyle(color: Colors.black54, fontSize: 17),
              ),
            )
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10),
              ),
              height: 80,
              width: 80,
              child: Icon(
                Icons.more_horiz_sharp,
                size: 40,
                color: Colors.deepOrange[500],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'More',
                style: TextStyle(color: Colors.black54, fontSize: 17),
              ),
            )
          ],
        ),
      ],
    ),
  );
}
