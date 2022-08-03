import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:nathacksentry/controller/ratcontroller.dart';

class RatsCatalog extends StatefulWidget {
  final productConroller = Get.put(RatController());
  RatsCatalog({Key? key}) : super(key: key);

  @override
  State<RatsCatalog> createState() => _RatsCatalogState();
}

class _RatsCatalogState extends State<RatsCatalog> {
  final Stream<QuerySnapshot> rats =
      FirebaseFirestore.instance.collection('rats').snapshots();
  @override
  Widget build(BuildContext context) {
    return Obx(() => Flexible(child: ListView.builder()));
  }
}
