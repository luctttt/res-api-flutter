import 'package:flutter/material.dart';
import 'package:untitled1/MyTest.dart';
import 'package:untitled1/list_view1.dart';

class Body extends StatefulWidget {
  const Body({super.key});
  @override
  State<Body> createState() => _Body();
}

class _Body extends State<Body> with SingleTickerProviderStateMixin {
  final _textController = TextEditingController();
  late TabController _tabController = TabController(vsync: this, length: 3);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: size.height * 0.1 - 40,
                decoration: BoxDecoration(color: Colors.grey[100], boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 100,
                    color: Colors.grey,
                  )
                ]),
              ),
              Positioned(
                child: Row(
                  children: [
                    Container(
                      //margin: EdgeInsets.symmetric(horizontal: 50),
                      height: 40,
                      width: 270,
                      padding: EdgeInsets.only(left: 16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Tìm kiếm",
                          border: InputBorder.none,
                          // suffixIcon: IconButton(
                          //   icon: Icon(Icons.clear),
                          //   onPressed: () {
                          //     _textController.clear();
                          //   },
                          // ),
                        ),
                      ),
                    ),
                    Container(
                      // color: Colors.greenAccent[100],
                      padding: EdgeInsets.fromLTRB(5, 0.5, 0, 0.5),
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
              labelColor: Colors.green,
              unselectedLabelColor: Colors.grey,
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
                    child: List1View(),
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
