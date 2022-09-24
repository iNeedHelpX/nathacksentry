import 'package:flutter/material.dart';
import 'package:nathacksentry/containers/neuromorphic_warning.dart';
import 'package:nathacksentry/pages/widgets/spider_widget.dart';

class SpiderPage extends StatefulWidget {
  SpiderPage({Key? key}) : super(key: key);

  @override
  State<SpiderPage> createState() => _SpiderPageState();
}

class _SpiderPageState extends State<SpiderPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                NeuromorphicWarning(
                  boomtitle: "This is the Spider section",
                  subtext:
                      "Photos are rank ordered according to insensity and likelyhood of inducing fearful responses. Work at you own pace and start with low numbered photos first. High numbered photos are the most frightening",
                ),
                SizedBox(height: 20),
                Text("hello world"),
                // SpiderWidget(),
                CatalogSpider()
              ],
            ),
          )
        ],
      ),
    );
  }
}
