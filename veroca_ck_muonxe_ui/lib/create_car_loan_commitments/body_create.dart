import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:veroca_ck_muonxe_ui/find_car/main_car.dart';

import '../untils/constants.dart';

class BodyCreate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
        padding: EdgeInsets.only(top: 20, left: 12, right: 12),
        child: Column(
          children: [
            CardInfo(),
            FilterCreate(),
            BorrowingTime(),
            BorrowingReason(),
            InfoCar(),
          ],
        ));
  }
}

class CardInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
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
            child: Text('KMFWBX7RAHU863151',
                style: GoogleFonts.inter(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: kCardTitle)),
          ),
          const SizedBox(
            width: 32,
          ),
          GestureDetector(
            onTap: () {
              print('clik tim xe ......');
              Get.off(MainCar());
            },
            child: Container(
              // color: kPrimaryColor,
              padding:
                  const EdgeInsets.only(left: 14, right: 14, top: 5, bottom: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: kPrimaryColor,
              ),
              child: Text('Tìm xe',
                  style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.white)),
            ),
          )
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

class FilterCreate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        DropdownSearch<String>(
          popupProps: const PopupProps.menu(
            showSelectedItems: true,
            // disabledItemFn: (String s) => s.startsWith('I'),
          ),
          items: const ["Brazil", "Italia", "Tunisia", 'Canada'],
          dropdownDecoratorProps: const DropDownDecoratorProps(
            dropdownSearchDecoration: InputDecoration(
                contentPadding: EdgeInsets.only(top: 12, left: 6, bottom: 8),
                labelText: "Loại ký *",
                hintText: "country in menu mode",
                hintStyle: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                    fontWeight: FontWeight.w400)),
          ),
          onChanged: print,
          selectedItem: "Chọn",
        ),
        const SizedBox(
          height: 20,
        ),
        DropdownSearch<String>(
          popupProps: const PopupProps.menu(
            showSelectedItems: true,
            // disabledItemFn: (String s) => s.startsWith('I'),
          ),
          items: const ["Brazil", "Italia", "Tunisia", 'Canada'],
          dropdownDecoratorProps: const DropDownDecoratorProps(
            dropdownSearchDecoration: InputDecoration(
                contentPadding: EdgeInsets.only(top: 12, left: 6, bottom: 8),
                labelText: "Loại biên bản *",
                hintText: "country in menu mode",
                hintStyle: TextStyle(
                    color: kCardTitle,
                    fontSize: 20,
                    fontWeight: FontWeight.w400)),
          ),
          onChanged: print,
          selectedItem: "Chọn",
        ),
        const SizedBox(
          height: 20,
        ),
        DropdownSearch<String>(
          popupProps: const PopupProps.menu(
            showSelectedItems: true,
            // disabledItemFn: (String s) => s.startsWith('I'),
          ),
          items: const ["Brazil", "Italia", "Tunisia", 'Canada'],
          dropdownDecoratorProps: const DropDownDecoratorProps(
            dropdownSearchDecoration: InputDecoration(
                contentPadding: EdgeInsets.only(top: 12, left: 6, bottom: 8),
                counterStyle: TextStyle(
                    fontSize: 14,
                    color: Colors.red,
                    fontWeight: FontWeight.w400),
                labelText: "Người nhận ủy quyền *",
                hintText: "country in menu mode",
                hintStyle: TextStyle(
                    color: kCardTitle,
                    fontSize: 20,
                    fontWeight: FontWeight.w400)),
          ),
          onChanged: print,
          selectedItem: "Chọn",
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}

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
        SizedBox(
          height: 30,
        )
      ],
    );
  }
}

class BorrowingReason extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Text(
              'Lý do mượn *',
              style: TextStyle(
                  color: kBackgroundText,
                  fontSize: 13,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
        const TextField(
            decoration: InputDecoration(
                contentPadding: EdgeInsets.only(top: 12, left: 6, bottom: 10),
                counterStyle: TextStyle(
                    fontSize: 14,
                    color: Colors.red,
                    fontWeight: FontWeight.w400),
                hintStyle: TextStyle(
                    color: kCardTitle,
                    fontSize: 20,
                    fontWeight: FontWeight.w400),
                prefixIcon: Icon(Icons.date_range)),
            style: TextStyle(color: Colors.red, fontWeight: FontWeight.w300)),
        const SizedBox(
          height: 19,
        )
      ],
    );
  }
}

class InfoCar extends StatelessWidget {
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
