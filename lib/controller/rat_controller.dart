import 'package:get/get.dart';
import 'package:nathacksentry/globalvars.dart';
import 'package:nathacksentry/model/rats_model.dart';

class RatsControl extends GetxController {
  static RatsControl instance = Get.find();
  RxList<RatsModel> rats = RxList<RatsModel>([]);
  String collection = "rats";

  @override
  onReady() {
    super.onReady();
    rats.bindStream(getAllRats());
  }

  Stream<List<RatsModel>> getAllRats() => firebaseFirestore
      .collection(collection)
      .orderBy('rank')
      .snapshots()
      .map((query) =>
          query.docs.map((item) => RatsModel.fromMap(item.data())).toList());
}
