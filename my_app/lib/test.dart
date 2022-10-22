import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class test extends StatefulWidget {
  const test({Key? key}) : super(key: key);

  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Slidable(
          startActionPane: ActionPane(
            motion: StretchMotion(),
            children: [
              SlidableAction(
                onPressed: ((context) {}),
                backgroundColor: Colors.green,
                icon: Icons.phone,
              ),
              SlidableAction(
                onPressed: ((context) {}),
                backgroundColor: Colors.blue,
                icon: Icons.chat,
              ),
            ],
          ),
          endActionPane: ActionPane(motion: StretchMotion(), children: [
            SlidableAction(
              onPressed: ((context) {}),
              backgroundColor: Colors.red,
              icon: Icons.cancel,
            ),
          ]),
          child: Container(
            color: Colors.grey[300],
            child: ListTile(
              title: Text('Ngo Duc'),
              subtitle: Text('0965223408'),
              leading: Icon(Icons.person, size: 40),
            ),
          ),
        ),
      ),
    );
  }
}
