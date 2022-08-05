import 'package:get/get.dart';
import 'package:nathacksentry/globalvars.dart';
import 'package:nathacksentry/model/spiders_model.dart';

class SpidersController extends GetxController {
  static SpidersController instance = Get.find();
  RxList<SpidersModel> spiders = RxList<SpidersModel>([]);
  String collection = "spiders";

  @override
  onReady() {
    super.onReady();
    spiders.bindStream(getAllProducts());
  }

  Stream<List<SpidersModel>> getAllProducts() =>
      firebaseFirestore.collection(collection).snapshots().map((query) =>
          query.docs.map((item) => SpidersModel.fromMap(item.data())).toList());
}
