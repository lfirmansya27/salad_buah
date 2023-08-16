import 'package:get/get.dart';

import '../controllers/view_pelanggan_controller.dart';

class ViewPelangganBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ViewPelangganController>(
      () => ViewPelangganController(),
    );
  }
}
