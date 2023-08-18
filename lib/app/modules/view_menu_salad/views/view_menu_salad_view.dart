import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:final_project/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/view_menu_salad_controller.dart';

class ViewMenuSaladView extends GetView<ViewMenuSaladController> {
  const ViewMenuSaladView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Produk'),
        centerTitle: true,
        backgroundColor: Color(0xFF437C28),
      ),
      body: GetBuilder<ViewMenuSaladController>(
        builder: (con) {
          return Column(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(right: 25, left: 25, top: 10),
                  child: TextField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: 'Search...',
                      border: UnderlineInputBorder(),
                      labelStyle: TextStyle(
                        fontFamily: 'Shippori Mincho',
                        color: Color.fromARGB(75, 96, 115, 87),
                      ),
                    ),
                    onChanged: (value) {
                      controller.updateSearch(value);
                    },
                  ),
                ),
              ),
              FutureBuilder<QuerySnapshot<Map<String, dynamic>>>(
                future: controller.getResult(),
                builder: (context, snapshot) {
                  switch (snapshot.connectionState) {
                    case ConnectionState.waiting:
                      return Center(child: CircularProgressIndicator());
                    case ConnectionState.active:
                    case ConnectionState.done:
                      //var data = snapshot.data!.docs;
                      final data = snapshot.data!.docs.where((element) =>
                          element['txtNamaMenu']
                              .toString()
                              .toLowerCase()
                              .contains(controller.search.text.toLowerCase()));
                      return ListView.separated(
                        itemCount: data.length,
                        shrinkWrap: true,
                        physics: BouncingScrollPhysics(),
                        padding: EdgeInsets.all(20),
                        separatorBuilder: (context, index) =>
                            SizedBox(height: 16),
                        itemBuilder: (context, index) {
                          var menuData = data.elementAt(index).data();
                          return InkWell(
                            onTap: () => {
                              Get.toNamed(
                                Routes.EDIT_MENU_SALAD,
                                arguments: {
                                  "menu_id": "${menuData["menu_id"]}",
                                  "txtNamaMenu": "${menuData["txtNamaMenu"]}",
                                  "txtAlamat": "${menuData["txtAlamat"]}",
                                  "txtHarga": "${menuData["txtHarga"]}",
                                  "txtStok": "${menuData["txtStok"]}",
                                },
                              )
                            },
                            borderRadius: BorderRadius.circular(8),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  width: 1,
                                ),
                              ),
                              padding: EdgeInsets.only(
                                  left: 24, top: 20, right: 29, bottom: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Row(
                                      children: [
                                        Container(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                (menuData["txtNamaMenu"] ==
                                                        null)
                                                    ? "-"
                                                    : "${menuData["txtNamaMenu"]}",
                                                style: TextStyle(fontSize: 12),
                                              ),
                                              Text(
                                                (menuData["txtHarga"] == null)
                                                    ? "-"
                                                    : "${menuData["txtHarga"]}",
                                                style: TextStyle(fontSize: 12),
                                              ),
                                              Text(
                                                (menuData["txtStok"] == null)
                                                    ? "-"
                                                    : "${menuData["txtStok"]}",
                                                style: TextStyle(fontSize: 12),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          child: Icon(Icons.delete),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    default:
                      return SizedBox();
                  }
                },
              ),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed(Routes.ADD_MENU_SALAD);
        },
        child: Icon(
          Icons.add,
        ),
        backgroundColor: Color(0xFF437C28),
      ),
    );
  }
}
