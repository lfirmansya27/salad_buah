import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditMenuSaladController extends GetxController {
  final Map<String, dynamic> argsData = Get.arguments;

  TextEditingController txtNamaMenu = TextEditingController();
  TextEditingController txtAlamat = TextEditingController();
  TextEditingController txtHarga = TextEditingController();
  TextEditingController txtStok = TextEditingController();

  FirebaseFirestore firestore = FirebaseFirestore.instance;
  FirebaseAuth auth = FirebaseAuth.instance;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    txtNamaMenu.text = argsData["txtNamaMenu"];
    txtAlamat.text = argsData["txtAlamat"];
    txtHarga.text = argsData["txtHarga"];
    txtStok.text = argsData["txtStok"];
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

  editMenu() async {
    CollectionReference<Map<String, dynamic>> childrenCollection =
        await firestore.collection("menuProduk");

    await childrenCollection.doc(argsData["menu_id"]).update({
      "txtNamaMenu": txtNamaMenu.text,
      "txtAlamat": txtAlamat.text,
      "txtHarga": int.parse(txtHarga.text),
      "txtStok": int.parse(txtStok.text),
      "created_at": DateTime.now().toIso8601String(),
    });
  }
}
