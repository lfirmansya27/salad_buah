import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/menu_laporan_controller.dart';

class MenuLaporanView extends GetView<MenuLaporanController> {
  const MenuLaporanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MenuLaporanView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'MenuLaporanView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
