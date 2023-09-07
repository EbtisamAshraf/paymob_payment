import 'dart:convert';
import 'dart:io';
import 'package:dio/io.dart';
import 'package:paymob_payment/core/api/api_consumer.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:paymob_payment/core/api/status_code.dart';
import 'package:paymob_payment/core/errors/exceptions.dart';
import 'app_interceptors.dart';
import 'end_points.dart';
import 'package:paymob_payment/core/injection_container.dart' as di;

class DioConsumer implements ApiConsumer {
  final Dio dio;

  DioConsumer({required this.dio}) {
    (dio.httpClientAdapter as IOHttpClientAdapter).createHttpClient = () {
          final client = HttpClient();
          client.badCertificateCallback = (X509Certificate cert, String host, int port) => true;
          return client;
        };
    dio.options
      ..baseUrl = EndPoints.baseUrl
      ..responseType = ResponseType.plain
      ..followRedirects = false
      ..validateStatus = ((status) {
        return status! < StatusCode.internalServerError;
      });

    dio.interceptors.add(di.sl<AppInterceptors>());
    if (kDebugMode) {
      dio.interceptors.add(di.sl<LogInterceptor>());
    }
  }


  @override
  Future get(String path,
      {Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? headers}) async {
    try {
      final response = await dio.get(path,
          queryParameters: queryParameters, options: Options(headers: headers));
      if (response.statusCode == 200) {
        return jsonDecode(response.data.toString());
      } else if (response.statusCode == 204) {
        debugPrint('response.statusCode == 204');
        debugPrint('response.data ${response.data}');
        return '';
      }
    } on DioException catch (error) {
      debugPrint('error response ${error.response}');
      _handleDioError(error);
    }
  }

  @override
  Future post(String path,
      {Map<String, dynamic>? body,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? headers}) async {
    try {
      final response = await dio.post(path,
          data: body,
          queryParameters: queryParameters,
          options: Options(headers: headers));
      if (response.statusCode == 200 || response.statusCode == 201) {
        return jsonDecode(response.data.toString());
      } else if (response.statusCode == 204) {
        debugPrint('response.statusCode == 204');
        debugPrint('response.data ${response.data}');
        return '';
      }
    } on DioException catch (error) {
      debugPrint('error response ${error.response!.data['error_description']}');
      _handleDioError(error);
    }
  }

  @override
  Future put(String path,
      {Map<String, dynamic>? body,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? headers}) async {
    try {
      final response = await dio.put(path,
          data: body,
          queryParameters: queryParameters,
          options: Options(headers: headers));

      if (response.statusCode == 200) {
        return jsonDecode(response.data.toString());
      } else if (response.statusCode == 204) {
        debugPrint('response.statusCode == 204');
        debugPrint('response.data ${response.data}');
        return '';
      }
    } on DioException catch (error) {
      debugPrint('error response ${error.response}');
      _handleDioError(error);
    }
  }

  @override
  Future delete(String path,
      {Map<String, dynamic>? body,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? headers}) async {
    try {
      final response = await dio.delete(path,
          data: body,
          queryParameters: queryParameters,
          options: Options(headers: headers));
      if (response.statusCode == 200) {
        return jsonDecode(response.data.toString());
      } else if (response.statusCode == 204) {
        debugPrint('response.statusCode == 204');
        debugPrint('response.data ${response.data}');
        return '';
      }
    } on DioException catch (error) {
      debugPrint('error response ${error.response}');
      _handleDioError(error);
    }
  }
}

dynamic _handleDioError(DioException error) {
  switch (error.type) {
    case  DioExceptionType.connectionTimeout:
    case DioExceptionType.sendTimeout:
    case DioExceptionType.receiveTimeout:
      throw  FetchDataException();
    case DioExceptionType.badResponse:
      switch (error.response?.statusCode) {
        case StatusCode.badRequest:
          throw  BadRequestException();
        case StatusCode.unauthorized:
        case StatusCode.forbidden:
          throw  UnauthorizedException();
        case StatusCode.notFound:
          throw  NotFoundException();
        case StatusCode.conflict:
          throw  ConflictException();
        case StatusCode.internalServerError:
          throw  InternalServerErrorException();
        case StatusCode.redirect:
          throw  RedirectException();
      }
      break;
    case DioExceptionType.cancel:
      break;
    default:
      throw  UnexpectedException();
  }
}
