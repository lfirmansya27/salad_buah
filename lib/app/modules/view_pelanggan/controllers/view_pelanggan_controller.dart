import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ViewPelangganController extends GetxController {
  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
  TextEditingController search = TextEditingController();
  DateTime end = DateTime.now();

  Stream<QuerySnapshot<Map<String, dynamic>>> getResult() async* {
    String uid = auth.currentUser!.uid;
    yield* firestore
        //QuerySnapshot<Map<String, dynamic>> query = await firestore
        .collection("users")
        .doc(uid)
        .collection("pelanggan")
        .where("created_at", isLessThan: end.toIso8601String())
        .orderBy("created_at", descending: true)
        .snapshots();
    //return query;
  }

  void updateSearch(String query) {
    search.text = query;
    update();
  }
}
