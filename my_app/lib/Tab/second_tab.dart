import 'package:flutter/material.dart';

class SecondTab extends StatelessWidget {
  const SecondTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[600],
      child: Center(
        child: Text('2nd TAB'),
      ),
    );
  }
}
