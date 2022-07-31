import 'package:flutter/material.dart';
import 'package:nathacksentry/bars/bottom_bar_items.dart';
import 'package:nathacksentry/colors/colours_list.dart';
import 'package:nathacksentry/main.dart';
import 'package:nathacksentry/pages/account_page.dart';
import 'package:nathacksentry/pages/exposure_page.dart';
import 'package:nathacksentry/pages/home_page.dart';
import 'package:rolling_bottom_bar/rolling_bottom_bar.dart';
import 'package:rolling_bottom_bar/rolling_bottom_bar_item.dart';

//sets the features of the app with color, bar etc

class AppSetup extends StatefulWidget {
  AppSetup({Key? key}) : super(key: key);

  @override
  State<AppSetup> createState() => _AppSetupState();
}

class _AppSetupState extends State<AppSetup> {
  int selectedpage = 1;
  final _pageOptions = [
    //list of pages to select on the bottom bar
    Home(),
    ExposurePage(),
    AccountPage(),
  ];
  final _controller = PageController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      bottomNavigationBar: RollingBottomBar(
        controller: _controller,
        flat: true,
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
