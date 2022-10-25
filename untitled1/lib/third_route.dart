import 'package:flutter/material.dart';

void main() => runApp(const LogoApp());

class LogoApp extends StatelessWidget {
  const LogoApp({super.key});

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
    return Container(
      color: Colors.grey,
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(0.5, 0.5, 0.5, 0.5),
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
              height: 40,
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
          AnimatedContainer(
            width: selected ? 0 : 132,
            height: 50,
            duration: const Duration(seconds: 5),
            curve: Curves.linear,
            child: Row(
              children: [
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
    );
  }
}
