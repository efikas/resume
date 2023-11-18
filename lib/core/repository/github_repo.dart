// import 'package:dio/dio.dart';
import 'package:resume/core/utils/services.dart';

class GithubRepo with Services {
  Future<Map<String, dynamic>> getRepo() async {
    try {
      return apiGetRequests("orgs/efikas/repos");
    } catch (e) {
      rethrow;
    }
  }
}
