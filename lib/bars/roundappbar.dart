import 'package:flutter/material.dart';
import 'package:flutter_gradients_reborn/flutter_gradients_reborn.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nathacksentry/colors/colours_list.dart';

AppBar customBar() {
  return AppBar(
    elevation: 15,
    flexibleSpace: ClipRRect(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(100),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: FlutterGradients.perfectBlue(tileMode: TileMode.clamp),
        ),
      ),
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(100),
      ),
    ),
    bottom: PreferredSize(
      preferredSize: Size.fromHeight(100),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Fearless",
                  style: GoogleFonts.nothingYouCouldDo(
                      color: textturq2,
                      fontSize: 65,
                      fontWeight: FontWeight.w900),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    ),
  );
}
