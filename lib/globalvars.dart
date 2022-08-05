import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nathacksentry/controller/second_ratcontroller.dart';
import 'package:nathacksentry/controller/second_spiders.dart';

var ratController = Get.put(RatsControl());
FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
var spiderController = Get.put(SpidersController());
RatsControl ratsController = RatsControl.instance;
