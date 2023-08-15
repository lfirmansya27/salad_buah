import 'package:get/get.dart';

import '../controllers/menu_laporan_controller.dart';

class MenuLaporanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MenuLaporanController>(
      () => MenuLaporanController(),
    );
  }
}
