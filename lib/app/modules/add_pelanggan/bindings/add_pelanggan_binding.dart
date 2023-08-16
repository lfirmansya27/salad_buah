import 'package:get/get.dart';

import '../controllers/add_pelanggan_controller.dart';

class AddPelangganBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddPelangganController>(
      () => AddPelangganController(),
    );
  }
}
