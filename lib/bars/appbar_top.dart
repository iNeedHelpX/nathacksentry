import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nathacksentry/colors/bluepurple_gradient.dart';
import 'package:nathacksentry/colors/colours_list.dart';
import 'package:nathacksentry/colors/gradient.dart';

AppBar myRadialBar(BuildContext context) {
  return AppBar(
    shadowColor: textgreyblue,

    flexibleSpace: ClipRRect(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(24),
        bottomRight: Radius.circular(24),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: lightGrad(),
        ),
      ),
    ),
    elevation: 16,

    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(24),
        bottomRight: Radius.circular(24),
      ),
    ),
    //set size of appbar. This is sort of big
    bottom: PreferredSize(
      preferredSize: Size.fromHeight(70),
      child: Stack(
        children: [
          Text(
            "Fearless",
            style: GoogleFonts.damion(
              color: fill2,
              fontWeight: FontWeight.w800,
              fontSize: 65,
              shadows: [
                Shadow(
                  offset: Offset(8, 8.0),
                  blurRadius: 17.0,
                  color: fill2.withOpacity(0.6),
                )
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
