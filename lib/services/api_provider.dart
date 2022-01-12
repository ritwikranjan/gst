import 'dart:async';
import 'dart:io';

import 'package:get/get.dart';

import 'api_exceptions.dart';

class ApiProvider extends GetConnect {
  static final ApiProvider _apiProvider = ApiProvider._internal();
  factory ApiProvider() => _apiProvider;
  ApiProvider._internal();

  static const _baseUrl = 'https://61dd67f7f60e8f00176687ba.mockapi.io';

  Future<dynamic> getReq(String url) async {
    late final responseJson;
    try {
      final response = await get('$_baseUrl/$url');
      responseJson = _returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
    return responseJson;
  }

  dynamic _returnResponse(Response response) {
    switch (response.statusCode) {
      case 200:
        return response.body;
      case 400:
        throw BadRequestException();
      case 401:
      case 403:
        throw UnauthorisedException();
      case 404:
        throw NotFoundException();
      case 500:
      default:
        throw FetchDataException(
            'Error occured while Communication with Server with StatusCode : ${response.statusCode}');
    }
  }
}
