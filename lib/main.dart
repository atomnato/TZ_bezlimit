import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:tz_bezlimit/models/content_binding.dart';
import 'package:tz_bezlimit/widgets/main_screen.dart';

void main() {
  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: const MainScreen(),
      initialBinding: ContentBinding(),
    );
  }
}
