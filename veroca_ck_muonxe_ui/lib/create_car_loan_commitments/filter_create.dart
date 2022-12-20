import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:veroca_ck_muonxe_ui/untils/constants.dart';

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
