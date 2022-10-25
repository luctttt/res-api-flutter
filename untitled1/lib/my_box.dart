import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:untitled1/fourth_route.dart';

class MyBox extends StatelessWidget {
  const MyBox({
    Key? key,
    required this.text1,
    required this.text2,
    required this.onTab,
  });

  final String text1;
  final String text2;
  final Function(BuildContext context) onTab;

  @override
  Widget build(BuildContext context) {
    return Slidable(
      key: const ValueKey(0),
      endActionPane: ActionPane(
        motion: ScrollMotion(),
        children: [
          SlidableAction(
            flex: 1,
            onPressed: _showModalBottomSheet,
            backgroundColor: Colors.grey,
            foregroundColor: Colors.white,
            icon: Icons.more_horiz,
            label: 'Thêm',
          ),
          SlidableAction(
            onPressed: doNothing,
            backgroundColor: Color(0xFF0392CF),
            foregroundColor: Colors.white,
            icon: Icons.percent,
            label: 'Tiến độ',
          ),
        ],
      ),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Card(
            child: InkWell(
              splashColor: Colors.green.withAlpha(200),
              onTap: () {
                onTab.call(context);
              },
              child: ListTile(
                title: Text(text1),
                subtitle: Text(text2),
                trailing: Icon(Icons.keyboard_arrow_right),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void _showModalBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (context) => DraggableScrollableSheet(
      expand: false,
      initialChildSize: 0.4,
      maxChildSize: 0.9,
      minChildSize: 0.3,
      builder: (context, scrollController) => SingleChildScrollView(
        controller: scrollController,
        child: Align(
          child: GestureDetector(
            onTap: () {
              print('object');
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        print('111111');
                      },
                      icon: Image.asset('assets/icons/icon1.jpg'),
                    ),
                    Text(
                      'Cập nhật trạng thái',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        print('111111');
                      },
                      icon: Image.asset('assets/icons/icon2.jpg'),
                    ),
                    Text(
                      'Người thực hiện',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        print('111111');
                      },
                      icon: Image.asset('assets/icons/icon3.jpg'),
                    ),
                    Text(
                      'Đánh giá',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        print('111111');
                      },
                      icon: Image.asset('assets/icons/icon4.jpg'),
                    ),
                    Text(
                      'Quản lý đầu việc',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        print('111111');
                      },
                      icon: Image.asset('assets/icons/icon5.jpg'),
                    ),
                    Text(
                      'Thêm một việc con',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        print('111111');
                      },
                      icon: Image.asset('assets/icons/icon6.jpg'),
                    ),
                    Text(
                      'Sửa công việc',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        print('111111');
                      },
                      icon: Image.asset('assets/icons/icon7.jpg'),
                    ),
                    Text(
                      'Xóa công việc',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        print('111111');
                      },
                      icon: Image.asset('assets/icons/icon8.jpg'),
                    ),
                    Text(
                      'File đính kèm',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        print('111111');
                      },
                      icon: Image.asset('assets/icons/icon9.jpg'),
                    ),
                    Text(
                      'Liên kết nghiệp vụ',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        print('111111');
                      },
                      icon: Image.asset('assets/icons/icon10.jpg'),
                    ),
                    Text(
                      'Cài đặt quyền',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        print('111111');
                      },
                      icon: Image.asset('assets/icons/icon11.jpg'),
                    ),
                    Text(
                      'Chia tỉ trọng',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        print('111111');
                      },
                      icon: Image.asset('assets/icons/icon12.jpg'),
                    ),
                    Text(
                      'Gán nhãn',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        print('111111');
                      },
                      icon: Image.asset('assets/icons/icon13.jpg'),
                    ),
                    Text(
                      'Copy & tạo mới',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        print('111111');
                      },
                      icon: Image.asset('assets/icons/icon14.jpg'),
                    ),
                    Text(
                      'Lịch sử công việc',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}

void doNothing(BuildContext context) {}
