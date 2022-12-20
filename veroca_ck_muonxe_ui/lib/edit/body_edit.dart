import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:veroca_ck_muonxe_ui/create_car_loan_commitments/borrowing_time.dart';
import 'package:veroca_ck_muonxe_ui/create_car_loan_commitments/filter_create.dart';
import 'package:veroca_ck_muonxe_ui/create_car_loan_commitments/info_car_create.dart';

import '../untils/constants.dart';

class BodyEdit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
        padding: EdgeInsets.only(top: 20, left: 12, right: 12),
        child: Column(
          children: [
            InfoCar(),
            FilterCreate(),
            BorrowingTime(),
            InfoCarCreate()
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
      ],
    );
  }
}
