import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_menu_salad_controller.dart';

class AddMenuSaladView extends GetView<AddMenuSaladController> {
  const AddMenuSaladView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AddMenuSaladView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'AddMenuSaladView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
