import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nathacksentry/colors/colours_list.dart';
import 'package:rolling_bottom_bar/rolling_bottom_bar_item.dart';

List<RollingBottomBarItem> get bottomBarItems {
  return [
    RollingBottomBarItem(MdiIcons.spiderThread,
        label: 'About', activeColor: textturq2),
    RollingBottomBarItem(Icons.star, label: 'Exposure', activeColor: textturq2),
    RollingBottomBarItem(Icons.person,
        label: 'account', activeColor: textturq2),
  ];
}
