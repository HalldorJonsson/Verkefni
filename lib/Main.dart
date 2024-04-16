import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body:  GradientContainer(
          Color.fromARGB(220, 63, 1, 27),
          Color.fromARGB(220, 56, 5, 77)),
    ),
  ),
  );
}
