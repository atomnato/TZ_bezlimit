import 'package:get/get.dart';

class ContentController extends GetxController {
  final int perContent = 10;
  int? saveIndex;

  void saveContent(String index) {
    saveIndex = (index.isEmpty) ? null : int.parse(index);

    update();
  }
}
