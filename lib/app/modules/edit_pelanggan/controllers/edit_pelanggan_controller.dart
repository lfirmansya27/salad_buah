import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:final_project/app/widgets/costum_toast.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditPelangganController extends GetxController {
  final Map<String, dynamic> argsData = Get.arguments;

  RxBool isLoading = false.obs;
  RxBool isLoadingEditPelanggan = false.obs;
  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  TextEditingController txtPelanggan = TextEditingController();
  TextEditingController txtAlamat = TextEditingController();
  TextEditingController txtNoTelp = TextEditingController();
  TextEditingController pelanggan_id = TextEditingController();
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    pelanggan_id.text = argsData["pelanggan_id"];
    txtPelanggan.text = argsData["txtPelanggan"];
    txtAlamat.text = argsData["txtAlamat"];
    txtNoTelp.text = argsData["txtNoTelp"];
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

  void increment() => count.value++;
  Future<void> menuToast() async {
    if (txtPelanggan.text.isNotEmpty &&
        txtAlamat.text.isNotEmpty &&
        txtNoTelp.text.isNotEmpty) {
      isLoading.value = true;

      if (isLoadingEditPelanggan.isFalse) {
        await edit_pelanggan();
        isLoading.value = false;
      }
    } else {
      isLoading.value = false;
      CustomToast.errorToast('Error', 'you need to fill all form');
    }
  }

  edit_pelanggan() async {
    isLoadingEditPelanggan.value = true;
    String adminEmail = auth.currentUser!.email!;
    try {
      String uid = auth.currentUser!.uid;
      CollectionReference<Map<String, dynamic>> pelanggan =
          await firestore.collection("users").doc(uid).collection("pelanggan");

      await pelanggan.doc(argsData["pelanggan_id"]).update({
        "txtPelanggan": txtPelanggan.text,
        "txtAlamat": txtAlamat.text,
        "txtNoTelp": txtNoTelp.text,
        "created_at": DateTime.now().toIso8601String(),
      });
      Get.back();
      Get.back();
      CustomToast.successToast(
          'Success', 'Berhasil Memperbarui Data Pelanggan');
    } on FirebaseAuthException catch (e) {
      isLoadingEditPelanggan.value = false;
      CustomToast.errorToast('Error', 'error : ${e.toString()}');
    } catch (e) {
      isLoadingEditPelanggan.value = false;
      CustomToast.errorToast('Error', 'error : ${e.toString()}');
    }
  }
}
