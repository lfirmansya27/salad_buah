import 'package:final_project/app/routes/app_pages.dart';
import 'package:final_project/app/utils/app_color.dart';
import 'package:final_project/app/widgets/costum_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../controllers/edit_pelanggan_controller.dart';

class EditPelangganView extends GetView<EditPelangganController> {
  const EditPelangganView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Edit Pelanggan',
          style: TextStyle(
            color: AppColor.secondary,
            fontSize: 14,
          ),
        ),
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: SvgPicture.asset('assets/icons/arrow-left.svg'),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 1,
            color: AppColor.secondaryExtraSoft,
          ),
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(20),
        children: [
          CustomInput(
            controller: controller.txtPelanggan,
            label: 'Nama Pelanggan',
            hint: '',
          ),
          CustomInput(
            controller: controller.txtAlamat,
            label: 'Alamat ',
            hint: '',
          ),
          CustomInput(
            controller: controller.txtNoTelp,
            label: 'No. Telpon ',
            hint: '',
          ),
          ElevatedButton(
            onPressed: () {
              controller.edit_pelanggan();
            },
            child: Text(
              'Simpan',
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'poppins',
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: AppColor.warning,
              padding: EdgeInsets.symmetric(vertical: 18),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
