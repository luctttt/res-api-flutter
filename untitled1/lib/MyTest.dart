import 'package:flutter/material.dart';

void main() => runApp(const MyTest());

class MyTest extends StatelessWidget {
  const MyTest({super.key});

  static const String _title = 'Flutter Code Sample111';

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
    return Container(
      color: Colors.grey,
      child: Stack(
        children: <Widget>[
          AnimatedPositioned(
            // width: selected ? 500.0 : 400.0,
            // height: 50,
            width: selected ? 700.0 : 405.0,
            height: 50,
            duration: Duration(seconds: 2),
            curve: Curves.fastOutSlowIn,
            child: Container(
              color: Colors.greenAccent[100],
              child: Stack(
                children: [
                  Positioned(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          //padding: EdgeInsets.fromLTRB(0.5, 0.5, 0.5, 0.5),
                          //constraints: BoxConstraints(maxHeight: 40, maxWidth: 40),
                          child: selected
                              ? IconButton(
                                  padding: EdgeInsets.zero,
                                  icon: Icon(Icons.keyboard_arrow_left),
                                  onPressed: () {
                                    setState(() {
                                      selected = !selected;
                                    });
                                  },
                                )
                              : null,
                        ),
                        Expanded(
                          child: Container(
                            //margin: EdgeInsets.symmetric(horizontal: 50),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  selected = !selected;
                                });
                              },
                              child: TextField(
                                decoration: InputDecoration(
                                  enabled: selected,
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
                          constraints:
                              BoxConstraints(maxHeight: 40, maxWidth: 40),
                          child: IconButton(
                            padding: EdgeInsets.zero,
                            icon: Image.asset('assets/images/222.jpg'),
                            onPressed: () {},
                          ),
                        ),
                        Container(
                          //color: Colors.red[100],
                          padding: EdgeInsets.fromLTRB(0.5, 0.5, 0.5, 0.5),
                          constraints:
                              BoxConstraints(maxHeight: 40, maxWidth: 40),
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
            ),

            // child: GestureDetector(
            //   onTap: () {
            //     setState(() {
            //       selected = !selected;
            //     });
            //   },
            //   child: Container(
            //     padding: EdgeInsets.only(left: 16),
            //     decoration: BoxDecoration(
            //       color: Colors.white,
            //       borderRadius: BorderRadius.circular(50),
            //     ),
            //     child: Row(
            //       crossAxisAlignment: CrossAxisAlignment.center,
            //       children: [
            //         Text(
            //           'Tìm kiếm',
            //           style: TextStyle(
            //             color: Colors.grey,
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
          ),
        ],
      ),
    );
  }
}
