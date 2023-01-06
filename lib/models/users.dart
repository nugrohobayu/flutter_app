import 'dart:convert';

import 'package:dio/dio.dart';
// import 'package:http/http.dart' as http;

class UsersState {
  String? id, fullname, email, avatar;

  UsersState({this.id, this.avatar, this.fullname, this.email});

  static Future connectAPI(String id) async {
    try {
      var url = "https://reqres.in/api/users/" + id;
      var response = await Dio().get(url);
      // print(response);
      var data = jsonDecode(response.toString())["data"];
      // var data = (jsonDecode(response.body))["data"];
      return UsersState(
          id: data["id"],
          fullname: data["first_name"] + " " + data["last_name"],
          avatar: data["avatar"],
          email: data["email"]);
    } catch (e) {
      print(e);
    }
  }
}
