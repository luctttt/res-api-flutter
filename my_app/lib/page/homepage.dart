import 'package:flutter/material.dart';
import 'package:my_app/body.dart';
import 'package:my_app/Test/test.dart';

import '../Test/RefreshIndicatorExample.dart';

class homepage extends StatelessWidget {
  homepage({Key? key}) : super(key: key);
  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey =
      GlobalKey<RefreshIndicatorState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'my_app',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[900],
          title: Text('Việc không quy trình'),
        ),
        body: RefreshIndicator(
          key: _refreshIndicatorKey,
          color: Colors.white,
          backgroundColor: Colors.green,
          strokeWidth: 4.0,
          onRefresh: () async {
            // Replace this delay with the code to be executed during refresh
            // and return a Future when code finishs execution.
            return Future<void>.delayed(const Duration(seconds: 3));
          },
          child: Container(
            color: Colors.grey[200],
            margin: EdgeInsets.only(bottom: 10),
            padding: EdgeInsets.all(10),
            child: ListView(
              children: [
                Card(
                  child: ListTile(
                    title: Text('Tôi thực hiện'),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const body()));
                    },
                  ),
                  color: Colors.white,
                ),
                Card(
                  child: ListTile(
                    title: Text('Tôi giao'),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const test()));
                    },
                    onLongPress: () {
                      print('onLong Pressed!');
                    },
                  ),
                  color: Colors.white,
                ),
                Card(
                  child: ListTile(
                    title: Text('Tôi theo dõi'),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const RefreshIndicatorExample()));
                    },
                    onLongPress: () {
                      print('onLong Pressed!');
                    },
                  ),
                  color: Colors.white,
                ),
                Card(
                  child: ListTile(
                    title: Text('Phòng ban'),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      print('onTap Pressed');
                    },
                    onLongPress: () {
                      print('onLong Pressed!');
                    },
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
                      }),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            _refreshIndicatorKey.currentState?.show();
          },
          icon: const Icon(Icons.refresh),
          label: const Text('Show Indicator'),
          backgroundColor: Colors.green,
        ),
      ),
    );
  }
}
