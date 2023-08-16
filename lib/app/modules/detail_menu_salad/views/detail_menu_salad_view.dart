import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/detail_menu_salad_controller.dart';

class DetailMenuSaladView extends GetView<DetailMenuSaladController> {
  const DetailMenuSaladView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DetailMenuSaladView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'DetailMenuSaladView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
