import 'package:flutter/material.dart';
import 'package:my_app/page/square.dart';

class FirstTab extends StatelessWidget {
  final List _posts = ['post 1', 'post 2', 'post 3', 'post 4'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body:
     ListView.builder(
         itemCount: _posts.length,
         itemBuilder: (context, index){
           return MySquare(child: _posts[index],);
         }),
      );
  }
}
