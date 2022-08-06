import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nathacksentry/colors/colours_list.dart';
import 'package:nathacksentry/model/spiders_model.dart';
import 'package:nathacksentry/pages/spider_details.dart';

class SingleSpider extends StatelessWidget {
  final SpidersModel? spider;

  const SingleSpider({Key? key, required this.spider}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => SpiderDetails(
              imgUrl: spider!.pic,
              index: spider!.rank,
            ));
      },
      child: Container(
        decoration: BoxDecoration(
            color: gold,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(.5),
                  offset: Offset(3, 2),
                  blurRadius: 7)
            ]),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: FittedBox(
            child: Image.network(spider!.pic),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
