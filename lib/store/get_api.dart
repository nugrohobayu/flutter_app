import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';

//https://reqres.in/api/users/2

abstract class _GetApi with Store {
  @observable
  String? name, email;

  @action
  void getHttp() async {
    try {
      var response = await Dio().get('https://reqres.in/api/users/2');
      print(response.data.toString());
    } catch (e) {
      print(e);
    }
  }
}
