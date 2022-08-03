import 'package:flutter/material.dart';
import 'package:nathacksentry/containers/comingsoon.dart';
import 'package:nathacksentry/containers/neuromorphic_colourful.dart';
import 'package:nathacksentry/containers/neuromorphic_warning.dart';

class AccountPage extends StatefulWidget {
  AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(children: [
        SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              NeuromorphicWarning(
                  boomtitle: "This is the Rat section",
                  subtext:
                      "Photos are rank ordered according to insensity and likelyhood of inducing fearful responses. Work at you own pace and start with low numbered photos first. High numbered photos are the most frightening"),
              SizedBox(
                height: 20,
              ),
              //call the rats catalog
            ],
          ),
        )
      ]),
    );
  }
}
