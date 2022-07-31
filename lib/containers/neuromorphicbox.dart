import 'package:flutter/material.dart';

class NeuromorphicBox extends StatelessWidget {
  const NeuromorphicBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      transformAlignment: Alignment.center,
      child: Container(
        color: Color.fromARGB(255, 239, 230, 235),
        // color: Color.fromARGB(255, 242, 227, 234),
        child: Container(
          width: 150,
          height: 150,
          child: Icon(
            Icons.star,
            size: 50,
            color: Colors.black,
          ),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 239, 230, 235),
            borderRadius: BorderRadius.circular(31),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 197, 182, 185),
                Color.fromARGB(255, 239, 230, 235)
              ],
            ),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 242, 227, 234),
                offset: Offset(-12.0, -12.0),
                blurRadius: 35,
                spreadRadius: 0.0,
              ),
              BoxShadow(
                color: Color.fromARGB(255, 197, 182, 185),
                offset: Offset(12.0, 12.0),
                blurRadius: 34,
                spreadRadius: 0.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
