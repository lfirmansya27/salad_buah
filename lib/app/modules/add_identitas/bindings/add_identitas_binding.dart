import 'package:get/get.dart';

import '../controllers/add_identitas_controller.dart';

class AddIdentitasBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddIdentitasController>(
      () => AddIdentitasController(),
    );
  }
}
