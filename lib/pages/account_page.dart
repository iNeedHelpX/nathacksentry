import 'package:flutter/material.dart';
import 'package:nathacksentry/containers/comingsoon.dart';

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
        Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ComingSoon(
                text: "This will be the account page",
                subtext: "Will be added later")
          ],
        )
      ]),
    );
  }
}
