import 'package:flutter/material.dart';

void main() => runApp(const MyTest222());

class MyTest222 extends StatelessWidget {
  const MyTest222({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const Center(
          child: MyStatefulWidget(),
        ),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
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
    );
  }
}
