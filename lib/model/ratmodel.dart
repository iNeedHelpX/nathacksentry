import 'package:cloud_firestore/cloud_firestore.dart';

class RatModel {
  final String pic;
  final double rank;

  const RatModel({
    required this.pic,
    required this.rank,
  });

  static RatModel fromSnapshot(DocumentSnapshot snapshot) {
    RatModel product = RatModel(
      pic: snapshot['pic'],
      rank: snapshot['rank'],
    );
    return product;
  }
}
