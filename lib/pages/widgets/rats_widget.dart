import 'package:flutter/material.dart';
import 'package:flutter_gradients_reborn/flutter_gradients_reborn.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nathacksentry/colors/colours_list.dart';
import 'package:nathacksentry/colors/yellowpink_grad.dart';
import 'package:nathacksentry/controller/rat_controller.dart';
import 'package:nathacksentry/globalvars.dart';
import 'package:nathacksentry/model/rats_model.dart';
import 'package:nathacksentry/pages/rat_details.dart';
import 'package:nathacksentry/pages/widgets/singleproduct.dart';

//Grid of rats
class RatsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => GridView.count(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        physics: NeverScrollableScrollPhysics(),
        crossAxisCount: 2,
        childAspectRatio: .65,
        //around the boxes
        padding: const EdgeInsets.all(10),
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 10,
        children: ratController.rats.map((RatsModel? rat) {
          return SingleRat(
            rat: rat,
          );
        }).toList(),
      ),
    );
  }
}

//catlog rats widget
class CatalogRats extends StatelessWidget {
  // final ratControl = Get.put(RatsControl());

  CatalogRats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Flexible(
        child: GridView.count(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          physics: NeverScrollableScrollPhysics(),
          crossAxisCount: 2,
          childAspectRatio: 1,
          //around the boxes

          mainAxisSpacing: 15.0,
          crossAxisSpacing: 6,
          children: ratController.rats.map((RatsModel? rat) {
            return RatsCard(
              rat: rat,
            );
          }).toList(),
        ),
      ),
    );
  }
}

class RatsCard extends StatelessWidget {
  final RatsControl ratsControl = Get.find();

  final RatsModel? rat;
  RatsCard({Key? key, required this.rat}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => RatsDetail(
              imgUrl: rat!.pic,
              index: rat!.rank,
            ));
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipOval(
            child: Container(
              height: 180,
              width: 180,
              decoration: BoxDecoration(
                  gradient:
                      FlutterGradients.deepBlue2(tileMode: TileMode.clamp)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    "click to see rat ${rat!.rank}",
                    style: GoogleFonts.caveat(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: gold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
