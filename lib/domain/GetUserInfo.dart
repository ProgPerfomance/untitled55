import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';
import 'package:dio/dio.dart';

class GetUserInfo extends ChangeNotifier {
  var token;
  var name;
  Dio dio = Dio();
  void setToken(tokenn) {
    token = tokenn;
    print(tokenn);
  }
  Future<void> getUserInfo() async {
    print('token:' + token);
    final response = await dio.get('https://stage.tgateway.vohha.com/mobile/drivers',
    options: Options(headers: {
      "Authorization": "Bearer ${token}",
    }));
print(response.data);
 name = response.data['name'];
    notifyListeners();
  }
}