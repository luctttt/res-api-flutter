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
              'Số biên bản:',
              style: GoogleFonts.inter(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: kBackgroundText),
            ),
            const SizedBox(
              width: 7,
            ),
            Text('BB20221010002',
                style: GoogleFonts.inter(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: kCardTitle)),
            Spacer(),
            Container(
                padding: const EdgeInsets.only(
                    left: 18, right: 18, top: 4, bottom: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: kBackgroundNewCreate,
                ),
                child: Text(
                  "Mới tạo",
                  style: GoogleFonts.inter(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 11,
                  ),
                ))
          ],
        ),
        const SizedBox(
          height: 9,
        ),
        Row(children: [
          Text(
            'Số khung:',
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
              Text('KMFWBX7RAHU863151 ',
                  maxLines: 1,
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
            'Mô tả xe:',
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
              Text('Santafe bản đặc biệt',
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
            'Tên khách hàng:',
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
              Text('Nguyễn Văn A',
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
            'Loại ký:',
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
              Text('Ký điện tử',
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
            'Loại biên bản:',
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
              Text('Biên bản giao mượn xe',
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
            'Người nhận ủy quyền:',
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
              Text('Nguyễn Văn A',
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
            'Thời gian mượn:',
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
              Text('2022-10-20 - 2022-10-22',
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
            'Lý do mượn:',
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
              Text('Lái thử',
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
            'Giá bán xe:',
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
              Text('500.000.000',
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
        Row(
          children: [
            Container(
              // color: Colors.black,
              // height: 24,
              child: Stack(
                children: [
                  Padding(
                      padding: const EdgeInsets.only(left: 0, bottom: 3),
                      child: Text(
                        'MATRACUU029249144',
                        style: GoogleFonts.inter(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: kPrimaryColor),
                      )),
                  Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 2,
                        color: kPrimaryColor,
                      ))
                ],
              ),
            ),
            Expanded(
              child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                Container(
                  padding: const EdgeInsets.only(
                      left: 18, right: 18, top: 4, bottom: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: kPrimaryColor,
                  ),
                  child: Expanded(
                    child: Text(
                      "Tạo bản điện tử",
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ]),
            )
          ],
        ),
      ],
    );
  }
}
