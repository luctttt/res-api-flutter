import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../untils/constants.dart';
import 'body_edit.dart';

class MainEdit extends StatelessWidget {
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
        body: SingleChildScrollView(child: BodyEdit()),
        appBar: AppBar(
          title: const Text('Chính sửa cam kết mượn xe'),
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
