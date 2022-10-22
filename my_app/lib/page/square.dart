import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class MySquare extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 2.0),
        child: Container(
          height: 150,
          color: Colors.grey[200],
        ));
  }
}
