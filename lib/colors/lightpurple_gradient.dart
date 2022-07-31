import 'package:flutter/material.dart';

LinearGradient bluePurpleGrad() {
  return LinearGradient(colors: [
    Color.fromARGB(255, 181, 146, 243),
    Color.fromARGB(255, 152, 142, 225),
    Color.fromARGB(255, 135, 125, 204),
  ], begin: Alignment.bottomRight, end: Alignment.topLeft);
}
