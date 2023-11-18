// import 'package:dio/dio.dart';
import 'package:resume/core/utils/services.dart';

class AuthRepo with Services {
  Future<Map<String, dynamic>> login(Map<String, dynamic> data) async {
    try {
      if (data["email"] == "guest@email.com" && data["password"] == "Resumes01@") {
        return  {
          "status": true,
          "data": {
            "email": "guest@email.com",
            "name": "Guest",
          },
        };
      }
      else {
        return {
          "status": false,
          "message": "Wrong credentials",
        };
      }
    } catch (e) {
      rethrow;
    }
  }
}
