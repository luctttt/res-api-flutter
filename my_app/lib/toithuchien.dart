import 'package:flutter/material.dart';


class toithuchien extends StatefulWidget {
  const toithuchien({Key? key}) : super(key: key);

  @override
  State<toithuchien> createState() => _SearchPageState();
}

class _SearchPageState extends State<toithuchien> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[900],
          title: const Text('Tôi thực hiện'),
          elevation: 0.0,
        ),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide.none,),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
            ],
          ),
        )
    );
  }
}

