import 'package:get/get.dart';

import '../controllers/edit_menu_salad_controller.dart';

class EditMenuSaladBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EditMenuSaladController>(
      () => EditMenuSaladController(),
    );
  }
}
