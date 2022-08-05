class SpidersModel {
  static const PIC = "pic";

  static const RANK = "rank";

  late String pic;
  late int rank;

  SpidersModel({required this.pic, required this.rank});

  SpidersModel.fromMap(Map<String, dynamic> data) {
    pic = data[PIC];
    rank = data[RANK];
  }
}
