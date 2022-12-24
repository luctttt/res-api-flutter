import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:request_api/controller/controller.dart';
import 'package:request_api/demo/demo2.dart';
import 'package:request_api/router/routers.dart';

import '../demo/demo.dart';
import '../model/users.dart';
import '../network/network_request.dart';

void main() {
  runApp(GetMaterialApp(
      title: 'Flutter demo',
      theme: ThemeData(
          primarySwatch: Colors.green,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      debugShowCheckedModeBanner: false,
      initialRoute: Routers.getHomeRouter(),
      getPages: Routers.routers));
}

class MyApp extends GetView<ControllerX> {
  const MyApp({Key? key}) : super(key: key);

  get doNothing => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            actions: [
              Container(
                color: Colors.yellow,
                child: Center(
                    child: ElevatedButton(
                  child: const Text("Load dio using api"),
                  onPressed: () {
                    print('click load demo 2 ');
                    controller.refreshList();
                    print(
                        'list user from database: ${controller.listUsers.length}');
                    Get.to(() => Demo2(),
                        transition: Transition.zoom,
                        duration: const Duration(seconds: 1),
                        arguments: 'arguments of main');
                  },
                )),
              )
            ],
            title: const Text('User date'),
            leading: IconButton(
                icon: const Icon(Icons.notifications_active),
                onPressed: () {
                  Get.toNamed(Routers.demo, arguments: 'arguments of second');
                })),
        body: Column(
          children: [
            Expanded(
                child: Obx(() => ListView.builder(
                    padding: const EdgeInsets.all(10),
                    itemCount: controller.listUser.length,
                    itemBuilder: (context, index) {
                      return Slidable(
                        // startActionPane: Slidable,
                        key: const ValueKey(0),

                        // The start action pane is the one at the left or the top side.
                        startActionPane: ActionPane(
                          // A motion is a widget used to control how the pane animates.
                          motion: const ScrollMotion(),

                          // A pane can dismiss the Slidable.
                          dismissible: DismissiblePane(onDismissed: () {}),

                          // All actions are defined in the children parameter.
                          children: [
                            // A SlidableAction can have an icon and/or a label.
                            SlidableAction(
                              onPressed: doNothing,
                              backgroundColor: Color(0xFFFE4A49),
                              foregroundColor: Colors.white,
                              icon: Icons.delete,
                              label: 'Delete',
                            ),
                            SlidableAction(
                              onPressed: doNothing,
                              backgroundColor: Color(0xFF21B7CA),
                              foregroundColor: Colors.white,
                              icon: Icons.share,
                              label: 'Share',
                            ),
                          ],
                        ),

                        // The end action pane is the one at the right or the bottom side.
                        endActionPane: ActionPane(
                          motion: ScrollMotion(),
                          children: [
                            SlidableAction(
                              // An action can be bigger than the others.
                              flex: 1,
                              onPressed: doNothing,
                              backgroundColor: Color(0xFF7BC043),
                              foregroundColor: Colors.white,
                              icon: Icons.archive,
                              label: 'Archive',
                            ),
                            SlidableAction(
                              flex: 1,
                              onPressed: doNothing,
                              backgroundColor: Color(0xFF0392CF),
                              foregroundColor: Colors.white,
                              icon: Icons.save,
                              label: 'Save',
                            ),
                          ],
                        ),
                        // startActionPane: Slidable,
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${controller.listUser[index].name}',
                                  style: const TextStyle(
                                      fontSize: 16, color: Colors.black),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '${controller.listUser[index].body}',
                                  style: const TextStyle(
                                      fontSize: 14, color: Colors.green),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    })))
          ],
        ));
  }
}
