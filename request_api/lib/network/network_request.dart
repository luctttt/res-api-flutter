import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';
import '../model/users.dart';

class NetworkRequest {
  static const String url = 'https://jsonplaceholder.typicode.com/comments';

  static List<User> parseUser(String responseBody) {
    var list = json.decode(responseBody) as List<dynamic>; //
    List<User> users = list.map((model) => User.fromJson(model)).toList();
    return users;
  }

  static Future<List<User>> fetchUser({int page = 1}) async {
    final response = await http.get(Uri.parse("$url"));
    if (response.statusCode == 200) {
      return compute(parseUser, response.body);
    } else if (response.statusCode == 404) {
      throw Exception('Not found...................');
    } else {
      throw Exception('can\'t get user...................');
    }
  }

  static Future<List<User>> fetchUserUsingDio({int page = 1}) async {
    var dio = Dio();
    var response = await dio.get(url);
    // print(response.data.toString());

    if (response.statusCode == 200) {
      return (response.data as List).map((x) => User.fromJson(x)).toList();
    } else if (response.statusCode == 404) {
      throw Exception('Not found...................');
    } else {
      throw Exception('can\'t get user...................');
    }
  }
}
