import 'package:flutter/material.dart';
import 'package:flutter_gradients_reborn/flutter_gradients_reborn.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nathacksentry/colors/colours_list.dart';
import 'package:nathacksentry/controller/second_spiders.dart';
import 'package:nathacksentry/globalvars.dart';
import 'package:nathacksentry/model/spiders_model.dart';
import 'package:nathacksentry/pages/spider_details.dart';
import 'package:nathacksentry/pages/widgets/single_spider.dart';

class SpiderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => GridView.count(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        physics: NeverScrollableScrollPhysics(),
        crossAxisCount: 2,
        childAspectRatio: 1,
        //around the boxes
        padding: const EdgeInsets.all(10),
        mainAxisSpacing: 2.0,
        crossAxisSpacing: 5,
        children: spiderController.spiders.map((SpidersModel spider) {
          // return BookPage(book: book);
          return SingleSpider(spider: spider);
        }).toList(),
      ),
    );
  }
}

//catlog rats widget
class CatalogSpider extends StatelessWidget {
  // final ratControl = Get.put(RatsControl());

  CatalogSpider({Key? key}) : super(key: key);

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
          children: spiderController.spiders.map((SpidersModel? spider) {
            return SpiderCard(
              spider: spider,
            );
          }).toList(),
        ),
      ),
    );
  }
}

class SpiderCard extends StatelessWidget {
  final SpidersController ratsControl = Get.find();

  final SpidersModel? spider;
  SpiderCard({Key? key, required this.spider}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => SpiderDetails(
              imgUrl: spider!.pic,
              index: spider!.rank,
            ));
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipOval(
            child: Container(
              height: 190,
              width: 190,
              decoration: BoxDecoration(
                  gradient:
                      FlutterGradients.summerGames(tileMode: TileMode.clamp)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    "click to see Spider ${spider!.rank}",
                    style: GoogleFonts.gochiHand(
                      fontSize: 20,
                      fontWeight: FontWeight.w200,
                      color: fill2,
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
