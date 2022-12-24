import 'package:get/get.dart';
import 'package:request_api/controller/base_controllers.dart';
import 'package:request_api/db/db_helper.dart';
import 'package:request_api/model/users.dart';
import 'package:request_api/network/network_request.dart';

class ControllerX extends BaseController {
  // noi call du lieu va tra ve cho main
  RxList listUser = [].obs;
  var user = User().obs;

  RxList listUsers = [].obs;
  late DBHelper dbHelper;
  bool isUpdating = false;

  void callApi() {
    // User user = User()
    //   ..name = "abc"
    //   ..age = 10;

    NetworkRequest.fetchUserUsingDio().then(
      (value) {
        print(
            'callApi : size list user = ${listUser.length} , value = ${value.length}');
        listUser.clear();
        listUser.addAll(value);
      },
    );
    bool isUpdate = listUser.canUpdate;
  }

  @override
  void onInit() {
    // hoat dong dau tien cua class GetxController
    // TODO: implement onInit
    super.onInit();
    callApi();
    print('Controller : onInit');

    dbHelper = DBHelper();
    dbHelper.insert(User(
        postId: 1,
        id: 1,
        name: 'Nguyen van a',
        body: 'body A',
        email: 'A@gmail.com'));
    dbHelper.insert(User(
        postId: 2,
        id: 1,
        name: 'Nguyen van b',
        body: 'body A',
        email: 'A@gmail.com'));
    dbHelper.insert(User(
        postId: 3,
        id: 1,
        name: 'Nguyen van c',
        body: 'body A',
        email: 'A@gmail.com'));
    dbHelper.insert(User(
        postId: 4,
        id: 1,
        name: 'Nguyen van d',
        body: 'body A',
        email: 'A@gmail.com'));
    dbHelper.insert(User(
        postId: 5,
        id: 1,
        name: 'Nguyen van e',
        body: 'body A',
        email: 'A@gmail.com'));
    dbHelper.insert(User(
        postId: 6,
        id: 1,
        name: 'Nguyen van f',
        body: 'body A',
        email: 'A@gmail.com'));
    dbHelper.insert(User(
        postId: 7,
        id: 1,
        name: 'Nguyen van g',
        body: 'body A',
        email: 'A@gmail.com'));
    dbHelper.insert(User(
        postId: 8,
        id: 1,
        name: 'Nguyen van h',
        body: 'body A',
        email: 'A@gmail.com'));
    dbHelper.insert(User(
        postId: 9,
        id: 1,
        name: 'Nguyen van i',
        body: 'body A',
        email: 'A@gmail.com'));
    dbHelper.insert(User(
        postId: 10,
        id: 1,
        name: 'Nguyen van k',
        body: 'body A',
        email: 'A@gmail.com'));

    isUpdating = false;
    refreshList();
  }

  @override
  refreshList() {
    dbHelper.getUser().then((value) {
      print('Controller call getUser() : listUser.size = ${value.length}');
      listUsers.clear();
      listUsers.addAll(value);
    }, onError: (error) {
      print('Errror : ${error.toString()}');
    });

    print('Controller : listUser.size = ${listUsers.length}');
  }

  @override
  void loadData() {
    // TODO: implement loadData
    print('loadData .....!!!');
  }

  @override
  void loadMoreData() {
    // TODO: implement loadMoreData
    print('loadMoreData .....!!!');
  }

  @override
  void reloadData() {
    // TODO: implement reloadData
    print('reloadData .....!!!');
  }
}
