import 'package:flutter/material.dart';
import 'package:my_app/toithuchien.dart';


class homepage extends StatelessWidget {
  homepage({Key? key}) : super(key: key);
  int currentIndex = 0;
  final screens = [
    Homepage(),
    Secondpage(),
    Thirdpage(),
    Fouthpage(),
    Fifthpage(),
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
        body: Container(
          color: Colors.grey[200],
          margin: EdgeInsets.only(bottom: 10),
          padding: EdgeInsets.all(10),
          child: ListView(children: [
            Card(
              child: ListTile(
                title: Text('Tôi thực hiện'),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const toithuchien()));
                },

              ),
              color: Colors.white,
            ),
            Card(
              child: ListTile(
                title: Text('Tôi giao'),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {print('onTap Pressed');},
                onLongPress: () {print('onLong Pressed!');},
              ),
              color: Colors.white,
            ),
            Card(
              child: ListTile(
                title: Text('Tôi theo dõi'),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {print('onTap Pressed');},
                onLongPress: () {print('onLong Pressed!');},
              ),
              color: Colors.white,
            ),
            Card(
              child: ListTile(
                title: Text('Phòng ban'),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {print('onTap Pressed');},
                onLongPress: () {print('onLong Pressed!');},
              ),
              color: Colors.white,
            ),
            Card(
              child: ListTile(
                  title: Text('Tất cả'),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    print('onTap Pressed');
                  },
                  onLongPress: () {
                    print('onLong Pressed!');
                  }
              ),
            ),
          ],),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currenIndex,
          onTap: (index) => setState(() => currentIndex = index),
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
          ],
          type: BottomNavigationBarType.fixed,
          iconSize: 30,

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

class Secondpage {
}

