import 'package:get/get.dart';

import '../controllers/view_menu_salad_controller.dart';

class ViewMenuSaladBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ViewMenuSaladController>(
      () => ViewMenuSaladController(),
    );
  }
}
