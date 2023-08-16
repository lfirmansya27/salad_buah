import 'package:get/get.dart';

import '../controllers/detail_menu_salad_controller.dart';

class DetailMenuSaladBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailMenuSaladController>(
      () => DetailMenuSaladController(),
    );
  }
}
