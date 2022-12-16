import 'package:flutter/material.dart';
import 'package:veroca_ck_muonxe_ui/card_item.dart';

import 'constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Filter(),
          CardItem(),
        ],
      ),
    );
  }
}

class Filter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // Size size = MediaQuery.of(context).size;
    return Container(
      // height: size.height * 0.8,
      // height: 500,
      child: Padding(
        padding:
            const EdgeInsets.only(top: 12, left: 11, right: 11, bottom: 16),
        child: Column(children: [
          TextField(
            decoration: InputDecoration(
                label: const Text("Ngày cần giao xe",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: kBackgroundText,
                        fontSize: 13)),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(4))),
          ),
          const SizedBox(
            height: 8,
          ),
          TextField(
            decoration: InputDecoration(
                label: const Text("Tên khách hàng",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: kBackgroundText,
                        fontSize: 13)),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(4))),
          ),
          const SizedBox(
            height: 8,
          ),
          TextField(
            decoration: InputDecoration(
                label: const Text("VIN",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: kBackgroundText,
                        fontSize: 13)),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(4))),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        label: const Text(
                          "Trạng thái",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: kBackgroundText,
                              fontSize: 13),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4))),
                  ),
                ),
                const SizedBox(
                  width: 11,
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: kPrimaryColor,
                  ),
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                        color: Colors.white,
                      )),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
