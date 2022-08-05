import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nathacksentry/colors/colours_list.dart';
import 'package:nathacksentry/controller/second_ratcontroller.dart';
import 'package:nathacksentry/globalvars.dart';

class DetailsPage extends StatelessWidget {
  // final String imgUrl;
  final RatsControl ratsControl = Get.find();
  final String name;
  final String index;
  final String imgUrl;
  DetailsPage(
      {Key? key, required this.name, required this.imgUrl, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        SizedBox(
                          width: size.width,
                          child: Image(
                              image: NetworkImage(imgUrl), fit: BoxFit.cover),
                        ),
                        SizedBox(height: 20),
                        Container(
                          color: orangetext,
                          child: Text(index),
                        )
                      ],
                    ),
                  ),

                  //put things here?
                ],
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
      ),
    );
  }
}
