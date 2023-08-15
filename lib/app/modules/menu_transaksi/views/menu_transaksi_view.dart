import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/menu_transaksi_controller.dart';

class MenuTransaksiView extends GetView<MenuTransaksiController> {
  const MenuTransaksiView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MenuTransaksiView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'MenuTransaksiView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
