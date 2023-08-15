import 'package:get/get.dart';

import '../controllers/add_menu_salad_controller.dart';

class AddMenuSaladBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddMenuSaladController>(
      () => AddMenuSaladController(),
    );
  }
}
