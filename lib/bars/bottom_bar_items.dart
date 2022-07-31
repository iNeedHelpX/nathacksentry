import 'package:flutter/material.dart';
import 'package:nathacksentry/colors/colours_list.dart';
import 'package:rolling_bottom_bar/rolling_bottom_bar_item.dart';

List<RollingBottomBarItem> get bottomBarItems {
  return [
    RollingBottomBarItem(Icons.home, label: 'Home', activeColor: textturq2),
    RollingBottomBarItem(Icons.star, label: 'Exposure', activeColor: textturq2),
    RollingBottomBarItem(Icons.person,
        label: 'account', activeColor: textturq2),
  ];
}
