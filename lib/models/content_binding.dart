import 'package:get/get.dart';

import 'package:tz_bezlimit/models/content_controller.dart';

class ContentBinding implements Bindings {
// default dependency
  @override
  void dependencies() {
    Get.lazyPut(() => ContentController());
  }
}
