import 'package:get/get.dart';
import 'package:request_api/controller/controller.dart';
import 'package:request_api/demo/demo.dart';
import 'package:request_api/demo/demo2.dart';
import 'package:request_api/main/main.dart';

class Routers {
  static String demo = '/';
  static String demo2 = '/findCar';
  static String home = '/myApp';
  static String getDemoRouter() => demo;
  static String getDemo2Router() => demo2;
  static String getHomeRouter() => home;

  static List<GetPage> routers = [
    GetPage(name: demo, page: () => Demo()),
    GetPage(name: demo2, page: () => Demo2()),
    GetPage(name: home, page: () => MyApp(), binding: SampleBind()),
  ];
}

class SampleBind extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ControllerX>(() => ControllerX());
  }
}
