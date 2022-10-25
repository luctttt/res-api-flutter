import 'package:flutter/material.dart';
import 'package:untitled1/MyTest.dart';
import 'package:untitled1/my_box.dart';

class List1View extends StatefulWidget {
  @override
  State<List1View> createState() => _List1View();
}

class _List1View extends State<List1View> {
  final List<MyBox> _posts1 = [
    MyBox(
      text1: 'Tôi thực hiện',
      text2: 'Dự kiến\nDeadline',
      onTab: (context) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MyTest(),
          ),
        );
      },
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: _posts1.length,
        itemBuilder: (BuildContext context, int index) {
          return _posts1[index];
        });
  }
}
