import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class ViewMenuSaladController extends GetxController {
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

  Future<QuerySnapshot<Map<String, dynamic>>> getAllResult() async {
    QuerySnapshot<Map<String, dynamic>> query = await firestore
        .collection("menuProduk")
        .doc("menu_id")
        .collection("todos")
        .orderBy(
          "created_at",
          descending: true,
        )
        .get();
    return query;
  }
}
