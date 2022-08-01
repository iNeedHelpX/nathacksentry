import 'package:flutter/material.dart';
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
      child: Stack(
        children: [
          SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                NeuromorphicBox(
                  boomtitle: "This is the exposure page",
                  subtext:
                      "Take your time, breath and go at you own pace. photos are ranked from least scary (1) to scariest(10)",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
