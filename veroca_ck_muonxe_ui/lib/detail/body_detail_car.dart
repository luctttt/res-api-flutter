import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../untils/constants.dart';

class BodyDetailCar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
        padding: EdgeInsets.only(top: 20, left: 12, right: 12),
        child: Column(
          children: [
            InfoCar(),
          ],
        ));
  }
}

class InfoCar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Số VIN:',
              style: GoogleFonts.inter(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: kBackgroundText),
            ),
            const SizedBox(
              width: 7,
            ),
            Text('KMFWBX7RAHU863151',
                style: GoogleFonts.inter(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: kCardTitle)),
            Spacer(),
            Text(
              'Đỏ',
              style: GoogleFonts.inter(
                  fontSize: 14, fontWeight: FontWeight.w400, color: kCardTitle),
            ),
          ],
        ),
        const SizedBox(
          height: 9,
        ),
        Row(children: [
          Text(
            'Giá bán xe::',
            style: GoogleFonts.inter(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: kBackgroundText),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Text('500.000.000',
                style: GoogleFonts.inter(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: kCardTitle)),
          ),
        ]),
        const SizedBox(
          height: 12,
        ),
        Row(children: [
          Text(
            'Màu xe:',
            style: GoogleFonts.inter(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: kBackgroundText),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Text('Trắng',
                  style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: kCardTitle)),
            ]),
          ),
        ]),
        const SizedBox(
          height: 12,
        ),
        Row(children: [
          Text(
            'Số hợp đồng:',
            style: GoogleFonts.inter(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: kBackgroundText),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Text('HD012344',
                  style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: kCardTitle)),
            ]),
          ),
        ]),
        const SizedBox(
          height: 12,
        ),
        Row(children: [
          Text(
            'TVBH:',
            style: GoogleFonts.inter(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: kBackgroundText),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Text('Nguyễn Văn Nam',
                  style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: kCardTitle)),
            ]),
          ),
        ]),
        const SizedBox(
          height: 12,
        ),
        Row(children: [
          Text(
            'Giá bán xe::',
            style: GoogleFonts.inter(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: kBackgroundText),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Text('500.000.000',
                style: GoogleFonts.inter(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: kCardTitle)),
          ),
        ]),
        const SizedBox(
          height: 12,
        ),
        Row(children: [
          Text(
            'Giá bán xe::',
            style: GoogleFonts.inter(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: kBackgroundText),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Text('500.000.000',
                style: GoogleFonts.inter(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: kCardTitle)),
          ),
        ]),
        const SizedBox(
          height: 12,
        ),
        Row(children: [
          Text(
            'Giá bán xe::',
            style: GoogleFonts.inter(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: kBackgroundText),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Text('500.000.000',
                style: GoogleFonts.inter(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: kCardTitle)),
          ),
        ]),
        const SizedBox(
          height: 12,
        ),
        Row(children: [
          Text(
            'Giá bán xe::',
            style: GoogleFonts.inter(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: kBackgroundText),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Text('500.000.000',
                style: GoogleFonts.inter(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: kCardTitle)),
          ),
        ]),
        const SizedBox(
          height: 12,
        ),
        Row(children: [
          Text(
            'Giá bán xe::',
            style: GoogleFonts.inter(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: kBackgroundText),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Text('500.000.000',
                style: GoogleFonts.inter(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: kCardTitle)),
          ),
        ]),
        const SizedBox(
          height: 12,
        ),
        Row(children: [
          Text(
            'Giá bán xe::',
            style: GoogleFonts.inter(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: kBackgroundText),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Text('500.000.000',
                style: GoogleFonts.inter(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: kCardTitle)),
          ),
        ]),
        const SizedBox(
          height: 12,
        ),
        Row(children: [
          Text(
            'Giá bán xe::',
            style: GoogleFonts.inter(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: kBackgroundText),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Text('500.000.000',
                style: GoogleFonts.inter(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: kCardTitle)),
          ),
        ]),
        const SizedBox(
          height: 12,
        ),
        Row(children: [
          Text(
            'Giá bán xe::',
            style: GoogleFonts.inter(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: kBackgroundText),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Text('500.000.000',
                style: GoogleFonts.inter(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: kCardTitle)),
          ),
        ]),
        const SizedBox(
          height: 12,
        ),
        Row(children: [
          Text(
            'Giá bán xe::',
            style: GoogleFonts.inter(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: kBackgroundText),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Text('500.000.000',
                style: GoogleFonts.inter(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: kCardTitle)),
          ),
        ]),
        const SizedBox(
          height: 12,
        ),
      ],
    );
  }
}
