import 'package:flutter/material.dart';
import 'package:nathacksentry/colors/lightpurple_gradient.dart';
import 'package:flutter_gradients_reborn/flutter_gradients_reborn.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  //makes text optional
  Text title;
  final double barHeight = 30.0;
  MainAppBar({Key? key, required this.title}) : super(key: key);
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + 70.0);
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
        child: ClipPath(
          clipper: WaveClip(),
          child: Container(
            decoration: BoxDecoration(gradient: FlutterGradients.perfectBlue()),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[title],
            ),
          ),
        ),
        preferredSize: Size.fromHeight(kToolbarHeight + 40));
  }
}

class WaveClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = new Path();
    final lowPoint = size.height - 30;
    final highPoint = size.height - 60;
    path.lineTo(0, size.height);
    path.quadraticBezierTo(size.width / 4, highPoint, size.width / 2, lowPoint);
    path.quadraticBezierTo(
        3 / 4 * size.width, size.height, size.width, lowPoint);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
