import 'package:flutter/material.dart';
import 'package:nathacksentry/containers/neuromorphic_colourful.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

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
                NeuromorphicBoxDark(
                    boomtitle: "About Fearless",
                    subtext:
                        "Fearless is an exposure therapy app for those who wish to overcome their fears of spiders and rats.This allows you to do therapy on your own terms and at your own pace in the privacy of your home. This is not meant to replace visits with a licensed professional, although this app can aid in therapy done independently. You can choose the intensity of exposure. The photos you'll see are ranked according to insensity in order to ensure your comfort")
              ],
            ),
          )
        ],
      ),
    );
  }
}
