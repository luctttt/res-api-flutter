import 'package:flutter/material.dart';
import 'package:untitled1/MyTest.dart';
import 'package:untitled1/MyTest222.dart';
import 'package:untitled1/eighth_route.dart';
import 'package:untitled1/fifth_route.dart';
import 'package:untitled1/fourth_route.dart';
import 'package:untitled1/list_view1.dart';
import 'package:untitled1/list_view2.dart';
import 'package:untitled1/nhap.dart';
import 'package:untitled1/second_route.dart';
import 'package:untitled1/seventh_route.dart';
import 'package:untitled1/sixth_route.dart';
import 'package:untitled1/square.dart';
import 'package:untitled1/third_route.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<MySquare> _posts = [
    MySquare(
      text: '1 Tôi thực hiện',
      onTab: (context) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => FourthRoute(),
          ),
        );
      },
    ),
    MySquare(
      text: '2 Tôi giao khong qt',
      onTab: (context) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SecondRoute(),
          ),
        );
      },
    ),
    MySquare(
      text: '3 Tôi theo dõi',
      onTab: (context) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LogoApp(),
          ),
        );
      },
    ),
    MySquare(
      text: '4 Phòng ban',
      onTab: (context) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LogoApp1(),
          ),
        );
      },
    ),
    MySquare(
      text: '5 Tất cả',
      onTab: (context) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SixRoute(),
          ),
        );
      },
    ),
    MySquare(
      text: '6 Tôi thực hiện',
      onTab: (context) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SevenRoute(),
          ),
        );
      },
    ),
    MySquare(
      text: '7 Tôi kiểm tra',
      onTab: (context) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => EighthRoute(),
          ),
        );
      },
    ),
    MySquare(
      text: 'Tôi theo dõi',
      onTab: (context) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LogoApp(),
          ),
        );
      },
    ),
    MySquare(
      text: 'Phòng ban',
      onTab: (context) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => FifthRoute(),
          ),
        );
      },
    ),
    MySquare(
      text: 'Tất cả',
      onTab: (context) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SixRoute(),
          ),
        );
      },
    ),
    MySquare(
      text: 'Tôi thực hiện',
      onTab: (context) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => FourthRoute(),
          ),
        );
      },
    ),
    MySquare(
      text: 'Tôi giao',
      onTab: (context) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SecondRoute(),
          ),
        );
      },
    ),
    MySquare(
      text: 'Tôi theo dõi',
      onTab: (context) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LogoApp(),
          ),
        );
      },
    ),
    MySquare(
      text: 'Phòng ban',
      onTab: (context) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => FifthRoute(),
          ),
        );
      },
    ),
    MySquare(
      text: 'Tất cả',
      onTab: (context) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SixRoute(),
          ),
        );
      },
    ),
  ];
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Việc không quy trình"),
        backgroundColor: Colors.green[800],
        leading: Image.asset('assets/images/123.jpg'),
      ),
      body: _buildBody(context),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/123.jpg'),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.open_in_new_rounded, color: Colors.grey),
            label: 'Việc quy trình',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.open_in_new_rounded, color: Colors.grey),
            label: 'Ecore',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        unselectedItemColor: Colors.green,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    switch (_selectedIndex) {
      case 0:
        return Container(
          color: Colors.grey[300],
          child: ListView.builder(
            itemCount: _posts.length,
            itemBuilder: (BuildContext context, int index) {
              return _posts[index];
            },
          ),
        );
      case 1:
        return Container(
          color: Colors.yellow,
          child: MyTest222(),
        );
      case 2:
        return Container(
          color: Colors.amber,
          child: MyTest(),
        );
      // case 3:
      //   return Container(
      //     color: Colors.green,
      //     child: const Text("Tab4"),
      //   );
      // case 4:
      //   return Container(
      //     color: Colors.purple,
      //     child: const Text("Tab4"),
      //   );
      default:
        return Container();
    }
  }
}
