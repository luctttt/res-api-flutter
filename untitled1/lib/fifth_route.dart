import 'package:flutter/material.dart';

void main() => runApp(const FifthRoute());

class FifthRoute extends StatelessWidget {
  const FifthRoute({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatelessWidget(),
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text('showModalBottomSheet 1111'),
        onPressed: () {
          showModalBottomSheet<void>(
            context: context,
            isScrollControlled: true,
            builder: (context) => DraggableScrollableSheet(
              expand: false,
              initialChildSize: 0.5,
              maxChildSize: 0.8,
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
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Center _buildCenter(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Center(
              child: Text('Modal BottomSheet'),
            ),
            ElevatedButton(
              child: Text('Close BottomSheet'),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
    );
  }
}
