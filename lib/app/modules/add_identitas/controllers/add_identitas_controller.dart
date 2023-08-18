import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:uuid/uuid.dart';
import 'package:final_project/app/widgets/costum_toast.dart';

class AddIdentitasController extends GetxController {
  TextEditingController txtIdentitas = TextEditingController();
  TextEditingController txtAlamat = TextEditingController();
  TextEditingController txtNoTelp = TextEditingController();
  TextEditingController txtPimpinan = TextEditingController();
  RxBool isLoading = false.obs;
  RxBool isLoadingCreateIdentitas = false.obs;
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
    txtIdentitas.dispose();
    txtAlamat.dispose();
    txtNoTelp.dispose();
    txtPimpinan.dispose();
  }

  void increment() => count.value++;

  Future<void> identitasToast() async {
    if (txtIdentitas.text.isNotEmpty &&
        txtAlamat.text.isNotEmpty &&
        txtNoTelp.text.isNotEmpty &&
        txtPimpinan.text.isNotEmpty) {
      isLoading.value = true;

      if (isLoadingCreateIdentitas.isFalse) {
        await add_identitas();
        isLoading.value = false;
      }
    } else {
      isLoading.value = false;
      CustomToast.errorToast('Error', 'you need to fill all form');
    }
  }

  add_identitas() async {
    isLoadingCreateIdentitas.value = true;
    String adminEmail = auth.currentUser!.email!;
    try {
      String uid = auth.currentUser!.uid;
      CollectionReference<Map<String, dynamic>> childrenCollection =
          await firestore.collection("users").doc(uid).collection("identitas");
      var uuidIdentitas = Uuid().v1();
      await childrenCollection.doc(uuidIdentitas).set({
        "identitas_id": uuidIdentitas,
        "txtIdentitas": txtIdentitas.text,
        "txtAlamat": txtAlamat.text,
        "txtNoTelp": txtNoTelp.text,
        "txtPimpinan": txtPimpinan.text,
        "created_at": DateTime.now().toIso8601String(),
      });
      Get.back();
      Get.back();
      CustomToast.successToast('Success', 'Berhasil Menambahkan Identitas');
      isLoadingCreateIdentitas.value = false;
    } on FirebaseAuthException catch (e) {
      isLoadingCreateIdentitas.value = false;
      CustomToast.errorToast('Error', 'error : ${e.toString()}');
    } catch (e) {
      isLoadingCreateIdentitas.value = false;
      CustomToast.errorToast('Error', 'error : ${e.toString()}');
    }
  }
}
