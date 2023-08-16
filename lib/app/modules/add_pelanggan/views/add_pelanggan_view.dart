import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_pelanggan_controller.dart';

class AddPelangganView extends GetView<AddPelangganController> {
  const AddPelangganView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tambah Data Pelanggan'),
        centerTitle: true,
        backgroundColor: Color(0xFF437C28),
      ),
      body: Column(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.only(right: 25, left: 25, top: 30),
              child: TextField(
                controller: controller.txtPelanggan,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: ("Nama Pelanggan"),
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
                  labelText: ("Alamat"),
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
                controller: controller.txtNoTelp,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: ("No. Telp."),
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
                          controller.add_penggan();
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
