import 'package:flutter/material.dart';
import 'package:flutter_gradients_reborn/flutter_gradients_reborn.dart';
import 'package:nathacksentry/colors/colours_list.dart';

class ComingSoon extends StatelessWidget {
  final String text, subtext;

  const ComingSoon({required this.text, required this.subtext});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 10, 15, 0),
      padding: EdgeInsets.fromLTRB(15, 10, 15, 0),
      height: 80,
      width: 400,
      decoration: BoxDecoration(
        gradient: FlutterGradients.politeRumors(),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Text(
            text,
            style: TextStyle(
              color: textturq3,
              fontSize: 22,
              fontWeight: FontWeight.w900,
            ),
          ),
          SizedBox(height: 10),
          Text(
            subtext,
            style: TextStyle(
                color: lightblue, fontSize: 14, fontWeight: FontWeight.w700),
          ),
          //email address added here!
        ],
      ),
    );
  }
}
