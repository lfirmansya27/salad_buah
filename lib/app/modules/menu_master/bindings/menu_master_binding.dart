import 'package:get/get.dart';

import '../controllers/menu_master_controller.dart';

class MenuMasterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MenuMasterController>(
      () => MenuMasterController(),
    );
  }
}
