import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          height: size.height * 0.1,
          //color: Colors.black,
          child: Stack(
            children: [
              Container(
                height: size.height * 0.1 - 40,
                decoration: BoxDecoration(color: Colors.green[200], boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 30,
                    color: Colors.grey,
                  )
                ]),
              ),
              Positioned(
                child: Container(
                  //margin: EdgeInsets.symmetric(horizontal: 50),
                  height: 40,
                  width: 280,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Tìm kiếm",
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
