import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nathacksentry/colors/colours_list.dart';
import 'package:nathacksentry/globalvars.dart';
import 'package:nathacksentry/model/spiders_model.dart';

class SpidersWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => GridView.count(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        crossAxisCount: 2,
        childAspectRatio: 1,
        //around the boxes
        padding: const EdgeInsets.all(10),
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 10,
        children: spiderController.spiders.map((SpidersModel spider) {
          return SingleSpider(spider: spider);
        }).toList(),
      ),
    );
  }
}

class SingleSpider extends StatelessWidget {
  final SpidersModel? spider;

  const SingleSpider({Key? key, required this.spider}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: gold,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(.5),
                offset: Offset(3, 2),
                blurRadius: 7)
          ]),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("${spider!.rank}"),
            // child: ClipRRect(
            //     borderRadius: BorderRadius.only(
            //       topLeft: Radius.circular(15),
            //       topRight: Radius.circular(15),
            //     ),
            //     child: Image.network(
            //       rat!.pic,
            //       width: double.infinity,
            //     )),
          ),

          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     SizedBox(
          //       width: 30,
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
