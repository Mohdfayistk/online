import 'dart:convert';

import 'package:http/http.dart';

import '../../../Ui/Demo_Sign_Up.dart';
import '../../../main.dart';
import '../../Modelclass/course.dart';
import '../../Modelclass/login.dart';
import '../Api_client.dart';

class CourseApi {
  ApiClient apiClient = ApiClient();

  Future<List<Course>> getCourse() async {
    String trendingpath = "${basePath}/course/all";
    var body = {};
    print(body);
    Response response =
    await apiClient.invokeAPI(trendingpath, 'GET', jsonEncode(body));

    return Course.listFromJson(jsonDecode(response.body));
  }
}
