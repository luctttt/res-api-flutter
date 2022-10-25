import 'package:flutter/material.dart';
import 'package:my_app/Tab/first_tab.dart';
import 'package:my_app/Tab/second_tab.dart';
import 'package:my_app/Tab/third_tab.dart';

class body extends StatelessWidget {
  const body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[900],
          title: Text('Tôi thực hiện'),
        ),
        body: Column(children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 2),
                    blurRadius: 10,
                  )
                ]),
            padding: EdgeInsets.all(8),
            child: Row(
              children: [
                Icon(Icons.search, color: Colors.black),
                Text(
                  'Tìm kiếm',
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          ),
          const TabBar(
              labelColor: Colors.green,
              unselectedLabelColor: Colors.blueGrey,
              tabs: [
                Tab(
                  child: Text('Đang thực hiện'),
                ),
                Tab(
                  child: Text('Quá hạn'),
                ),
                Tab(text: 'Đang đánh giá'),
              ]),
          Expanded(
              child: TabBarView(
            children: [
              FirstTab(),
              SecondTab(),
              ThirdTab(),
            ],
          ))
        ]),
      ),
    );
  }
}
