import 'package:get/get.dart';

import '../modules/add_identitas/bindings/add_identitas_binding.dart';
import '../modules/add_identitas/views/add_identitas_view.dart';
import '../modules/add_menu_salad/bindings/add_menu_salad_binding.dart';
import '../modules/add_menu_salad/views/add_menu_salad_view.dart';
import '../modules/add_pelanggan/bindings/add_pelanggan_binding.dart';
import '../modules/add_pelanggan/views/add_pelanggan_view.dart';
import '../modules/detail_menu_salad/bindings/detail_menu_salad_binding.dart';
import '../modules/detail_menu_salad/views/detail_menu_salad_view.dart';
import '../modules/detail_pelanggan/bindings/detail_pelanggan_binding.dart';
import '../modules/detail_pelanggan/views/detail_pelanggan_view.dart';
import '../modules/edit_menu_salad/bindings/edit_menu_salad_binding.dart';
import '../modules/edit_menu_salad/views/edit_menu_salad_view.dart';
import '../modules/edit_pelanggan/bindings/edit_pelanggan_binding.dart';
import '../modules/edit_pelanggan/views/edit_pelanggan_view.dart';
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
import '../modules/opening/bindings/opening_binding.dart';
import '../modules/opening/views/opening_view.dart';
import '../modules/signin/bindings/signin_binding.dart';
import '../modules/signin/views/signin_view.dart';
import '../modules/sigup/bindings/sigup_binding.dart';
import '../modules/sigup/views/sigup_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';
import '../modules/view_menu_salad/bindings/view_menu_salad_binding.dart';
import '../modules/view_menu_salad/views/view_menu_salad_view.dart';
import '../modules/view_pelanggan/bindings/view_pelanggan_binding.dart';
import '../modules/view_pelanggan/views/view_pelanggan_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

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
    GetPage(
      name: _Paths.VIEW_MENU_SALAD,
      page: () => const ViewMenuSaladView(),
      binding: ViewMenuSaladBinding(),
    ),
    GetPage(
      name: _Paths.ADD_PELANGGAN,
      page: () => const AddPelangganView(),
      binding: AddPelangganBinding(),
    ),
    GetPage(
      name: _Paths.VIEW_PELANGGAN,
      page: () => const ViewPelangganView(),
      binding: ViewPelangganBinding(),
    ),
    GetPage(
      name: _Paths.EDIT_MENU_SALAD,
      page: () => const EditMenuSaladView(),
      binding: EditMenuSaladBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_MENU_SALAD,
      page: () => const DetailMenuSaladView(),
      binding: DetailMenuSaladBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.OPENING,
      page: () => const OpeningView(),
      binding: OpeningBinding(),
    ),
    GetPage(
      name: _Paths.SIGNIN,
      page: () => const SiginView(),
      binding: SigninBinding(),
    ),
    GetPage(
      name: _Paths.SIGUP,
      page: () => const SigupView(),
      binding: SigupBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_PELANGGAN,
      page: () => const DetailPelangganView(),
      binding: DetailPelangganBinding(),
    ),
    GetPage(
      name: _Paths.EDIT_PELANGGAN,
      page: () => const EditPelangganView(),
      binding: EditPelangganBinding(),
    ),
  ];
}
