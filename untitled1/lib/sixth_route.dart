import 'package:flutter/material.dart';
import 'package:untitled1/MyTest.dart';
import 'package:untitled1/list_view1.dart';
import 'package:untitled1/list_view2.dart';
import 'package:untitled1/my_box.dart';

class SixRoute extends StatefulWidget {
  const SixRoute({super.key});

  @override
  State<SixRoute> createState() => _SixRoute();
}

class _SixRoute extends State<SixRoute> with SingleTickerProviderStateMixin {
  late TabController _tabController = TabController(vsync: this, length: 3);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Tất cả, test tôi thực hiện"),
        backgroundColor: Colors.green[700],
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: size.height * 0.1 - 40,
                decoration: BoxDecoration(color: Colors.blue, boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 100,
                    color: Colors.blue,
                  )
                ]),
              ),
              Positioned(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        //margin: EdgeInsets.symmetric(horizontal: 50),
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: GestureDetector(
                          child: TextField(
                            decoration: InputDecoration(
                              enabled: false,
                              hintText: 'Tìm kiếm',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.greenAccent[100],
                      padding: EdgeInsets.fromLTRB(0.5, 0.5, 0.5, 0.5),
                      //constraints: BoxConstraints(maxHeight: 40, maxWidth: 40),
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        icon: Image.asset('assets/images/111.jpg'),
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      //color: Colors.black,
                      padding: EdgeInsets.fromLTRB(0.5, 0.5, 0.5, 0.5),
                      constraints: BoxConstraints(maxHeight: 40, maxWidth: 40),
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        icon: Image.asset('assets/images/222.jpg'),
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      //color: Colors.red[100],
                      padding: EdgeInsets.fromLTRB(0.5, 0.5, 0.5, 0.5),
                      constraints: BoxConstraints(maxHeight: 40, maxWidth: 40),
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        icon: Image.asset('assets/images/333.jpg'),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            child: TabBar(
              controller: _tabController,
              labelColor: Colors.purple,
              unselectedLabelColor: Colors.blueAccent,
              tabs: <Widget>[
                Tab(
                  child: Text(
                    "Đang thực hiện",
                  ),
                ),
                Tab(
                  child: Text(
                    "Quá hạn",
                  ),
                ),
                Tab(
                  child: Text(
                    "Đang đánh giá",
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: TabBarView(
                controller: _tabController,
                children: <Widget>[
                  RefreshIndicator(
                    color: Colors.green,
                    backgroundColor: Colors.white,
                    strokeWidth: 4.0,
                    onRefresh: () async {
                      return Future<void>.delayed(const Duration(seconds: 1));
                    },
                    child: List2View(),
                  ),
                  ListView.builder(
                    itemCount: 1,
                    itemBuilder: (_, index) {
                      return Container(
                        height: 300,
                        width: 200,
                        child: Center(
                          child: Text("222"),
                        ),
                      );
                    },
                  ),
                  ListView.builder(
                    itemCount: 1,
                    itemBuilder: (_, index) {
                      return Container(
                        height: 300,
                        width: 200,
                        child: Text("333"),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
