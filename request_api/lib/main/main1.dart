import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:request_api/model/users.dart';
import 'package:request_api/network/network_request.dart';

void main() {
  runApp(const MyApp());
}

const String linkApi = 'https://jsonplaceholder.typicode.com/comments';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DataFromApi(),
    );
  }
}

class DataFromApi extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _DateFromApiState();
  }
}

String? stringResponse;

class _DateFromApiState extends State<DataFromApi> {
  getCommentsData() async {
    var response =
        await http.get(Uri.http('jsonplaceholder.typicode.com', 'comments'));
    var jsonData = jsonDecode(response.body);
    List<Comments> comments = [];
    for (var u in jsonData) {
      Comments comment = Comments(u['name'], u["email"], u['body']);
      comments.add(comment);
    }
    print(comments.length);
    return comments;
  }

  Future apiCall() async {
    print('Load apiCall !!!');

    http.Response response;
    response = await http
        .get(Uri.http("http.get(Uri.http('https://reqres.in/api/users/2')"));
    if (response.statusCode == 200) {
      print('Load succesfully !!!');
      setState(() {
        stringResponse = response.body;
      });
    }
  }

  List<User> listUser = [];

  @override
  void initState() {
    print('initState .....');
    super.initState();
    NetworkRequest.fetchUser().then((value) {
      setState(() {
        print('size list user = ${listUser.length}');
        listUser = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('User date'),
        ),
        body: Column(
          children: [
            Expanded(
                child: ListView.builder(
                    padding: const EdgeInsets.all(10),
                    itemCount: listUser.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${listUser[index].name}',
                                style: const TextStyle(
                                    fontSize: 16, color: Colors.black),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                '${listUser[index].body}',
                                style: const TextStyle(
                                    fontSize: 14, color: Colors.green),
                              )
                            ],
                          ),
                        ),
                      );
                    }))
          ],
        ));
  }
}

class ListComment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: FutureBuilder(
          // future: getCommentsData(),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.data == null) {
              return Container(
                child: Center(
                  child: Text('loading ......'),
                ),
              );
            } else {
              return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(snapshot.data[index].name),
                      subtitle: Text(snapshot.data[index].email),
                      trailing: Text(snapshot.data[index].body),
                    );
                  });
            }
          },
        ),
      ),
    );
  }
}

class Comments {
  final String name, email, body;

  Comments(this.name, this.email, this.body);
}
