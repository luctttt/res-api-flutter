import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:veroca_ck_muonxe_ui/untils/constants.dart';

class BorrowingTime extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Text(
              'Thời gian mượn *',
              style: TextStyle(
                  color: kBackgroundText,
                  fontSize: 13,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
        Row(
          children: const [
            Expanded(
              child: TextField(
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.only(top: 12, left: 6, bottom: 10),
                      counterStyle: TextStyle(
                          fontSize: 14,
                          color: Colors.red,
                          fontWeight: FontWeight.w400),
                      hintStyle: TextStyle(
                          color: kCardTitle,
                          fontSize: 20,
                          fontWeight: FontWeight.w400),
                      prefixIcon: Icon(Icons.date_range)),
                  style: TextStyle(
                      color: Colors.red, fontWeight: FontWeight.w300)),
            ),
            SizedBox(
              width: 27,
            ),
            Expanded(
              child: TextField(
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.only(top: 12, left: 6, bottom: 10),
                      counterStyle: TextStyle(
                          fontSize: 14,
                          color: Colors.red,
                          fontWeight: FontWeight.w400),
                      hintStyle: TextStyle(
                          color: kCardTitle,
                          fontSize: 20,
                          fontWeight: FontWeight.w400),
                      prefixIcon: Icon(Icons.date_range)),
                  style: TextStyle(
                      color: Colors.red, fontWeight: FontWeight.w300)),
            ),
          ],
        ),
        const SizedBox(
          height: 18,
        )
      ],
    );
  }
}
