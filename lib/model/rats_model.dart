class RatsModel {
  static const PIC = "pic";

  static const RANK = "rank";

  late String pic;
  late int rank;

  RatsModel({required this.pic, required this.rank});

  RatsModel.fromMap(Map<String, dynamic> data) {
    pic = data[PIC];
    rank = data[RANK];
  }
}
