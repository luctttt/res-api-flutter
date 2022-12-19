import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:veroca_ck_muonxe_ui/create_car_loan_commitments/body_create.dart';

import '../untils/constants.dart';
import 'body_detail_car.dart';

class MainDetailCar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          // fontFamily: GoogleFonts.inter().fontFamily,
          primarySwatch: kPrimaryColorSwatch,
          scaffoldBackgroundColor: Colors.white),
      home: Scaffold(
        body: SingleChildScrollView(child: BodyDetailCar()),
        appBar: AppBar(
          title: const Text('Chi tiết cam kết mượn xe'),
          leading: IconButton(
              onPressed: () => Get.back(), icon: Icon(Icons.arrow_back)),
          actions: [
            Container(
              padding: EdgeInsets.only(right: 15, top: 11, bottom: 11),
              child: Icon(Icons.save),
            )
          ],
        ),
      ),
    );
  }
}
