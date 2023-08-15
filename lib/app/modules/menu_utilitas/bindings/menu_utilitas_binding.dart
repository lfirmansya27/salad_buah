import 'package:get/get.dart';

import '../controllers/menu_utilitas_controller.dart';

class MenuUtilitasBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MenuUtilitasController>(
      () => MenuUtilitasController(),
    );
  }
}
