import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:uuid/uuid.dart';

class AddIdentitasController extends GetxController {
  //TODO: Implement AddIdentitasController
  TextEditingController txtIdentitas = TextEditingController();
  TextEditingController txtAlamat = TextEditingController();
  TextEditingController txtNoTelp = TextEditingController();
  TextEditingController txtPimpinan = TextEditingController();

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

  Future<void> add_identitas() async {
    var uuid = Uuid().v1();
    DocumentReference identitas = firestore.collection("identitas").doc(uuid);
    await identitas.set({
      "identitas_id": uuid,
      "txtIdentitas": txtIdentitas.text,
      "txtAlamat": txtAlamat.text,
      "txtNoTelp": txtNoTelp.text,
      "txtPimpinan": txtPimpinan.text,
      "created_at": DateTime.now().toIso8601String(),
    });
  }
}
