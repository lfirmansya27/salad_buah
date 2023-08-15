import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/menu_utilitas_controller.dart';

class MenuUtilitasView extends GetView<MenuUtilitasController> {
  const MenuUtilitasView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MenuUtilitasView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'MenuUtilitasView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
