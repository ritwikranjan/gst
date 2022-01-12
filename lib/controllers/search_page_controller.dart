import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gst/models/gst_model.dart';
import 'package:gst/services/api_exceptions.dart';
import 'package:gst/services/api_provider.dart';

class SearchPageController extends GetxController {
  static SearchPageController get to => Get.find();
  final ApiProvider _apiProvider = ApiProvider();

  late final TextEditingController searchController;

  @override
  void onInit() {
    searchController = TextEditingController();
    super.onInit();
  }

  void searchUser() async {
    try {
      Get.snackbar(
        'Searching',
        'Searching for user...',
        icon: const Icon(
          CupertinoIcons.search,
          color: Colors.green,
        ),
        backgroundColor: Colors.white54,
        snackPosition: SnackPosition.BOTTOM,
      );
      int searchId = int.parse(searchController.text.removeAllWhitespace);
      final data = await _apiProvider.getReq('get_users/$searchId');
      final user = GstModel.fromJson(data);
      Get.closeAllSnackbars();
      Get.toNamed('/', arguments: user);
    } on ApiException catch (e) {
      Get.snackbar(
        'Error',
        e.message,
        icon: const Icon(
          CupertinoIcons.search,
          color: Colors.white,
        ),
        backgroundColor: Colors.white54,
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  @override
  void onClose() {
    searchController.dispose();
    super.onClose();
  }
}
