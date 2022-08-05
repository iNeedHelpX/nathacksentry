import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:nathacksentry/controller/second_ratcontroller.dart';

class RatsDetail extends StatelessWidget {
  // final String imgUrl;
  final RatsControl ratsControl = Get.find();
  final int rank;

  final String imgUrl;
  RatsDetail({
    Key? key,
    required this.imgUrl,
    required this.rank,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 500,
                        child: Image(
                            image: NetworkImage(imgUrl), fit: BoxFit.cover),
                      ),
                      SafeArea(
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.backspace,
                            color: Color.fromARGB(255, 247, 0, 97),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
