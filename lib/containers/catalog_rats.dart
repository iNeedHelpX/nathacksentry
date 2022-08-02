import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class RatsCatalog extends StatefulWidget {
  RatsCatalog({Key? key}) : super(key: key);

  @override
  State<RatsCatalog> createState() => _RatsCatalogState();
}

class _RatsCatalogState extends State<RatsCatalog> {
  final Stream<QuerySnapshot> rats =
      FirebaseFirestore.instance.collection('rats').snapshots();
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
