import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/edit_menu_salad_controller.dart';

class EditMenuSaladView extends GetView<EditMenuSaladController> {
  const EditMenuSaladView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EditMenuSaladView'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.only(right: 25, left: 25, top: 30),
              child: TextField(
                controller: controller.txtNamaMenu,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: ("Nama Menu"),
                  labelStyle: TextStyle(
                      fontFamily: 'Shippori Mincho', color: Color(0x4C437C28)),
                ),
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(right: 25, left: 25, top: 10),
              child: TextField(
                controller: controller.txtAlamat,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: ("Deskripsi"),
                  labelStyle: TextStyle(
                      fontFamily: 'Shippori Mincho', color: Color(0x4C437C28)),
                ),
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(right: 25, left: 25, top: 10),
              child: TextField(
                controller: controller.txtHarga,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: ("Harga"),
                  labelStyle: TextStyle(
                      fontFamily: 'Shippori Mincho', color: Color(0x4C437C28)),
                ),
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(right: 25, left: 25, top: 10),
              child: TextField(
                controller: controller.txtStok,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: ("Stok"),
                  labelStyle: TextStyle(
                      fontFamily: 'Shippori Mincho', color: Color(0x4C437C28)),
                ),
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 40, right: 20, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: SizedBox(
                      width: 150,
                      height: 75,
                      child: ElevatedButton(
                        onPressed: () {
                          controller.editMenu();
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF437C28),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.save,
                              size: 30,
                            ),
                            Text(
                              "Simpan",
                              style: TextStyle(
                                fontFamily: 'Shippori Mincho',
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: SizedBox(
                      width: 150,
                      height: 75,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.cancel,
                              size: 30,
                            ),
                            Text(
                              "Batal",
                              style: TextStyle(
                                fontFamily: 'Shippori Mincho',
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
