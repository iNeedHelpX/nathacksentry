import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:nathacksentry/model/ratmodel.dart';

class FirestoreDBRats {
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  Stream<List<RatModel>> getAllProducts() {
    return _firebaseFirestore.collection('rats').snapshots().map((snapshot) {
      return snapshot.docs.map((doc) => RatModel.fromSnapshot(doc)).toList();
    });
  }
}
