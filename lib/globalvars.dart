import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:nathacksentry/controller/second_ratcontroller.dart';
import 'package:nathacksentry/controller/second_spiders.dart';
import 'package:nathacksentry/model/spiders_model.dart';

var ratController = Get.put(RatsControl());
FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
var spiderController = Get.put(SpidersController());
SpidersController spidersController = SpidersController.instance;
RatsControl ratsController = RatsControl.instance;
SpidersModel? spider;
