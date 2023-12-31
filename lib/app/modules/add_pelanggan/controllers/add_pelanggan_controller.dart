import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';
import 'package:final_project/app/widgets/costum_toast.dart';

class AddPelangganController extends GetxController {
  TextEditingController txtPelanggan = TextEditingController();
  TextEditingController txtAlamat = TextEditingController();
  TextEditingController txtNoTelp = TextEditingController();
  RxBool isLoading = false.obs;
  RxBool isLoadingCreatePelanggan = false.obs;
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
    txtPelanggan.dispose();
    txtAlamat.dispose();
    txtNoTelp.dispose();
  }

  Future<void> menuToast() async {
    if (txtPelanggan.text.isNotEmpty &&
        txtAlamat.text.isNotEmpty &&
        txtNoTelp.text.isNotEmpty) {
      isLoading.value = true;

      if (isLoadingCreatePelanggan.isFalse) {
        await add_pelanggan();
        isLoading.value = false;
      }
    } else {
      isLoading.value = false;
      CustomToast.errorToast('Error', 'you need to fill all form');
    }
  }

  void increment() => count.value++;
  add_pelanggan() async {
    isLoadingCreatePelanggan.value = true;
    String adminEmail = auth.currentUser!.email!;
    try {
      String uid = auth.currentUser!.uid;
      CollectionReference<Map<String, dynamic>> pelanggan =
          await firestore.collection("users").doc(uid).collection("pelanggan");
      var uuidPelanggan = Uuid().v1();
      await pelanggan.doc(uuidPelanggan).set({
        "pelanggan_id": uuidPelanggan,
        "txtPelanggan": txtPelanggan.text,
        "txtAlamat": txtAlamat.text,
        "txtNoTelp": txtNoTelp.text,
        "created_at": DateFormat.yMMMMEEEEd().format(DateTime.now())
      });
      Get.back();
      CustomToast.successToast('Success', 'Berhasil Menambahkan Identitas');
      isLoadingCreatePelanggan.value = false;
    } on FirebaseAuthException catch (e) {
      isLoadingCreatePelanggan.value = false;
      CustomToast.errorToast('Error', 'error : ${e.toString()}');
    } catch (e) {
      isLoadingCreatePelanggan.value = false;
      CustomToast.errorToast('Error', 'error : ${e.toString()}');
    }
  }
}
