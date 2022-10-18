import 'package:flutter/material.dart';

class MySquare extends StatelessWidget {
  final String child;

  MySquare({required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: Container(
        height: 150,
        color: Colors.grey[300],
        child: Text(child),
      ),
    );
  }
}
