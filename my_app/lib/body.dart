import 'package:flutter/material.dart';
import 'package:my_app/toithuchien.dart';
class body extends StatelessWidget {
  const body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
      )
    );
  }
}




