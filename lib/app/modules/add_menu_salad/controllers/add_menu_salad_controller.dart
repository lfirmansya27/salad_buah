import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:uuid/uuid.dart';
import 'package:final_project/app/widgets/costum_toast.dart';

class AddMenuSaladController extends GetxController {
  TextEditingController txtNamaMenu = TextEditingController();
  TextEditingController txtDeskripsi = TextEditingController();
  TextEditingController txtHarga = TextEditingController();
  TextEditingController txtStok = TextEditingController();
  RxBool isLoading = false.obs;
  RxBool isLoadingCreateMenu = false.obs;
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  FirebaseAuth auth = FirebaseAuth.instance;

  // ignore: unused_field
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
    txtNamaMenu.dispose();
    txtDeskripsi.dispose();
    txtHarga.dispose();
    txtStok.dispose();
  }

  void increment() => count.value++;

  Future imgFromGallery() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      _photo = File(pickedFile.path);
    } else {
      print('No image selected.');
    }
  }

  Future<void> menuToast() async {
    if (txtNamaMenu.text.isNotEmpty &&
        txtDeskripsi.text.isNotEmpty &&
        txtHarga.text.isNotEmpty &&
        txtStok.text.isNotEmpty) {
      isLoading.value = true;

      if (isLoadingCreateMenu.isFalse) {
        await add_menu();
        isLoading.value = false;
      }
    } else {
      isLoading.value = false;
      CustomToast.errorToast('Error', 'you need to fill all form');
    }
  }

  add_menu() async {
    isLoadingCreateMenu.value = true;
    String adminEmail = auth.currentUser!.email!;
    try {
      String uid = auth.currentUser!.uid;
      CollectionReference<Map<String, dynamic>> childrenCollection =
          await firestore.collection("users").doc(uid).collection("menuProduk");
      var uuidMenu = Uuid().v1();
      await childrenCollection.doc(uuidMenu).set({
        "menu_id": uuidMenu,
        "txtNamaMenu": txtNamaMenu.text,
        "txtDeskripsi": txtDeskripsi.text,
        "txtHarga": int.parse(txtHarga.text),
        "txtStok": int.parse(txtStok.text),
        "created_at": DateTime.now().toIso8601String(),
      });
      Get.back();
      //Get.back();
      CustomToast.successToast('Success', 'Berhasil Menambahkan Identitas');
      isLoadingCreateMenu.value = false;
    } on FirebaseAuthException catch (e) {
      isLoadingCreateMenu.value = false;
      CustomToast.errorToast('Error', 'error : ${e.toString()}');
    } catch (e) {
      isLoadingCreateMenu.value = false;
      CustomToast.errorToast('Error', 'error : ${e.toString()}');
    }
  }
}
