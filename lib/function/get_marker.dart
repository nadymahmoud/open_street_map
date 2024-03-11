import 'package:flutter/material.dart';

Widget getMarker(String image) {
  return Container(
    padding: EdgeInsets.all(2),
    width: 50,
    height: 50,
    decoration: BoxDecoration(boxShadow: [
      BoxShadow(
        color: Colors.grey,
        offset: Offset(0, .52),
        spreadRadius: 2,
        blurRadius: 3,
      )
    ], borderRadius: BorderRadius.circular(100), color: Colors.white),
    child: ClipOval(child: Image.asset(image)),
  );
}
