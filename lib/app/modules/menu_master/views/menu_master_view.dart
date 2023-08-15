import 'package:final_project/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/menu_master_controller.dart';

class MenuMasterView extends GetView<MenuMasterController> {
  const MenuMasterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Master'),
        centerTitle: true,
        backgroundColor: Color(0xFF437C28),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Center(
              child: SizedBox(
                width: 350,
                height: 100,
                child: ElevatedButton(
                  onPressed: () {
                    Get.toNamed(Routes.ADD_IDENTITAS);
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF437C28),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.home,
                        size: 50,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Identitas",
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
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Center(
                child: SizedBox(
                  width: 350,
                  height: 125,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.toNamed(Routes.ADD_MENU_SALAD);
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF437C28),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.category,
                          size: 50,
                        ),
                        Text(
                          "Menu",
                          style: TextStyle(
                            fontFamily: 'Shippori Mincho',
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          "Kelola Menu Salad",
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
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Center(
                child: SizedBox(
                  width: 350,
                  height: 125,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF437C28),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.people,
                          size: 50,
                        ),
                        Text(
                          "Pelanggan",
                          style: TextStyle(
                            fontFamily: 'Shippori Mincho',
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          "Kelola Data Pelanggan",
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
            ),
          ),
        ],
      ),
    );
  }
}
