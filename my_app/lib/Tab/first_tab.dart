import 'package:flutter/material.dart';
import 'package:my_app/page/square.dart';

class FirstTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          MySquare(),
          MySquare(),
          MySquare(),
          MySquare(),
          MySquare(),
          MySquare(),
        ],
      ),
    );
  }
}
