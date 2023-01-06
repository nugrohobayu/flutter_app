import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../models/post.dart';

import 'dart:async';
// import 'package:first_app/models/post.dart';

class PostApi {
  final Dio dio = Dio();
  final _baseUrl = 'http://jsonplaceholder.typicode.com';

  Future<List<Post>> getPost() async {
    try {
      final res = await http.get(Uri.parse('$_baseUrl/posts'));
      final datas = (json.decode(res.body) as List)
          .map((post) => Post.fromMap(post))
          .toList();
      return datas;
    } catch (e) {
      debugPrint(e.toString());
      // print(e.toString());
      rethrow;
    }
  }
}
