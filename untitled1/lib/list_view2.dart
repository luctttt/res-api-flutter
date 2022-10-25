import 'package:flutter/material.dart';
import 'package:untitled1/MyTest.dart';
import 'package:untitled1/my_box.dart';

class List2View extends StatefulWidget {
  @override
  State<List2View> createState() => _List2View();
}

class _List2View extends State<List2View> {
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
