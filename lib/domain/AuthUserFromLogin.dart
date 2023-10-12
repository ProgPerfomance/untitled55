import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:dio/dio.dart';

class AuthUserFromLogin extends ChangeNotifier {
  Dio dio = Dio();
  var login;
  var password;
  var accessToken;
 // var token =
  Future<void> authUserFromLogin() async {
    final response = await dio.post('https://stage.tgateway.vohha.com/mobile/auth/login', data: {
      "login": login,
      "password": password,
    });
  //  print(response.data);
    accessToken = response.data['accessToken'];
    print(accessToken);
    notifyListeners();
  }
}