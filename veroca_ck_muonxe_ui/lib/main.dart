import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:veroca_ck_muonxe_ui/manage_car_loan_commitments/body.dart';
import 'create_car_loan_commitments/main_create.dart';
import 'detail/main_detail.dart';
import 'find_car/main_car.dart';
import 'untils/constants.dart';

void main() {
  runApp(MainDetailCar());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          // fontFamily: GoogleFonts.inter().fontFamily,
          primarySwatch: kPrimaryColorSwatch,
          scaffoldBackgroundColor: kBackground),
      getPages: [
        // GetPage(name: '/demo-1', page: () => MainCreate()),
        // GetPage(name: '/demo-2', page: () => Demo2()),
      ],
      home: Scaffold(
        body: Body(),
        appBar: AppBar(
          title: const Text('Quản lý đề xuất hóa đơn'),
          leading: const Icon(Icons.arrow_back),
          actions: [
            GestureDetector(
              onTap: () {
                print('Tap tap tap !!');
                Get.off(MainCreate()); //
              },
              child: Container(
                padding: EdgeInsets.only(right: 15, top: 11, bottom: 11),
                child: Icon(Icons.add),
              ),
            )
          ],
        ),
      ),
    );
  }
}
