import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Demo extends StatelessWidget {
  var count = 0.obs;

  @override
  Widget build(BuildContext context) {
    print('build demo');

    return Scaffold(
      appBar: AppBar(
        title: Text('Counter app'),
      ),
      body: Center(
        child: Obx(
          // obx
          () => Column(
            children: [
              Text(
                '$count',
                style: TextStyle(fontSize: 30),
              ),
              Text(
                '${count}',
                style: TextStyle(fontSize: 30),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          count.value++;
          print(count);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
