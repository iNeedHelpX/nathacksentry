import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nathacksentry/colors/colours_list.dart';
import 'package:nathacksentry/model/rats_model.dart';
import 'package:nathacksentry/pages/rat_details.dart';

class SingleRat extends StatelessWidget {
  final RatsModel? rat;

  // final RatsControl ratsControl = Get.find();

  SingleRat({
    Key? key,
    required this.rat,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => RatsDetail(
              imgUrl: rat!.pic,
              index: rat!.rank,
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
            child: Image.network(rat!.pic),
            fit: BoxFit.cover,
          ),
        ),

        // Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   children: [
        //     SizedBox(
        //       width: 30,
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
