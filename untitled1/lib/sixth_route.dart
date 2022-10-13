import 'package:flutter/material.dart';

void main() => runApp(const SixthRoute());

class SixthRoute extends StatelessWidget {
  const SixthRoute({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

/// AnimationControllers can be created with `vsync: this` because of TickerProviderStateMixin.
class _MyStatefulWidgetState extends State<MyStatefulWidget>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('TabBar Widget'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const <Widget>[
            Tab(
              icon: Icon(Icons.cloud_outlined),
            ),
            Tab(
              icon: Icon(Icons.beach_access_sharp),
            ),
            Tab(
              icon: Icon(Icons.brightness_5_sharp),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          // Container(
          //   height: size.height * 0.1,
          //   //color: Colors.black,
          //   child: Stack(
          //     children: [
          //       Container(
          //         height: size.height * 0.1 - 40,
          //         decoration:
          //             BoxDecoration(color: Colors.green[200], boxShadow: [
          //           BoxShadow(
          //             offset: Offset(0, 10),
          //             blurRadius: 30,
          //             color: Colors.grey,
          //           )
          //         ]),
          //       ),
          //       Positioned(
          //         child: Container(
          //           //margin: EdgeInsets.symmetric(horizontal: 50),
          //           height: 40,
          //           width: 280,
          //           decoration: BoxDecoration(
          //             color: Colors.white,
          //             borderRadius: BorderRadius.circular(50),
          //           ),
          //           child: TextField(
          //             decoration: InputDecoration(
          //               hintText: "Tìm kiếm",
          //               border: InputBorder.none,
          //             ),
          //           ),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          TabBarView(
            controller: _tabController,
            children: const <Widget>[
              Center(
                child: Text("It's cloudy here"),
              ),
              Center(
                child: Text("It's rainy here"),
              ),
              Center(
                child: Text("It's sunny here"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
