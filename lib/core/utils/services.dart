import 'dart:async';
import 'dart:io';

import 'package:resume/app/constants.dart';
import 'package:resume/core/storage/local_storage.dart';
import 'package:resume/core/utils/custom_exception.dart';
import 'package:resume/core/utils/error_util.dart';
import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

mixin Services {
  static final Map<String, String> _requestHeaders = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
    // 'Accept': 'application/vnd.github+json',
    "X-GitHub-Api-Version": "2022-11-28",
  };

  Future<Dio> getDio() async {
    Dio dio;
    String baseUrl = BASE_URL;

    BaseOptions _options = BaseOptions(
      baseUrl: baseUrl,
      headers: _requestHeaders,
      connectTimeout: 20000,
      receiveTimeout: 20000,
    );

    dio = Dio(_options);
    (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate = (HttpClient client) {
      client.badCertificateCallback = (X509Certificate cert, String host, int port) => true;
      return client;
    };

    const bool isProduction = bool.fromEnvironment('dart.vm.product');
    if (!isProduction) {
      dio.interceptors.add(
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseBody: true,
          responseHeader: false,
          error: true,
          compact: true,
          maxWidth: 200090,
        ),
      );
    }

    return dio;
  }

  Future<Map<String, dynamic>> apiPostRequests(String endPoint, Map<String, dynamic> credentials, {Map<String, dynamic>? header}) async {
    try {
      header ??= {};

      Dio dio = await getDio();
      final Response response = await dio.post(endPoint,
          data: credentials,
          options: Options(headers: {
            "Authorization": "Bearer " + getAuthToken(),
            ...header,
          }));
      return response.data;
    } on DioError catch (e) {
      debugPrint(e.toString());
      print(e.toString());

      throw CustomException(DioErrorUtil.handleError(e));
    }
  }

  Future<Map<String, dynamic>> apiUploadPostRequests(String endPoint, FormData credentials) async {
    try {
      Dio dio = await getDio();
      final Response response = await dio.post(
        endPoint,
        data: credentials,
        options: Options(
          headers: {"Authorization": "Bearer ${getAuthToken()}", "Content-Type": "multipart/form-data"},
        ),
      );

      switch (response.statusCode) {
        case SERVER_OKAY:
          try {
            return response.data;
          } catch (e) {
            throw PARSING_ERROR;
          }
        case CREATED:
          try {
            return response.data;
          } catch (e) {
            throw PARSING_ERROR;
          }

        default:
          throw DioErrorUtil.normalizeError(response.data);
      }
    } on DioError catch (e) {
      throw CustomException(DioErrorUtil.handleError(e));
    }
  }

  Future<dynamic> apiGetRequests(String endPoint, {Map<String, dynamic>? header}) async {
    try {
      header ??= {};
      Dio dio = await getDio();
      Response response = await dio.get(endPoint, options: Options(headers: {"Authorization": "Bearer " + getAuthToken(), ...header}));
      switch (response.statusCode) {
        case SERVER_OKAY:
          try {
            return response.data;
          } catch (e) {
            throw PARSING_ERROR;
          }
        case CREATED:
          try {
            return response.data;
          } catch (e) {
            throw PARSING_ERROR;
          }

        default:
          throw DioErrorUtil.normalizeError(response.data);
      }
    } on DioError catch (e) {
      throw CustomException(DioErrorUtil.handleError(e));
    }
  }

  Future<Response> apiGetRequestsResponse(String endPoint, {Map<String, dynamic>? header}) async {
    try {
      header ??= {};
      Dio dio = await getDio();
      Response response = await dio.get(endPoint, options: Options(headers: {"Authorization": "Bearer " + getAuthToken(), ...header}));
      switch (response.statusCode) {
        case SERVER_OKAY:
          try {
            return response.data;
          } catch (e) {
            throw PARSING_ERROR;
          }

        default:
          throw DioErrorUtil.normalizeError(response.data);
      }
    } on DioError catch (e) {
      throw CustomException(DioErrorUtil.handleError(e));
    }
  }

  Future<Map<String, dynamic>?> apiDeleteRequests(String endPoint) async {
    try {
      Dio dio = await getDio();
      Response response = await dio.delete(endPoint, options: Options(headers: {"Authorization": "Bearer " + getAuthToken()}));
      switch (response.statusCode) {
        case SERVER_OKAY:
          try {
            return response.data;
          } catch (e) {
            throw PARSING_ERROR;
          }

        default:
          throw DioErrorUtil.normalizeError(response.data);
      }
    } on DioError catch (e) {
      throw CustomException(DioErrorUtil.handleError(e));
    }
  }

  Future<dynamic> apiDeleteRequestsWithFullResponse(String endPoint) async {
    try {
      Dio dio = await getDio();
      final Response response = await dio.delete(endPoint, options: Options(headers: {"Authorization": "Bearer " + getAuthToken()}));
      switch (response.statusCode) {
        case SERVER_OKAY:
          try {
            return response.data;
          } catch (e) {
            throw PARSING_ERROR;
          }

        default:
          throw DioErrorUtil.normalizeError(response.data);
      }
    } on DioError catch (e) {
      throw CustomException(DioErrorUtil.handleError(e));
    }
  }

  Future<Map<String, dynamic>?> apiPatchRequests(String endPoint) async {
    try {
      Dio dio = await getDio();
      final Response response = await dio.patch(endPoint, options: Options(headers: {"Authorization": "Bearer " + getAuthToken()}));
      switch (response.statusCode) {
        case SERVER_OKAY:
          try {
            return response.data;
          } catch (e) {
            throw PARSING_ERROR;
          }

        default:
          throw DioErrorUtil.normalizeError(response.data);
      }
    } on DioError catch (e) {
      throw CustomException(DioErrorUtil.handleError(e));
    }
  }

  Future<Map<String, dynamic>?> apiPatchWithDataRequests(String endPoint, Map<String, dynamic> credentials) async {
    try {
      Dio dio = await getDio();
      final Response response =
          await dio.patch(endPoint, data: credentials, options: Options(headers: {"Authorization": "Bearer " + getAuthToken()}));
      switch (response.statusCode) {
        case SERVER_OKAY:
          try {
            return response.data;
          } catch (e) {
            throw PARSING_ERROR;
          }

        default:
          throw DioErrorUtil.normalizeError(response.data);
      }
    } on DioError catch (e) {
      throw CustomException(DioErrorUtil.handleError(e));
    }
  }

  Future<Map<String, dynamic>?> apiPutRequests(String endPoint, Map<String, dynamic> credentials) async {
    try {
      Dio dio = await getDio();
      final Response response = await dio.put(endPoint, data: credentials, options: Options(headers: {"Authorization": "Bearer " + getAuthToken()}));
      switch (response.statusCode) {
        case SERVER_OKAY:
          try {
            return response.data;
          } catch (e) {
            throw PARSING_ERROR;
          }

        default:
          throw DioErrorUtil.normalizeError(response.data);
      }
    } on DioError catch (e) {
      throw CustomException(DioErrorUtil.handleError(e));
    }
  }

  Future<Map<String, dynamic>> apiUploadPutRequests(String endPoint, FormData credentials) async {
    try {
      // print(credentials.files);
      Dio dio = await getDio();
      final Response response = await dio.post(endPoint, data: credentials, options: Options(headers: {"Authorization": "Bearer " + getAuthToken()}));
      switch (response.statusCode) {
        case SERVER_OKAY:
          try {
            return response.data;
          } catch (e) {
            throw PARSING_ERROR;
          }

        default:
          throw DioErrorUtil.normalizeError(response.data);
      }
    } on DioError catch (e) {
      throw CustomException(DioErrorUtil.handleError(e));
    }
  }

  Future<Map<String, dynamic>?> apiPatchRequestsWithCredentials(String endPoint, Map<String, dynamic> credentials) async {
    try {
      Dio dio = await getDio();
      final Response response =
          await dio.patch(endPoint, data: credentials, options: Options(headers: {"Authorization": "Bearer " + getAuthToken()}));
      switch (response.statusCode) {
        case SERVER_OKAY:
          try {
            return response.data;
          } catch (e) {
            throw PARSING_ERROR;
          }

        default:
          throw DioErrorUtil.normalizeError(response.data);
      }
    } on DioError catch (e) {
      throw CustomException(DioErrorUtil.handleError(e));
    }
  }

  Future<Map<String, dynamic>?> apiImageUpload(String endPoint, FormData formdata) async {
    try {
      Dio dio = await getDio();
      final Response response = await dio.post(endPoint, data: formdata, options: Options(headers: {"Authorization": "Bearer " + getAuthToken()}));
      switch (response.statusCode) {
        case SERVER_OKAY:
          try {
            return response.data;
          } catch (e) {
            throw PARSING_ERROR;
          }

        default:
          throw DioErrorUtil.normalizeError(response.data);
      }
    } on DioError catch (e) {
      throw CustomException(DioErrorUtil.handleError(e));
    }
  }

  Future<Map<String, dynamic>?> apiGenericGetRequest(String token, String endPoint, String baseUrl) async {
    try {
      Dio dio = Dio(BaseOptions(
        baseUrl: baseUrl,
        headers: _requestHeaders,
        connectTimeout: 200000,
        receiveTimeout: 200000,
      ));
      final Response response = await dio.get(endPoint, options: Options(headers: {"Authorization": "Bearer $token"}));
      switch (response.statusCode) {
        case SERVER_OKAY:
          try {
            return response.data;
          } catch (e) {
            throw PARSING_ERROR;
          }

        default:
          throw DioErrorUtil.normalizeError(response.data);
      }
    } on DioError catch (e) {
      throw CustomException(DioErrorUtil.handleError(e));
    }
  }

  getAuthToken() {
    return GIT_TOKEN;
  }
}
