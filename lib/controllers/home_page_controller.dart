import 'package:get/get.dart';
import 'package:gst/models/gst_model.dart';

class HomePageController extends GetxController {
  late final GstModel user;

  @override
  void onInit() {
    user = Get.arguments;
    super.onInit();
  }
}
