import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uuid/uuid.dart';

class AddPelangganController extends GetxController {
  TextEditingController txtPelanggan = TextEditingController();
  TextEditingController txtAlamat = TextEditingController();
  TextEditingController txtNoTelp = TextEditingController();

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

  Future<void> add_penggan() async {
    DocumentReference pelanggan = firestore.collection("pelanggan").doc();
    var uuid = Uuid().v1();
    await pelanggan.set({
      "identitas_id": uuid,
      "txtIdentitas": txtPelanggan.text,
      "txtAlamat": txtAlamat.text,
      "txtNoTelp": txtNoTelp.text,
      "created_at": DateTime.now().toIso8601String(),
    });
  }
}
