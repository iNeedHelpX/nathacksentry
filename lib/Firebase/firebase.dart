import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:nathacksentry/model/ratmodel.dart';

class FirestoreDB {
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  Stream<List<RatModel>> getAllProducts() {
    return _firebaseFirestore
        .collection('products')
        .snapshots()
        .map((snapshot) {
      return snapshot.docs.map((doc) => RatModel.fromSnapshot(doc)).toList();
    });
  }
}
