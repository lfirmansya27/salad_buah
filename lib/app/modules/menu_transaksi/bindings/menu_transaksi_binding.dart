import 'package:get/get.dart';

import '../controllers/menu_transaksi_controller.dart';

class MenuTransaksiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MenuTransaksiController>(
      () => MenuTransaksiController(),
    );
  }
}
