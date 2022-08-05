import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nathacksentry/colors/colours_list.dart';
import 'package:nathacksentry/controller/second_spiders.dart';
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
        // childAspectRatio: .55,
        //around the boxes
        padding: const EdgeInsets.all(10),

        //horizontal space
        mainAxisSpacing: 10.0,
        //vertical space between boxes
        crossAxisSpacing: 12,
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
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: FittedBox(
          child: Image.network(spider!.pic),
          fit: BoxFit.fill,
        ),
      ),
      // child: Column(
      //   children: [
      //     ClipRRect(
      //         borderRadius: BorderRadius.only(
      //           topLeft: Radius.circular(15),
      //           topRight: Radius.circular(15),
      //           bottomLeft: Radius.circular(15),
      //         ),
      //         child: Image.network(
      //           spider!.pic,
      //           width: double.infinity,
      //         )),
      //     Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //       children: [
      //         SizedBox(
      //           width: 30,
      //         ),
      //       ],
      //     ),
      //     Text("heelo")
      //   ],
      // ),
    );
  }
}

class CatalogSpider extends StatelessWidget {
  CatalogSpider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: spiderController.spiders.length,
          itemBuilder: (BuildContext context, int index) {
            return NewButton(
              index: index,
            );
          }),
    );
  }
}

class NewButton extends StatelessWidget {
  final SpidersController spidersControl = Get.find();
  final int index;
  NewButton({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: bg, //background color of button
          //border width and color
          elevation: 3, //elevation of button
          shape: RoundedRectangleBorder(
              //to set border radius to button
              borderRadius: BorderRadius.circular(30)),
        ),
        onPressed: () {},
        child: Text(spiderController.spiders[index].rank.toString()));
  }
}
