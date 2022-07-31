import 'package:flutter/material.dart';
import 'package:flutter_gradients_reborn/flutter_gradients_reborn.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nathacksentry/colors/colours_list.dart';

class AboutApp extends StatefulWidget {
  final String boomtitle;
  final String subtext;

  AboutApp({
    Key? key,
    required this.boomtitle,
    required this.subtext,
  }) : super(key: key);

  @override
  _AboutAppState createState() => _AboutAppState();
}

class _AboutAppState extends State<AboutApp> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Padding(
          //This is the padding around the box
          padding: const EdgeInsets.fromLTRB(15, 2, 15, 0),
          child: Container(
            padding: EdgeInsets.only(
                //This is the padding around the text!
                left: 15,
                top: 5,
                right: 15,
                bottom: 20),
            width: 400,
            margin: EdgeInsets.only(top: 10),
            decoration: _decor(),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _boomTitle(),
                _textTitle(),
              ],
            ),
          ),
        ),
      ],
    );
  }

//the box color and design
  BoxDecoration _decor() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      gradient: FlutterGradients.freshMilk(),
      boxShadow: [
        //shadow
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
    );
  }

  Align _boomTitle() {
    return Align(
      alignment: Alignment.topCenter,
      child: Text(
        widget.boomtitle,
        style: GoogleFonts.lemon(
          fontSize: 24,
          color: fill2,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Align _textTitle() {
    return Align(
      alignment: Alignment.center,
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
              text: widget.subtext,
              style: GoogleFonts.cherryCreamSoda(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
