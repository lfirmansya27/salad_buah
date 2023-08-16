import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/view_pelanggan_controller.dart';

class ViewPelangganView extends GetView<ViewPelangganController> {
  const ViewPelangganView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ViewPelangganView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ViewPelangganView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
