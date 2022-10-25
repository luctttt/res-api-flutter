import 'package:flutter/material.dart';
import 'package:untitled1/body.dart';

class FourthRoute extends StatelessWidget {
  const FourthRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tôi thực hiện"),
        backgroundColor: Colors.green[700],
      ),
      body: Body(),
    );
  }
}
