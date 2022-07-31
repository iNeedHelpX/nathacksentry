import 'package:flutter/material.dart';
import 'package:flutter_gradients_reborn/flutter_gradients_reborn.dart';
import 'package:nathacksentry/colors/colours_list.dart';
import 'package:nathacksentry/containers/infobox.dart';
import 'package:nathacksentry/containers/neuromorphicbox.dart';

class ExposurePage extends StatefulWidget {
  ExposurePage({Key? key}) : super(key: key);

  @override
  State<ExposurePage> createState() => _ExposurePageState();
}

class _ExposurePageState extends State<ExposurePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
          child: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AboutApp(boomtitle: "hello", subtext: "thi"),
              SizedBox(
                height: 25,
              ),
              NeuromorphicBox(),
              SizedBox(
                height: 20,
              ),
            ],
          )
        ],
      )),
    );
  }
}
