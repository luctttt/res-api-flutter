import 'package:flutter/material.dart';

void main() => runApp(const SecondRoute());

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

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

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  final ScrollController _homeController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar Sample'),
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
          color: Colors.red,
          child: const Text("Tab1"),
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
