import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nathacksentry/colors/colours_list.dart';
import 'package:nathacksentry/controller/second_ratcontroller.dart';
import 'package:nathacksentry/globalvars.dart';

class RatsDetail extends StatelessWidget {
  RatsDetail({
    Key? key,
    required this.imgUrl,
    required this.rank,
  }) : super(key: key);

  final String imgUrl;
  final int rank;
  // final String imgUrl;
  final RatsControl ratsControl = Get.find();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Stack(
                  children: [
                    SizedBox(
                      height: 500,
                      child:
                          Image(image: NetworkImage(imgUrl), fit: BoxFit.cover),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
