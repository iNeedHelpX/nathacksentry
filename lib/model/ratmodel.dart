import 'package:cloud_firestore/cloud_firestore.dart';

class RatModel {
  static const PIC = "pic";
  static const RANK = "rank";

  late int? rank;
  late String? pic;

  RatModel({
    this.rank,
    this.pic,
  });

  RatModel.fromSnapshot(DocumentSnapshot snapshot) {
    pic = snapshot[PIC];

    rank = snapshot[RANK];
  }
}
