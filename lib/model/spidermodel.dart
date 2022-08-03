import 'package:cloud_firestore/cloud_firestore.dart';

class SpiderModel {
  static const PIC = "pic";
  static const RANK = "rank";

  late int? rank;
  late String? pic;

  SpiderModel({
    this.rank,
    this.pic,
  });

  SpiderModel.fromSnapshot(DocumentSnapshot snapshot) {
    pic = snapshot[PIC];

    rank = snapshot[RANK];
  }
}
