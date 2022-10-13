import 'package:flutter/material.dart';
import 'package:untitled1/fifth_route.dart';
import 'package:untitled1/fourth_route.dart';
import 'package:untitled1/second_route.dart';
import 'package:untitled1/sixth_route.dart';
import 'package:untitled1/square.dart';
import 'package:untitled1/third_route.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final ScrollController _homeController = ScrollController();

  final List<MySquare> _posts = [
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
            builder: (context) => ThirdRoute(),
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
            builder: (context) => SixthRoute(),
          ),
        );
      },
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Việc không quy trình"),
        backgroundColor: Colors.green[900],
        leading: Image.asset('assets/123.jpg'),
        //centerTitle: true,
      ),
      body: _buildBody(context),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('assets/123.jpg'),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.open_in_new_rounded, color: Colors.grey),
            label: 'Open Dialog',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.open_in_new_rounded, color: Colors.grey),
            label: 'Open Dialog',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.open_in_new_rounded, color: Colors.grey),
            label: 'Open Dialog',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.open_in_new_rounded, color: Colors.grey),
            label: 'Open Dialog',
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
            //separatorBuilder: (BuildContext context, int index) => const Divider(),
          ),
        );
      case 1:
        return Container(
          color: Colors.yellow,
          child: const Text("Tab2"),
        );
      case 2:
        return Container(
          color: Colors.amber,
          child: const Text("Tab3"),
        );
      case 3:
        return Container(
          color: Colors.green,
          child: const Text("Tab4"),
        );
      case 4:
        return Container(
          color: Colors.purple,
          child: const Text("Tab4"),
        );
      default:
        return Container();
    }
  }
}
