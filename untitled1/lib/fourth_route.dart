import 'package:flutter/material.dart';
import 'package:untitled1/body.dart';
import 'package:untitled1/sixth_route.dart';

class FourthRoute extends StatelessWidget {
  const FourthRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Tôi thực hiện"),
          backgroundColor: Colors.green[700],
        ),
        body: Body(),
        //bottomNavigationBar: MyBottomNavBar(),
      ),
    );
  }
}
