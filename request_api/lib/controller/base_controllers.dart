import 'package:get/get.dart';

abstract class BaseController<T> extends GetxController {
  void loadData();
  void reloadData();
  void loadMoreData();

  void swapData() {
    print('swap data');
  }

  refreshList();
}
