import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:uuid/uuid.dart';

class AddMenuSaladController extends GetxController {
  //TODO: Implement AddMenuSaladController
  TextEditingController txtNamaMenu = TextEditingController();
  TextEditingController txtDeskripsi = TextEditingController();
  TextEditingController txtHarga = TextEditingController();
  TextEditingController txtStok = TextEditingController();

  FirebaseFirestore firestore = FirebaseFirestore.instance;
  FirebaseAuth auth = FirebaseAuth.instance;

  File? _photo;
  final ImagePicker _picker = ImagePicker();

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

  Future imgFromGallery() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      _photo = File(pickedFile.path);
      //uploadFile();
    } else {
      print('No image selected.');
    }
  }

  Future<void> add_menu() async {
    var uuid = Uuid().v1();

    DocumentReference menuProduk = firestore.collection("menuProduk").doc(uuid);
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
