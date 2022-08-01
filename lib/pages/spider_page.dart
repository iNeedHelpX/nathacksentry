import 'package:flutter/material.dart';
import 'package:nathacksentry/containers/neuromorphic_warning.dart';
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
                NeuromorphicWarning(
                  boomtitle: "This is the Spider section",
                  subtext:
                      "Photos are rank ordered according to insensity and likelyhood of inducing fearful responses. Work at you own pace and start with low numbered photos first. High numbered photos are the most frightening",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}