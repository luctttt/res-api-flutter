import 'package:flutter/material.dart';
import 'package:untitled1/fourth_route.dart';

class MySquare extends StatelessWidget {
  const MySquare({
    Key? key,
    required this.text,
    required this.onTab,
  });

  final String text;
  final Function(BuildContext context) onTab;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Card(
          child: InkWell(
            splashColor: Colors.green.withAlpha(200),
            onTap: () {
              onTab.call(context);
            },
            child: ListTile(
              title: Text(text),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
          ),
        ),
      ),
    );
  }
}
