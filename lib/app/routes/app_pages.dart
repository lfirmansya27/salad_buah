import 'package:get/get.dart';

import '../modules/add_identitas/bindings/add_identitas_binding.dart';
import '../modules/add_identitas/views/add_identitas_view.dart';
import '../modules/add_menu_salad/bindings/add_menu_salad_binding.dart';
import '../modules/add_menu_salad/views/add_menu_salad_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/menu_laporan/bindings/menu_laporan_binding.dart';
import '../modules/menu_laporan/views/menu_laporan_view.dart';
import '../modules/menu_master/bindings/menu_master_binding.dart';
import '../modules/menu_master/views/menu_master_view.dart';
import '../modules/menu_transaksi/bindings/menu_transaksi_binding.dart';
import '../modules/menu_transaksi/views/menu_transaksi_view.dart';
import '../modules/menu_utilitas/bindings/menu_utilitas_binding.dart';
import '../modules/menu_utilitas/views/menu_utilitas_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.MENU_MASTER,
      page: () => const MenuMasterView(),
      binding: MenuMasterBinding(),
    ),
    GetPage(
      name: _Paths.MENU_TRANSAKSI,
      page: () => const MenuTransaksiView(),
      binding: MenuTransaksiBinding(),
    ),
    GetPage(
      name: _Paths.MENU_LAPORAN,
      page: () => const MenuLaporanView(),
      binding: MenuLaporanBinding(),
    ),
    GetPage(
      name: _Paths.MENU_UTILITAS,
      page: () => const MenuUtilitasView(),
      binding: MenuUtilitasBinding(),
    ),
    GetPage(
      name: _Paths.ADD_IDENTITAS,
      page: () => const AddIdentitasView(),
      binding: AddIdentitasBinding(),
    ),
    GetPage(
      name: _Paths.ADD_MENU_SALAD,
      page: () => const AddMenuSaladView(),
      binding: AddMenuSaladBinding(),
    ),
  ];
}