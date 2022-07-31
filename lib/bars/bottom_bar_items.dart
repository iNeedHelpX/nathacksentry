import 'package:flutter/material.dart';
import 'package:rolling_bottom_bar/rolling_bottom_bar_item.dart';

List<RollingBottomBarItem> get bottomBarItems {
  return [
    RollingBottomBarItem(Icons.home,
        label: 'Page 1', activeColor: Colors.redAccent),
    RollingBottomBarItem(Icons.star,
        label: 'Page 2', activeColor: Colors.blueAccent),
    RollingBottomBarItem(Icons.person,
        label: 'Page 3', activeColor: Colors.yellowAccent),
    RollingBottomBarItem(Icons.access_alarm,
        label: 'Page 4', activeColor: Colors.orangeAccent),
  ];
}
