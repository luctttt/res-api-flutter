import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:request_api/controller/controller.dart';

class Demo2 extends GetView<ControllerX> {
  @override
  Widget build(BuildContext context) {
    print('build State demo 2');

    return Container(
        child: Center(
      child: Text("Demo 2 : ${Get.arguments}"),
    ));
  }
}
