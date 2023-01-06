import 'package:dio/dio.dart';
import 'package:first_app/store/user.dart';

class AkunService {
  final Dio dio = Dio();

  final _baseUrl = 'https://reqres.in/api/users/7';

  Future<User?> getAkun() async {
    User? user;
    try {
      Response userData = await dio.get(_baseUrl);

      User user = User.fromJson(userData.data);
      return user;
    } catch (e) {}
  }
}
