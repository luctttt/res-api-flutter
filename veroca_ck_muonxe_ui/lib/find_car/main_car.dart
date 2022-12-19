import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:veroca_ck_muonxe_ui/create_car_loan_commitments/body_create.dart';
import 'package:veroca_ck_muonxe_ui/find_car/body_find.dart';

import '../untils/constants.dart';

class MainCar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: kPrimaryColorSwatch,
          scaffoldBackgroundColor: Colors.white),
      home: Scaffold(
        body: SingleChildScrollView(child: BodyCarFind()),
        appBar: AppBar(
          title: const Text('Tìm xe'),
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
