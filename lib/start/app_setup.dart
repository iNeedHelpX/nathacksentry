import 'package:flutter/material.dart';
import 'package:flutter_gradients_reborn/flutter_gradients_reborn.dart';
import 'package:nathacksentry/bars/bottom_bar_items.dart';
import 'package:nathacksentry/bars/roundappbar.dart';
import 'package:nathacksentry/colors/colours_list.dart';
import 'package:nathacksentry/pages/rat_page.dart';
import 'package:nathacksentry/pages/spider_page.dart';
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
        SpiderPage(),
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
    return Container(
      decoration: BoxDecoration(
        gradient: FlutterGradients.confidentCloud(
          type: GradientType.linear,
          tileMode: TileMode.values[0],
        ),
      ),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: customBar(),
        body: pageViews(),
        extendBody: true,
        bottomNavigationBar: RollingBottomBar(
          color: barback1,
          itemColor: textturq2,
          controller: _controller,
          useActiveColorByDefault: false,
          items: bottomBarItems,
          enableIconRotation: true,
          onTap: (index) {
            _controller.animateToPage(
              index,
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeOut,
            );
          },
        ),
      ),
    );
  }
}

//added!
