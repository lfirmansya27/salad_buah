import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/view_menu_salad_controller.dart';

class ViewMenuSaladView extends GetView<ViewMenuSaladController> {
  const ViewMenuSaladView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ViewMenuSaladView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ViewMenuSaladView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
