import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uuid/uuid.dart';

class AddMenuSaladController extends GetxController {
  //TODO: Implement AddMenuSaladController
  TextEditingController txtNamaMenu = TextEditingController();
  TextEditingController txtDeskripsi = TextEditingController();
  TextEditingController txtHarga = TextEditingController();
  TextEditingController txtStok = TextEditingController();

  FirebaseFirestore firestore = FirebaseFirestore.instance;
  FirebaseAuth auth = FirebaseAuth.instance;
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

  Future<void> add_menu() async {
    DocumentReference menuProduk = firestore.collection("menuProduk").doc();
    var uuid = Uuid().v1();
    await menuProduk.set({
      "menu_id": uuid,
      "txtNamaMenu": txtNamaMenu.text,
      "txtAlamat": txtDeskripsi.text,
      "txtHarga": int.parse(txtHarga.text),
      "txtStok": int.parse(txtStok.text),
      "created_at": DateTime.now().toIso8601String(),
    });
  }
}
