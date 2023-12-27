import 'dart:convert';

import 'package:http/http.dart';

import '../../../Ui/Demo_Sign_Up.dart';
import '../../../main.dart';
import '../../Modelclass/login.dart';
import '../Api_client.dart';

class LoginApi {
  ApiClient apiClient = ApiClient();

  Future<Login> getLogin(String username, String password) async {
    String trendingpath = "${basePath}/auth/local/user/login";
    var body = {"username": username, "password": password};
    print(body);
    Response response =
        await apiClient.invokeAPI(trendingpath, 'POST', jsonEncode(body));

    return Login.fromJson(jsonDecode(response.body));
  }
}
