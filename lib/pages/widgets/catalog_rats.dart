import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nathacksentry/colors/colours_list.dart';
import 'package:nathacksentry/colors/yellowpink_grad.dart';
import 'package:nathacksentry/controller/ratcontroller.dart';

class CatalogRats extends StatelessWidget {
  final ratController = Get.put(RatController());

  CatalogRats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Flexible(
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: ratController.products.length,
            itemBuilder: (BuildContext context, int index) {
              return RatsCard(index: index);
            }),
      ),
    );
  }
}

class RatsCard extends StatelessWidget {
  final RatController ratController = Get.find();
  final int index;
  RatsCard({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(1, 25, 1, 0),
      child: Container(
        padding: EdgeInsets.only(left: 10, right: 0),
        decoration: BoxDecoration(
            gradient: yellowPinkGrad(),
            borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(children: [
            CircleAvatar(
              radius: 70,
              backgroundImage: NetworkImage(ratController.products[index].pic),
            ),
            SizedBox(
              width: 22,
            ),
            Text(
              "${ratController.products[index].rank}",
              style: GoogleFonts.schoolbell(fontSize: 28, color: bg),
            ),
            SizedBox(
              width: 10,
            ),
          ]),
        ),
      ),
    );
  }
}
