import 'package:flutter/material.dart';
import 'package:rolling_bottom_bar/rolling_bottom_bar_item.dart';

List<RollingBottomBarItem> get bottomBarItems {
  return [
    RollingBottomBarItem(Icons.home,
        label: 'Home', activeColor: Colors.redAccent),
    RollingBottomBarItem(Icons.star,
        label: 'Exposure', activeColor: Colors.blueAccent),
    RollingBottomBarItem(Icons.person,
        label: 'account', activeColor: Colors.yellowAccent),
  ];
}
