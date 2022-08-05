import 'package:flutter/material.dart';
import 'package:nathacksentry/colors/colours_list.dart';
import 'package:nathacksentry/model/rats_model.dart';

class SingleRat extends StatelessWidget {
  final RatsModel? rat;

  const SingleRat({Key? key, required this.rat}) : super(key: key);
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
            child: Text("${rat!.rank}"),
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
