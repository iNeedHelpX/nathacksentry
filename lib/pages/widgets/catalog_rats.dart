import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nathacksentry/controller/ratcontroller.dart';

class RatsCatalog extends StatefulWidget {
  RatsCatalog({Key? key}) : super(key: key);

  @override
  State<RatsCatalog> createState() => _RatsCatalogState();
}

class _RatsCatalogState extends State<RatsCatalog> {
  final ratsController = Get.put(RatController());
  final Stream<QuerySnapshot> rats =
      FirebaseFirestore.instance.collection('rats').snapshots();
  @override
  Widget build(BuildContext context) {
    //this does the list of cards
    return Obx(
      () => Flexible(
        child: ListView.builder(
          itemCount: ratsController.products.length,
          itemBuilder: (BuildContext context, int index) {
            //
          },
        ),
      ),
    );
  }
}
