import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';
import 'package:dio/dio.dart';

class GetUserInfo extends ChangeNotifier {
  var token;
  var email;
  var name;
  var vehicleName;
  var avatarUrl;
  var id;
  var trailer_id;
  var trailer_name;
  var truck_name;
  var truck_id;
  List trailer = [];
  var type;
  var rating;
  List teams = [];
  Dio dio = Dio();
  void setToken(tokenn) {
    token = tokenn;
    print(tokenn);
  }
  Future<void> getUserInfo() async {
    print('token:' + token);
    final response = await dio.get('https://stage.tgateway.vohha.com/mobile/driver/profile',
    options: Options(headers: {
      "Authorization": "Bearer ${token}",
    }));
print(response.data);
 name = response.data['name'];
 email = response.data['email'];
  vehicleName = response.data['vehicleName'];
  id = response.data['id'];
  teams = response.data['teams'];
  trailer_id = response.data['trailer']['id'];
  trailer_name = response.data['trailer']['name'];
  truck_id = response.data['truck']['id'];
  truck_name = response.data['truck'];
  avatarUrl = response.data['avatarUrl'];
   notifyListeners();
  }
}