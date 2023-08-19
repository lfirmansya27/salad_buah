import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:final_project/app/widgets/costum_alert_dialog.dart';
import 'package:final_project/app/widgets/costum_toast.dart';

class DetailPelangganController extends GetxController {
  final Map<String, dynamic> argsData = Get.arguments;
  RxBool isLoading = false.obs;
  RxBool isLoadingCreateIdentitas = false.obs;
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  FirebaseAuth auth = FirebaseAuth.instance;
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

  Future<void> deletePelanggan() async {
    CustomAlertDialog.showPresenceAlert(
      title: "Hapus data todo",
      message: "Apakah anda ingin menghapus data pelanggan ini ?",
      onCancel: () => Get.back(),
      onConfirm: () async {
        Get.back();
        Get.back();

        try {
          String uid = auth.currentUser!.uid;
          await firestore
              .collection('users')
              .doc(uid)
              .collection('pelanggan')
              .doc(argsData['pelanggan_id'])
              .delete();
          CustomToast.successToast(
              'Success', 'Data Pelanggan Berhasil Dihapus');
        } catch (e) {
          CustomToast.errorToast(
              "Error", "Error dikarenakan : ${e.toString()}");
        }
      },
    );
  }
}
