import 'package:get/get.dart';
import 'package:nathacksentry/Firebase/firebase.dart';
import 'package:nathacksentry/model/ratmodel.dart';

class RatController extends GetxController {
  final products = <RatModel>[].obs;
  @override
  void onInit() {
    products.bindStream(FirestoreDBRats().getAllProducts());
    super.onInit();
  }
}
