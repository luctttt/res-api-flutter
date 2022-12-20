import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:veroca_ck_muonxe_ui/untils/constants.dart';

class InfoCarCreate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
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
      ],
    );
  }
}
