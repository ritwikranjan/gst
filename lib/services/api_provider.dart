import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:gst/models/gst_model.dart';

class ApiProvider extends GetConnect {
  static final ApiProvider _apiProvider = ApiProvider._internal();
  factory ApiProvider() => _apiProvider;
  ApiProvider._internal();

  Future<GstModel> getGstUser(int id) async {
    try {
      final response = await get('https://61dd67f7f60e8f00176687ba.mockapi.io/get_users/$id');
      if (kDebugMode) {
        print(response.body);
      }
      final data = response.body;
      final GstModel gst = GstModel.fromJson(data);
      return gst;
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      rethrow;
    }
  }
}
