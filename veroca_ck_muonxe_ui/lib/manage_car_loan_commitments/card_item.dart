import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../untils/constants.dart';

class CardItem extends StatelessWidget {
  const CardItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 11, bottom: 11),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  const Text(
                    'Nguyễn Văn A',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: kCardTitle),
                  ),
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
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: kCardTitle),
                  ),
                ],
              ),
              const SizedBox(
                height: 9,
              ),
              Row(
                children: [
                  Text(
                    'Mô tả:',
                    style: GoogleFonts.inter(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: kBackgroundText),
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  Text(
                    'CRETA 1.6 AT 2017 - MÁY XĂNG (EU4) ',
                    style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: kCardTitle),
                  ),
                ],
              ),
              const SizedBox(
                height: 9,
              ),
              Row(
                children: [
                  Text(
                    'Ngân hàng:',
                    style: GoogleFonts.inter(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: kBackgroundText),
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  Text(
                    'Ngân hàng TMCP Kỹ thương Việt Nam',
                    style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: kCardTitle),
                  ),
                ],
              ),
              const SizedBox(
                height: 9,
              ),
              Row(
                children: [
                  Text(
                    'REQOUT.CBT.30172',
                    style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: kCardTitle),
                  ),
                  const Spacer(),
                  Text(
                    '2022-10-22',
                    style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: kCardTitle),
                  ),
                  const SizedBox(
                    height: 1.78,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
