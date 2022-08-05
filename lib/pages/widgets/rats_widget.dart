import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nathacksentry/colors/yellowpink_grad.dart';
import 'package:nathacksentry/controller/second_ratcontroller.dart';
import 'package:nathacksentry/globalvars.dart';
import 'package:nathacksentry/model/rats_model.dart';
import 'package:nathacksentry/pages/widgets/singleproduct.dart';

//Grid of rats
class RatsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => GridView.count(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        crossAxisCount: 2,
        childAspectRatio: 1,
        //around the boxes
        padding: const EdgeInsets.all(10),
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 10,
        children: ratController.rats.map((RatsModel rat) {
          return SingleRat(rat: rat);
        }).toList(),
      ),
    );
  }
}

//catlog rats widget
class CatalogRats extends StatelessWidget {
  final ratControl = Get.put(RatsControl());

  CatalogRats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Flexible(
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: ratController.rats.length,
            itemBuilder: (BuildContext context, int index) {
              return RatsCard(index: index);
            }),
      ),
    );
  }
}

class RatsCard extends StatelessWidget {
  final RatsControl ratsControl = Get.find();
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
              backgroundImage: NetworkImage(ratsControl.rats[index].pic),
            ),
            SizedBox(
              width: 22,
            ),
            Text(
              "${ratsControl.rats[index].rank}",
              style: GoogleFonts.schoolbell(fontSize: 28),
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
