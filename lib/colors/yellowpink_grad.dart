import 'package:flutter/material.dart';

LinearGradient yellowPinkGrad() {
  return LinearGradient(colors: [
    Color.fromARGB(255, 254, 196, 113),
    Color.fromARGB(255, 255, 150, 246)
  ], begin: Alignment.topLeft, end: Alignment.bottomRight);
}
