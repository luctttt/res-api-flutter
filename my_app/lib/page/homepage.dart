import 'package:flutter/material.dart';
import 'package:my_app/body.dart';
import 'package:my_app/toithuchien.dart';


class homepage extends StatelessWidget{
  homepage({Key? key}) : super(key: key);
  int _selectedIndex = 0;
  final screens = [
    body(),
    Center(child: Text('ko có gì', style: TextStyle(fontSize: 60))),
    Center(child: Text('ko có gì', style: TextStyle(fontSize: 60))),
    Center(child: Text('ko có gì', style: TextStyle(fontSize: 60))),
  ];


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'my_app',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[900],
          title: Text('Việc không quy trình'),
        ),

        bottomNavigationBar: BottomNavigationBar(
            iconSize: 30,
            selectedFontSize: 25,
            unselectedFontSize: 16,
            showUnselectedLabels: false,
            fixedColor: Colors.blue,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
            label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.sort_outlined),
              label:'Việc quy trình',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.score_rounded),
              label: 'Ecore',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bug_report_rounded),
              label: 'Report',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_rounded),
              label: 'My iGoss',
            ),
          ]
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
          backgroundColor: Colors.green,
        ),
      ),
    );
  }
}



