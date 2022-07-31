import 'package:flutter/material.dart';
import 'package:nathacksentry/bars/appbar_top.dart';
import 'package:nathacksentry/bars/bottom_bar_items.dart';
import 'package:nathacksentry/colors/colours_list.dart';
import 'package:nathacksentry/pages/account_page.dart';
import 'package:nathacksentry/pages/exposure_page.dart';
import 'package:nathacksentry/pages/home_page.dart';
import 'package:rolling_bottom_bar/rolling_bottom_bar.dart';

//end of sample
//sets the features of the app with color, bar etc
class AppSetup extends StatefulWidget {
  AppSetup({Key? key}) : super(key: key);

  @override
  _AppSetupState createState() => _AppSetupState();
}

class _AppSetupState extends State<AppSetup> {
  final _controller = PageController();
  int selectedpage = 1;
  PageView pageViews() {
    return PageView(
      controller: _controller,
      children: <Widget>[
        Home(),
        ExposurePage(),
        AccountPage(),
      ],
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(
        title: Text("Fearless"),
      ),
      backgroundColor: bg,
      body: pageViews(),
      extendBody: true,
      bottomNavigationBar: RollingBottomBar(
        color: textturq2,
        itemColor: Colors.black,
        controller: _controller,
        useActiveColorByDefault: false,
        items: bottomBarItems,
        enableIconRotation: true,
        onTap: (index) {
          _controller.animateToPage(
            index,
            duration: const Duration(milliseconds: 400),
            curve: Curves.easeOut,
          );
        },
      ),
    );
  }
}

//added!

