// import 'package:dio/dio.dart';
import 'package:resume/core/utils/services.dart';

class GithubRepo with Services {
  Future<dynamic> getRepo() async {
    try {
      return apiGetRequests("orgs/africastrategyadvisers/repos");
    } catch (e) {
      rethrow;
    }
  }
}
