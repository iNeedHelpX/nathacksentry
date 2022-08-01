import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:rolling_bottom_bar/rolling_bottom_bar_item.dart';

List<RollingBottomBarItem> get bottomBarItems {
  return [
    RollingBottomBarItem(MdiIcons.naturePeople,
        label: 'About', activeColor: Colors.black),
    RollingBottomBarItem(MdiIcons.spiderThread,
        label: 'Spiders', activeColor: Colors.black),
    RollingBottomBarItem(MdiIcons.rodent,
        label: 'Rats', activeColor: Colors.black),
  ];
}
