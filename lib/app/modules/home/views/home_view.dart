import 'package:final_project/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Selamat Datang,'),
        centerTitle: true,
        backgroundColor: Color(0xFF437C28),
      ),
      body: ListView(
        children: [
          Container(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Text(
                  "RLVWSolutions.com",
                  style: TextStyle(
                    fontFamily: 'Shippori Mincho',
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
          Container(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Text(
                  "Jl. Siwalanpanji, Buduran, Sidoarjo",
                  style: TextStyle(
                    fontFamily: 'Shippori Mincho',
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15, bottom: 10),
                  child: SizedBox(
                    width: 300,
                    height: 75,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Beli Versi Pro",
                        style: TextStyle(
                          fontFamily: 'Shippori Mincho',
                          fontSize: 25,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF437C28),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: SizedBox(
                      width: 175,
                      height: 100,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.toNamed(Routes.MENU_MASTER);
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF437C28),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.business,
                              size: 30,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Master",
                              style: TextStyle(
                                fontFamily: 'Shippori Mincho',
                                fontSize: 20,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: SizedBox(
                      width: 175,
                      height: 100,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.toNamed(Routes.MENU_TRANSAKSI);
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF437C28),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.shopping_bag,
                              size: 30,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Transaksi",
                              style: TextStyle(
                                fontFamily: 'Shippori Mincho',
                                fontSize: 20,
                                fontWeight: FontWeight.w300,
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
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: SizedBox(
                      width: 175,
                      height: 100,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.toNamed(Routes.MENU_LAPORAN);
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF437C28),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.print,
                              size: 30,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Laporan",
                              style: TextStyle(
                                fontFamily: 'Shippori Mincho',
                                fontSize: 20,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: SizedBox(
                      width: 175,
                      height: 100,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.toNamed(Routes.MENU_UTILITAS);
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF437C28),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.engineering,
                              size: 30,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Utilitas",
                              style: TextStyle(
                                fontFamily: 'Shippori Mincho',
                                fontSize: 20,
                                fontWeight: FontWeight.w300,
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
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30, bottom: 10),
                  child: SizedBox(
                    width: 300,
                    height: 75,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Kasir Toko Portable Online",
                        style: TextStyle(
                          fontFamily: 'Shippori Mincho',
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF437C28),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Text(
                  "Versi Beta",
                  style: TextStyle(
                    fontFamily: 'Shippori Mincho',
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
